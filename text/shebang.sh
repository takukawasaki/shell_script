#!/bin/sh

if [ ! -f "$1" ];
then
    echo "File does not exists. $1" >&2
    exit 1
fi

headline=$(head -n 1 $1)

case $headline in
    */bin/sh|*bash*)
        if [ ${1##*.} ];
        then
           mv -v "$1" "${1}.sh"
        fi
        ;;
    
    *perl*)
        case $1 in
            *.*)
                echo "$1 has ext."
                ;;
            *)
                mv -v "$1" "${1}.pl"            
                ;;
        esac
        ;;
    *python*)
        case $1 in
            *.*)
                echo "$1 has ext."
                ;;
            *)
                mv -v "$1" "${1}.py"
                ;;
        esac
        ;;
    *ruby*)
        case $1 in
            *.*)
                echo "$1 has ext."
                ;;
            *)
                mv -v "$1" "${1}.rb"
                ;;
        esac
        ;;
    *)
        echo "Unknown Type: $1"
esac

