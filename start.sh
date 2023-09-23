#!/bin/sh

if [ $KEY ]
    then
        echo -n "${KEY}" > /hath/data/client_login
    else
        if [ ! -f /hath/data/client_login ];
            then
                echo "Couldn't find the key."
                exit 1
        fi
    
fi

hath-rust
