#!/bin/bash

# Create CSV header
echo "Name,Email,Slack Username,Area of Interest" > artifacts/output.csv

# Run Python scripts
for file in scripts/*.py; do
python "$file" >> artifacts/output.csv
done

# Run R scripts
for file in scripts/*.R; do
Rscript "$file" >> artifacts/output.csv
done

# Run Perl scripts
for file in scripts/*.pl; do
perl "$file" >> artifacts/output.csv
done

# Run JavaScript scripts
for file in scripts/*.js; do
node "$file" >> artifacts/output.csv
done

# Run Ruby scripts
for file in scripts/*.rb; do
ruby "$file" >> artifacts/output.csv
done

# Run Go scripts
for file in scripts/*.go; do
go run "$file" >> artifacts/output.csv
done

# Run C programs
for file in scripts/*.c; do
filename=$(basename "$file" .c)
gcc "$file" -o "scripts/$filename"
"./scripts/$filename" >> artifacts/output.csv
done

# Run C++ programs
for file in scripts/*.cpp; do
filename=$(basename "$file" .cpp)
g++ "$file" -o "scripts/$filename"
"./scripts/$filename" >> artifacts/output.csv
done

# Run Java programs
for file in scripts/*.java; do
filename=$(basename "$file" .java)
javac "$file"
java -cp scripts "$filename" >> artifacts/output.csv
done
