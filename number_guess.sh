#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=number_guessing_game --no-align --tuples-only -c"

SECRET_NUMBER=$(( $RANDOM % 1001  ))

echo "Enter your username:"
read NAME

USER_ID=$($PSQL "SELECT user_id FROM users WHERE name = '$NAME'")

if [[ -z $USER_ID ]]
then
  INSERT_USER=$($PSQL "INSERT INTO users(name) VALUES('$NAME')")

  USER_ID=$($PSQL "SELECT user_id FROM users WHERE name = '$NAME'")

  echo "Welcome, $NAME! It looks like this is your first time here."
else
  USER_GAME_INFO=$($PSQL "SELECT DISTINCT users.name, 
	                (SELECT COUNT(game_id) FROM games WHERE user_id = $USER_ID), 
	                (SELECT MIN(tries) FROM GAMES WHERE user_id = $USER_ID)
    FROM games INNER JOIN users USING(user_id) WHERE user_id = $USER_ID GROUP BY game_id, users.name")

  echo "$USER_GAME_INFO" | while IFS="|" read NAME GAMES_PLAYED LEAST_TRIES
  do
    echo "Welcome back, $NAME! You have played $GAMES_PLAYED games, and your best game took $LEAST_TRIES guesses."
  done
fi

# register game and return game_id for further use
GAME_ID=$(echo $($PSQL "INSERT INTO games(user_id) VALUES($USER_ID) RETURNING game_id") | sed 's/\([0-9]*\) .*/\1/')

echo "Guess the secret number between 1 and 1000:"

GUESSED=false

TRIES=0

while [ "$GUESSED" = false ]
do
  read NUMBER_GUESSED
  
  # if not a number
  if [[ ! $NUMBER_GUESSED =~ ^[0-9]+$ ]]; then
    echo "That is not an integer, guess again:"
    continue
  fi

  if [[ $NUMBER_GUESSED -lt $SECRET_NUMBER ]]; then
    ((TRIES++))
    echo "It's higher than that, guess again:"
  elif [ $NUMBER_GUESSED -gt $SECRET_NUMBER ]; then
    ((TRIES++))
    echo "It's lower than that, guess again:"
  elif [ $NUMBER_GUESSED -eq $SECRET_NUMBER ]; then
    ((TRIES++))
    GUESSED=true   
  fi
done

UPDATE_TRIES=$($PSQL "UPDATE games SET tries = $TRIES WHERE game_id = $GAME_ID")

if [[ "$GUESSED" = true ]] 
then
  NUMBER_OF_GUESSES=$($PSQL "SELECT tries FROM games WHERE game_id = $GAME_ID")
  echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
fi
