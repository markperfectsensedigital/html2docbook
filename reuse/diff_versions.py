#!/Users/mlautman/Documents/python_venv3.6/bin/python
from bs4 import BeautifulSoup
import re
import os
import difflib
import filecmp





with open( '/Users/mlautman/Desktop/Paligo Backups/sphinx_build_html_3.2/cms/developers-guide/intro/index.html', 'r') as oldfile:
    oldhtml = oldfile.read()

with open( '/Users/mlautman/Desktop/Paligo Backups/sphinx_build_html_3.3/cms/developers-guide/intro/index.html', 'r') as newfile:
        newhtml = newfile.read()

oldfile.close()
newfile.close()

#line_end = re.compile(r'\n')
#oldhtml = re.sub(line_end, '', oldhtml)
#newhtml = re.sub(line_end, '', newhtml)

head_pattern = re.compile(r'<head>.*</head>')
oldhtml = re.sub(head_pattern, '', oldhtml)
newhtml = re.sub(head_pattern, '', newhtml)


header_pattern = re.compile(r'<header class="\S+?">.*</header>')
oldhtml = re.sub(header_pattern, '', oldhtml)
newhtml = re.sub(header_pattern, '', newhtml)

sidebar_pattern = re.compile(r'<div class="Sidebar".*</div>.*<input type="checkbox" id="SidebarTrigger" class="SidebarTrigger" />')
oldhtml = re.sub(sidebar_pattern, '<input type="checkbox" id="SidebarTrigger" class="SidebarTrigger">', oldhtml)
newhtml = re.sub(sidebar_pattern, '<input type="checkbox" id="SidebarTrigger" class="SidebarTrigger">', newhtml)


footer_pattern = re.compile(r'<footer.*?</footer>')
oldhtml = re.sub(footer_pattern, '', oldhtml)
newhtml = re.sub(footer_pattern, '', newhtml)

permalink_pattern = re.compile(r'<a class="headerlink".*?¶</a>')
oldhtml = re.sub(permalink_pattern, '', oldhtml)
newhtml = re.sub(permalink_pattern, '', newhtml)

# Replace newlines after each tag

#end_bracket_pattern = re.compile(r'>')
#oldhtml = re.sub(end_bracket_pattern, '\n', oldhtml)
#newhtml = re.sub(end_bracket_pattern, '\n', newhtml)


soup = BeautifulSoup(oldhtml,features="lxml")
oldtext = soup.get_text() 

soup = BeautifulSoup(newhtml,features="lxml")
newtext = soup.get_text() 


old_text_file = open("/tmp/old.txt","w") 
old_text_file.write(oldtext) 
old_text_file.close()

new_text_file = open("/tmp/new.txt","w") 
new_text_file.write(newtext) 
new_text_file.close()


os.system("diff -B /tmp/old.txt /tmp/new.txt")


#print(oldmetrics.items())
#print(newmetrics.items())

print('all done')


# diff -wBi old.txt new.txt 

