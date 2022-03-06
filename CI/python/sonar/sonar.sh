#!/bin/bash

echo "Executando Sonar"

export SONAR_SCANNER_VERSION=4.7.0.2747
export SONAR_SCANNER_HOME=$HOME/.sonar/sonar-scanner-$SONAR_SCANNER_VERSION-linux
curl --create-dirs -sSLo $HOME/.sonar/sonar-scanner.zip https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-$SONAR_SCANNER_VERSION-linux.zip
unzip -o $HOME/.sonar/sonar-scanner.zip -d $HOME/.sonar/
export PATH=$SONAR_SCANNER_HOME/bin:$PATH
export SONAR_SCANNER_OPTS="-server"

SONAR_TOKEN='e2fd9312a36a9ec063e6a200e1b9a8a9a2fb5e74'

sonar-scanner \
  -Dsonar.organization=microservice-api \
  -Dsonar.projectKey=python-api \
  -Dsonar.sources=. \
  -Dsonar.host.url=https://sonarcloud.io