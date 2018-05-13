#!/bin/bash
	speedput=$(speedtest | grep -o '[0-9][1-9]*\.[0-9][1-9]*' | tail -2)
printf D:`echo $speedput | cut -d' ' -f1`"\n"U:`echo $speedput | cut -d' ' -f2`
