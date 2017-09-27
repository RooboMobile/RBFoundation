#!/bin/bash

podSpecName=`ls|grep ".podspec$"|sed "s/\.podspec//g"`
echo $podSpecName

pod repo push Roobo_iOS  $podSpecName.podspec --allow-warnings
