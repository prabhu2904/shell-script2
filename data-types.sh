#!/bin/bash

NUMBER1=$1
NUMBER2=$2

SUM=$(($NUMBER1+$NUMBER2))
  echo "Total :: $SUM"
  echo "total args passed ::$#"
  echo  "all args :: $@"
  echo "script-name ::$0