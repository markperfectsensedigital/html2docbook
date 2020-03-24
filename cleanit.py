#!/Users/mlautman/Documents/python_venv3.6/bin/python
import re
import sys

if (len(sys.argv) < 2):
    print("Usage: cleanit.py input_file.html")
    sys.exit()

# /&([a-z0-9]+|#[0-9]{1,6}|#x[0-9a-f]{1,6});/ig
infile  = open(sys.argv[1], "r")
outfile = open("cleanfile.html","w")
suspected_html_entity_pattern = "&&|&\S+?;"
real_html_entity_pattern = "&([a-z0-9]+|#[0-9]{1,6}|#x[0-9a-f]{1,6});"
for line in infile:
    newline = line
    newline = re.sub("&&","",newline)
    newline = re.sub("&l=","",newline)
    newline = re.sub("’","'",newline)
    newline = re.sub("“","\"",newline)
    newline = re.sub("”","\"",newline)
    res = re.findall(suspected_html_entity_pattern,line)
    if res is not None:
        for item in res:
            #print(item)
            if re.match(real_html_entity_pattern,item) is None:
                #print("Is not an HTML entity")
                newline = re.sub(item,"",newline)
                #print (newline)

    res = re.search("<link(.*?)>",newline)
    if res is not None:
        if res.group(1)[-1:] != "/":
            newline = re.sub(">$","/>",newline)


    res = re.search("<img(.*?)>",newline)
    if res is not None:
        if res.group(1)[-1:] != "/":
            #print(res.group(1))
            newline = re.sub(">$","/>",newline)


    newline = re.sub("data-docsearch-input","",newline)
    newline = re.sub("<option selected>","<option selected=\"selected\">",newline)


    outfile.write(newline)
infile.close()
outfile.close()
print("Output in cleanfile.html")