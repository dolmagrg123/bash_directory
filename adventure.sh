#!/bin/bash

welcome(){

    echo "Welcome back to the fantasy world!!! Wait Are you New here?"
    read -p "What is your name?" name
}

adventure_1(){

    echo "Are you: \n1 Princess \n2 Lady \n3 Commoner" option
    if [ option == 1 ];then
        princess
    elif [ option == 2 ];then
        lady
    else
        commoner
}

princess(){
    echo "Welcome Princess $name"

}

lady(){
    echo "Welcome Lady $name"

}

commoner(){
    echo "Welcome Miss $name"

}

