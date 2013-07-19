.PHONY: lucky

PATH := .:$(PATH)

lucky:
	./.imfeelinglucky.sh

all: lucky
