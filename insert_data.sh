#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo "$($PSQL "TRUNCATE TABLE games, teams")"

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS 
do
if [[ $WINNER != "winner" ]]
then
  WINNER_ID=$($PSQL "SELECT team_id from teams where name='$WINNER'")
  OPPONENT_ID=$($PSQL "SELECT team_id from teams where name='$OPPONENT'")
  if [[ -z $WINNER_ID ]]
  then
    WO=$($PSQL "INSERT INTO teams(name) VALUES ('$WINNER') ")
    if [[ $WO == "INSERT 0 1" ]]
    then
      echo "NEW ROW $WINNER added to the teams table"
      WINNER_ID=$($PSQL "SELECT team_id from teams where name='$WINNER'")
    fi
  fi

  if [[ -z $OPPONENT_ID ]]
  then
    LO=$($PSQL "INSERT INTO teams(name) VALUES ('$OPPONENT') ")
    if [[ $LO == "INSERT 0 1" ]]
    then
      echo "NEW ROW $OPPONENT added to the teams table"
      OPPONENT_ID=$($PSQL "SELECT team_id from teams where name='$OPPONENT'")
    fi
  fi

  MATCH=$($PSQL "INSERT INTO games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) VALUES ($YEAR, '$ROUND',$WINNER_ID,$OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)")
  if [[ $MATCH == "INSERT 0 1" ]]
  then
    echo "NEW ROW TO GAMES $WINNER vs $OPPONENT IN $YEAR $ROUND"
  fi
fi

done
