#!/bin/bash

function tfEnv () {
	# remove me
	ls -hal
	tfenv install \
	&& tfenv use
}

function terraForm () {
	# remove me
	ls -hal
	echo $1
	terraform $1
}

tfEnv
terraForm $1
