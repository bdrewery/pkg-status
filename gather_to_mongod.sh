#! /bin/sh

if [ -z "$MONGO_URI" ]; then
	echo "The MONGO_URI variable is not set."
	exit 1
fi

if [ "$1" = "venv" ]; then
	. venv/bin/activate
fi

while :; do
	python3 gather_to_mongo.py
	sleep 60
done
