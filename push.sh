#!/bin/bash

if [ "$1" = "heroku" ]
then 
  git push heroku master
elif [ "$1" = "github" ]
then
  git push origin master
else
  git push origin master
  git push heroku master
fi
