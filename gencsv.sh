  GNU nano 4.8                                                   gencsv.sh
#!/bin/bash

random()
{
    local range=${1:-1};

    RAND=`od -t uI -N 4 /dev/urandom | awk '{print $2}'`
    let "RAND=$RAND%($range+1)"
}

echo "Input for Length ..."
read n;
i=0;

while [ $(( n -=1 )) -ge "0" ]; do
    i=$((i+1));
    random 300
    echo "$i,$RAND">>inputdata
done

