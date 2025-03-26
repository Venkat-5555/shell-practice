#!/bin/bash
#set -e
failure(){
    echo "the error is at : $1 and command is $2"
}
trap 'failure "$LINENO" "$BASH_COMMAND"' ERR
echo "hi , hello"
echhoo "how r u?"
echo "bye"
pas
pwd
ls -l