#!/bin/bash

function tfEnv () {
	tfenv install \
	&& tfenv use
}

function terraForm () {
	terraform $INPUT_TFARG
}

tfEnv 1>/dev/null
terraForm
