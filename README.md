# re-tail
Print only new trailing content from second file

## Usage

```sh
echo "1" >  old.txt
echo "2" >> old.txt
echo "3" >> old.txt
cp old.txt new.txt
echo "4" >> new.txt
echo "5" >> new.txt
re-tail old.txt new.txt
# 4
# 5
```

## Installation

```sh
shards build
cp bin/re-tail /usr/bin/
```
