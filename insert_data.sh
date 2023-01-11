#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE TABLE games, teams")
echo -e "\nSuccessful Truncate!\n"

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS 
do
 # insert winner id
if [[ $WINNER != winner ]]
then
 # get winners 
TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
 # if not found 
  if [[ -z $TEAM_ID ]]
  then 
  # insert winners 
  INSERT_WINNER=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
  if [[ $INSERT_WINNER == 'INSERT 0 1' ]]
  then
    echo $WINNER has been inserted  
  fi
  TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
# get new winner id
  fi
fi
done

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS 
do
 # insert losers 
if [[ $OPPONENT != opponent ]]
  then
 # get losers id
  TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
 # if not found 
  if [[ -z $TEAM_ID ]]
  then
    #insert losers
    INSERT_OPPONENT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
    if [[ $INSERT_OPPONENT == 'INSERT 0 1' ]]
    then 
      echo $OPPONENT has been inserted
    fi
# get new loser id 
  TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
  fi
fi
done

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS 
do
 # insert games data
if [[ $YEAR != year ]]
then
 # get games id 
  GAME_ID=$($PSQL "SELECT game_id FROM games WHERE year='$YEAR' AND round='ROUND' AND winner_goals='$WINNER_GOALS'")

 # if not found 
  if [[ -z $GAME_ID ]]
  then
  # insert 
  WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
  OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")

  INSERT_GAMES=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)") 
  if [[ $INSERT_GAMES == 'INSERT 0 1' ]]
  then 
  echo Games Inserting.....
  fi
# get new games id
  GAME_ID=$($PSQL "SELECT game_id FROM games WHERE year='$YEAR' AND round='ROUND' AND winner_goals='$WINNER_GOALS'")
  fi
fi
done
