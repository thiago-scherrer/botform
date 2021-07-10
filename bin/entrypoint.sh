#!/bin/bash

function workDir() {
	cd $INPUT_TFDIR
}

function tfEnv () {
	tfenv install $INPUT_TFVERSION\
	&& tfenv use $INPUT_TFVERSION
}

function terraForm () {
	terraform $INPUT_TFARG
}

workDir
tfEnv 1>/dev/null
terraForm
