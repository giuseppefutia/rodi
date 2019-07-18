#!/bin/bash

original_file="./target/rodi-2.0.0-SNAPSHOT.jar"
target_file="./RODI_benchmark.jar"

echo "Remove old jar file"

[ -e $target_file ] && rm $target_file

mvn clean
mvn package

echo "Move the new jar file in the root directory"

mv $original_file ./$target_file
