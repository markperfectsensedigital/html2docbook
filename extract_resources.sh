


if [[ ! -f "/tmp/" ]]; then
    echo "$1 does not exist. Try again."
    exit
fi


./cleanit.py $1
if [ $? -ne 0 ]; then
    echo "Could not clean file. Try again."
    exit
fi
OUTPUTFILE='docbook.xml'
saxon -s:/Users/mlautman/Documents/paligo/converter/cleanfile.html -xsl:/Users/mlautman/Documents/paligo/converter/converter.xsl -o:$OUTPUTFILE startingheading="$2"
echo "Output in $OUTPUTFILE"
