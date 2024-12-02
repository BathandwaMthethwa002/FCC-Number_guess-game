#!/bin/bash

# Database command
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# Generate secret number
SECRET_NUMBER=$((RANDOM % 1000 + 1))

# Prompt for username
echo "Enter your username:"
read USERNAME

# Validate username length
if [[ ${#USERNAME} -gt 22 ]]
then
  echo "Username must be 22 characters or less. Please try again."
  exit
fi

# Check if username exists in the database
USER_DATA=$($PSQL "SELECT user_id, COUNT(game_id), MIN(guesses) FROM users 
                   LEFT JOIN games USING(user_id) WHERE username='$USERNAME' GROUP BY user_id")

if [[ -z $USER_DATA ]]
then
  # New user
  INSERT_USER_RESULT=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  # Existing user
  IFS="|" read USER_ID GAMES_PLAYED BEST_GAME <<< "$USER_DATA"
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# Prompt to start guessing
TRIES=0
echo "Guess the secret number between 1 and 1000:"
echo "$SECRET_NUMBER"
# Main game loop
while true
do
  read GUESS
  TRIES=$((TRIES + 1))

  # Validate input
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    continue
  fi

  # Check guess
  if [[ $GUESS -gt $SECRET_NUMBER ]]
  then
    echo "It's lower than that, guess again:"
  elif [[ $GUESS -lt $SECRET_NUMBER ]]
  then
    echo "It's higher than that, guess again:"
  else
    break
  fi
done

# Get user_id for existing users or new users
if [[ -z $USER_DATA ]]
then
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
fi

# Insert game data
INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(user_id, guesses) VALUES($USER_ID, $TRIES)")

# Congratulate the user
echo "You guessed it in $TRIES tries. The secret number was $SECRET_NUMBER. Nice job!"
