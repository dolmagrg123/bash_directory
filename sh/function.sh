#! /bin/bash

function funcName()
{
    echo $@
}

function funcCheck()
{
    returningValue="return some value"
    echo $returningValue
}

returningValue="I love linux"
echo $returningValue

funcCheck
# funcName Hi This is a linux