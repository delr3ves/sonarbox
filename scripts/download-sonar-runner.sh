#!/bin/sh
sonar_dest=sonar-runner.zip
if [ ! -f $sonar_dest ]; then
  wget http://repo1.maven.org/maven2/org/codehaus/sonar/runner/sonar-runner-dist/2.4/sonar-runner-dist-2.4.zip -O $sonar_dest
fi
unzip -o sonar-runner.zip
mv sonar-runner-2.4 sonar-runner
