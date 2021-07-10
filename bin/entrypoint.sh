#!/bin/bash

function tfenv () {
	# remove me
	ls -hal
	tfenv install \
	&& tfenv install
}

function terraForm () {
	# remove me
	ls -hal
	echo $1
	terraform $1
}

tfenv
terraForm $1
