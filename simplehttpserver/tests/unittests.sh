#!/bin/bash
function stallmantest {
  echo "running stallmantest"
  sleep 20
  [ ! -f $1/stallman.jpg ] && echo "stallman.jpg does not exist" && exit 1 || echo "stallman test is OK"
}


function readmetest {
  echo "running readmetest"
  sleep 13
  [ ! -f $1/README.txt ] && echo "README.txt does not exist" && exit 1 || echo "README.txt test is OK"
}


function httpservertest {
  echo "running httpservertest"
  sleep 7
  [ ! -f $1/httpserver.py ] && echo "httpserver.py does not exist" && exit 1 || echo "httpserver.py test is OK"
}


stallmantest $1
readmetest $1
httpservertest $1

exit 0
