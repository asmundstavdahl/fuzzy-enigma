#!/bin/bash

echo -n > old.txt
echo -e "OK unless not OK!" >> old.txt
echo -e "OK unless not OK!" >> old.txt
echo -e "not OK!" >> old.txt
echo -e "OK unless not OK!" >> old.txt
echo -e "OK unless not OK!" >> old.txt

echo -n > new.txt
echo -e "OK unless not OK" >> new.txt
echo -e "OK unless not OK" >> new.txt
echo -e "OK unless not OK" >> new.txt
echo -e "OK unless not OK" >> new.txt

shards build

./bin/re-tail old.txt new.txt
