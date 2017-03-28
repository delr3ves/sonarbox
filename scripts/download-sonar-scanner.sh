#!/bin/sh
sonar_dest=sonar-scanner.zip
if [ ! -f $sonar_dest ]; then
  wget https://sonarsource.bintray.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-3.0.0.702-linux.zip -O $sonar_dest
fi
unzip -o sonar-scanner.zip
mv sonar-scanner-3.0.0.702-linux sonar-scanner
