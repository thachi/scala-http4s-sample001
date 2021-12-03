#!/bin/bash -ex

BIN_NAME="scala-http4s-sample001"

sbt clean nativeImage

BIN_PATH=`find target/native-image -name $BIN_NAME`

mkdir -p target/appengine
cp app.yaml target/appengine/app.yaml
cp $BIN_PATH target/appengine/$BIN_NAME

cd target/appengine

gcloud app deploy
