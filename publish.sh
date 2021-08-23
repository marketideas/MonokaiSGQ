#!/bin/bash
source ~/keys/aws_squick.txt

vsce logout marketideas
echo $VSCODE_PUBLISH_TOKEN |  vsce login marketideas
vsce package
vsce publish

