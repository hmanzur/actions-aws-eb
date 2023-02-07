#!/bin/sh -l

git config --global --add safe.directory /github/workspace

command="eb $1"

$command
