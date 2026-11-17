#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

INITIAL_MSG() {
  echo -e "\nEnter your username:"
  read USERNAME

}

GAME () {
  if [[ $1 ]]
  then
    RG='^[0-9]+$'
    if [[ $1 =~ $RG ]]
    then
      if [[ $1 -gt $SECRET ]]
      then
        echo "\nIt's lower than that, guess again:"
        (( COUNTER++ ))
      else
        if [[ $1 -lt $SECRET ]]
        then
          echo "\nIt's higher than that, guess again:"
          (( COUNTER++ ))
        else
          echo -e "\nYou guessed it in $COUNTER tries. The secret number was $SECRET. Nice job!\n"
          USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
          GAME_INSERT=$($PSQL "INSERT INTO games (user_id, guesses) VALUES($USER_ID, $COUNTER)")
          return
        fi
      fi
    else
      echo "That is not an integer, guess again:"
    fi
  else
    SECRET=$RANDOM
    let 'SECRET %= 1000'
    echo -e "\nGuess the secret number between 1 and 1000:"
  fi
  read GUESS
  GAME $GUESS
}

INITIAL_MSG

USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME';")
if [[ ! -z $USER_ID ]]
then
  TOTAL=$($PSQL "SELECT count(*) FROM users INNER JOIN games USING(user_id) WHERE user_id = $USER_ID ;")
  GUESSES=$($PSQL "SELECT MIN(guesses) FROM users INNER JOIN games USING(user_id) WHERE user_id = $USER_ID ;")
  echo -e "\nWelcome back, $USERNAME! You have played $TOTAL games, and your best game took $GUESSES guesses."
else
  INSERT_MSG=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
fi

COUNTER=1

GAME

