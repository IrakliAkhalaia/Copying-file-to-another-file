#!/bin/zsh

if [ -e "$1" ]
then
        if [[ -e "$1" && ! -e "$2" ]]
        then
                cp "$1" "$2";
                echo ""$2" file does not exist but "$1" file copied and "$2" file created."
                elif cmp "$1" "$2">/dev/null
                        then
                                echo ""$1" file and "$2" file content are identical.";

                else
                        cp "$1" "$2";
                        echo ""$1" file successfully copied to "$2" file.";
                fi
else
        echo ""$1" file doesn't exist, so can't copy :(";
fi
