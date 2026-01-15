#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"
if [[ -z $1 ]]; then echo "Please provide an element as an argument."; exit; fi
if [[ $1 =~ ^[0-9]+$ ]]; then ELEMENT=$($PSQL "SELECT atomic_number,name,symbol,type,atomic_mass,melting_point_celsius,boiling_point_celsius FROM elements JOIN properties USING(atomic_number) JOIN types USING(type_id) WHERE atomic_number=$1;"); else ELEMENT=$($PSQL "SELECT atomic_number,name,symbol,type,atomic_mass,melting_point_celsius,boiling_point_celsius FROM elements JOIN properties USING(atomic_number) JOIN types USING(type_id) WHERE symbol='$1' OR name='$1';"); fi
if [[ -z $ELEMENT ]]; then echo "I could not find that element in the database."; exit; fi
IFS="|" read A N S T M MP BP <<< "$ELEMENT"
echo "The element with atomic number $A is $N ($S). It's a $T, with a mass of $M amu. $N has a melting point of $MP celsius and a boiling point of $BP celsius."

