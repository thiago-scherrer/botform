#!/bin/bash

function workDir() {
	cd $INPUT_TFDIR
}

function tfEnv () {
	tfenv install \
	&& tfenv use
}

function terraForm () {
	terraform $INPUT_TFARG
}

tfEnv 1>/dev/null
terraForm
