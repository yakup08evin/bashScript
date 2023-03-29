#!/bin/bash

xyz="a"

echo "Testing \"xyz\""
if [[  -n $xyz ]]; then
  echo "Uninit var is non-zero lenght "
elif [[ -z $xyz ]]; then          
  echo "Uninit var is zero lenght "
fi           
