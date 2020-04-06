if [[ $# -lt 1 ]]; then
    echo "Usage: make_upload.sh docbook_file.xml "
    exit
fi


if [[ ! -f "$1" ]]; then
    echo "$1 does not exist. Try again."
    exit
fi

rm upload/*
NEWFILENAME=`echo "$1" | tr -cd 'A-Za-z0-9_-.'`
cp "$1" upload/$NEWFILENAME

if [ $? -ne 0 ]; then
    echo "Could not copy file. Try again."
    exit
fi

if [[ -f upload.zip ]]; then
   rm upload.zip
fi

zip -rj upload.zip upload/