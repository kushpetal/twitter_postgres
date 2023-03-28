#!/bin/sh

# list all of the files that will be loaded into the database
# for the first part of this assignment, we will only load a small test zip file with ~10000 tweets
# but we will write are code so that we can easily load an arbitrary number of files
files='
test-data.zip
'

echo 'load normalized'
for file in $files; do
    # call the load_tweets.py file to load data into pg_normalized
    python3 -u load_tweets.py --db=postgresql://postgres:pass@localhost:5434/ "--inputs=$file"
done

echo 'load denormalized'
for file in $files; do
    # use SQL's COPY command to load data into pg_denormalized

done
