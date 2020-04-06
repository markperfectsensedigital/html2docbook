#!/Users/mlautman/Documents/python_venv3.6/bin/python
from bs4 import BeautifulSoup

file = open("old.html","r")

for html_str in file:

    html_str.replace('’', "'")
    html_str.replace('“', '"')
    html_str.replace('”', '"')


    soup = BeautifulSoup(html_str,features="lxml")
    print(soup.get_text()) 


