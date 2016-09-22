#!/bin/bash

ARG1=${1:-"--update"};

echo "You must have python 2.7 and virtualenv installed"
if [ ! -s instance/config.py ]; then
	echo "Please create an instance/config.py file before proceeding. See the README.md for what's required."
	return
fi

if [ "$ARG1" == '--update' ]; then
	echo "Updating npm and bower dependencies";
	npm update;
	bower update;
fi

if [ "$ARG1" == '--clean' ]; then
	echo "Cleaning out current dependencies";
	rm -rf node_modules;
	rm -rf portal_ui/bower_components;
	echo "Installing npm and bower dependencies";
	npm install;
	bower install;
fi

echo "Running Javascript tests";
node_modules/karma/bin/karma start test/js/karma.conf.js;


echo "Creating the virtualenv env and installing python requirements"
if [ "$ARG1" == "--clean" ]; then
	rm -rf env;
fi

if [ ! -s env ]; then
	virtualenv --python=python2.7 env
fi
env/bin/pip install -r requirements.txt

echo "Finished setting up WQP_UI"