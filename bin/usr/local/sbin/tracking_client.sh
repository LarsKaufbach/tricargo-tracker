#!/bin/bash

while true
do
	gpspipe -r | ncat -v 10.0.0.1 12345
done

