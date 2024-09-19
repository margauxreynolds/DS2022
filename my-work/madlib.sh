#!/bin/bash

clear
echo "Let's build a mad-lib!"

read -p "1. Name an unusual sport: " NOUN1
read -p "2. Name a food: " NOUN2
read -p "3. Name a place: " PLACE
read -p "4. Name a color: " COLOR
read -p "5. Name an animal: " ANIMAL
read -p "6. Give me a verb: " VERB1
read -p "7. Give me another verb: " VERB2
read -p "8. Give me an  adjective: " ADJECTIVE
read -p "9. Give me an adverb: " ADVERB

echo "Once upon a time, there was a $ADJECTIVE $ANIMAL who loved playing $NOUN1."
echo "One day, the $ANIMAL decided to visit $PLACE. On the way there, it saw a $COLOR $NOUN2."
echo "The $ANIMAL was so excited that it started to $ADVERB $VERB1 and then $VERB2 all the way to $PLACE."
echo "And from that day on, the $ANIMAL never forgot the $COLOR $NOUN2."
