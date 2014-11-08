#!/usr/bin/env bash

check_color() {
    if [[ $? -eq 0 ]]; then
        echo "${Green}"
        return 0
    else
        echo "${Red}"
        return 1
    fi
}

face() {
    if [[ $? -eq 0 ]]; then
        local face=":)"
    else
        local face=":("
    fi
    echo $face
}

random_face() {
    if [[ $? -eq 0 ]]; then
        local faces=(":)" ":D")
    else
        local faces=(":P" ":(" ":(" ":O" ":\\" ":|" ":(" ":(")
    fi

    local facels=${#faces[*]}
    local randfacels=${faces[$(($RANDOM % $facels))]}
    echo $randfacels

}

