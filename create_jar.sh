#!/bin/bash

original_file="./target/rodi-2.0.0-SNAPSHOT-jar-with-dependencies.jar"
file="./RODI_benchmark.jar"

echo "Remove old jar file"

[ -e $file ] && rm $file

mvn clean
mvn package

echo "Move the new jar file in the root directory"

mv $original_file ./$file
