#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

SECRET_NUMBER=$(( ( RANDOM % 1000 )  + 1 ))
# echo $SECRET_NUMBER

NUMBER_OF_GUESSES=1

GUESS_NUMBER(){
  echo "Guess the secret number between 1 and 1000:"
  read NUMBER_GUESSED
  if [[ $NUMBER_GUESSED -eq $SECRET_NUMBER ]]
  then
     ENTER_DATA
     echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
  elif [[ ! $NUMBER_GUESSED =~ ^[0-9]+$ ]]
  then
     echo "That is not an integer, guess again:"
     NUMBER_OF_GUESSES=$((NUMBER_OF_GUESSES+1))
     GUESS_NUMBER
  else
     if [[ $NUMBER_GUESSED -gt $SECRET_NUMBER ]]
     then
        echo "It's lower than that, guess again:"
     elif [[ $NUMBER_GUESSED -lt $SECRET_NUMBER ]]
     then
        echo "It's higher than that, guess again:"
     fi
     NUMBER_OF_GUESSES=$((NUMBER_OF_GUESSES+1))
     GUESS_NUMBER
   fi
}


ENTER_DATA() {
   DATA_ENTERED_BOOL=$($PSQL "INSERT INTO games(username, tries, number) VALUES('$USERNAME', $NUMBER_OF_GUESSES, $SECRET_NUMBER)")
}


GET_USERNAME(){
   echo "Enter your username:"
   read USERNAME

   USERNAME_BOOL=$($PSQL "SELECT username FROM games WHERE username='$USERNAME'")
   if [[ ${#USERNAME} -gt 22 ]] || [[ ! ${#USERNAME} -gt 0 ]]
   then
      # echo "Please provide a username of upto 22 length only"
      GET_USERNAME
   elif [[ -z $USERNAME_BOOL ]]
   then
      echo "Welcome, $USERNAME! It looks like this is your first time here."
   else
      GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE username='$USERNAME'")
      BEST_GAME=$($PSQL "SELECT MIN(tries) FROM games WHERE username='$USERNAME'")
      echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
   fi
   GUESS_NUMBER
}

GET_USERNAME