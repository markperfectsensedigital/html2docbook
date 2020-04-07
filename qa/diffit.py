#!/Users/mlautman/Documents/python_venv3.6/bin/python
from bs4 import BeautifulSoup
import re

with open('/Users/mlautman/Documents/docs/_build/html/cms/developers-guide/installation/advanced.html', 'r') as oldfile:
    oldhtml = oldfile.read()


with open('/private/tmp/2020-04-06_17-14-05/3469-Support_and_Documentation_3_2-html5/out/en/developer-guide/installation/advanced-installation.html', 'r') as newfile:
    newhtml = newfile.read()

oldfile.close()
newfile.close()


soup = BeautifulSoup(oldhtml,features="lxml")
oldtext = soup.get_text() 

soup = BeautifulSoup(newhtml,features="lxml")
newtext = soup.get_text() 


# toss whitespace

whitespace = re.compile(r'\s+')
oldtext = re.sub(whitespace, '', oldtext)
newtext = re.sub(whitespace, '', newtext)

#remove line endings
line_end = re.compile(r'\n')
oldhtml = re.sub(line_end, '', oldhtml)
newhtml = re.sub(line_end, '', newhtml)

head_pattern = re.compile(r'<head>.*</head>')
oldhtml = re.sub(head_pattern, '', oldhtml)
newhtml = re.sub(head_pattern, '', newhtml)

header_pattern = re.compile(r'<header class="\S+?">.*</header>')
oldhtml = re.sub(header_pattern, '', oldhtml)
newhtml = re.sub(header_pattern, '', newhtml)

footer_pattern = re.compile(r'<footer.*?</footer>')
oldhtml = re.sub(footer_pattern, '', oldhtml)
newhtml = re.sub(footer_pattern, '', newhtml)

version_select_pattern = re.compile(r'<div class="VersionSelect">.*?</div>')
oldhtml = re.sub(version_select_pattern, '', oldhtml)
old_sidebar_pattern = re.compile(r'<div class="SidebarNavigation">.*?</div>')
oldhtml = re.sub(old_sidebar_pattern, '', oldhtml)

new_sidebar_pattern = re.compile(r'<aside.*?</aside>')
newhtml = re.sub(new_sidebar_pattern, '', newhtml)

new_bottom_pager = re.compile(r'<div id="bottom-pager">.*?</div>')
newhtml = re.sub(new_bottom_pager, '', newhtml)

new_top_pager = re.compile(r'<div id="top-pager">.*?</div>')
newhtml = re.sub(new_top_pager, '', newhtml)

new_breadcrumb_container = re.compile(r'<div class="breadcrumb-container">.*?</div>')
newhtml = re.sub(new_breadcrumb_container, '', newhtml)


new_toolbar = re.compile(r'<div class="toolbar">.*</div><main>')
newhtml = re.sub(new_toolbar, '<main>', newhtml)

new_search_wrapper = re.compile(r'<article id="search-result-wrapper">.*?</article>')
newhtml = re.sub(new_search_wrapper, '', newhtml)

new_admonition = re.compile(r'<h3 class="title">(.*?)</h3>')
newhtml = re.sub(new_admonition, r'<p>\1</p>', newhtml)

new_publication_title = re.compile(r'<h1 class="publication-title">.*?</h1>')
newhtml = re.sub(new_publication_title, '', newhtml)

permalink_pattern = re.compile(r'<a class="headerlink".*?¶</a>')
oldhtml = re.sub(permalink_pattern, '', oldhtml)





# Change curlies to straights
oldtext.replace('’', "'")
oldtext.replace('“', '"')
oldtext.replace('”', '"')


oldmetrics = dict()
newmetrics = dict()

oldmetrics['images'] = oldhtml.count('<img')
oldmetrics['links'] = oldhtml.count('<a ')
oldmetrics['tables'] = oldhtml.count('<table')
oldmetrics['chars'] = len(oldtext)
oldmetrics['headings'] = len(re.findall(r'<h\d',oldhtml))
oldmetrics['codesamples'] = len(re.findall(r'div class="highlight-',oldhtml))

newmetrics['images'] = newhtml.count('<img')
newmetrics['links'] = newhtml.count('<a ')
newmetrics['tables'] = newhtml.count('<table')
newmetrics['chars'] = len(newtext)
newmetrics['headings'] = len(re.findall(r'<h\d',newhtml))
newmetrics['codesamples'] = len(re.findall(r'div class="highlight-',newhtml))


old_html_file = open("/tmp/old.html","w") 
old_html_file.write(oldhtml) 
old_html_file.close()

old_text_file = open("/tmp/old.txt","w") 
old_text_file.write(oldtext) 
old_text_file.close()


new_html_file = open("/tmp/new.html","w") 
new_html_file.write(newhtml) 
new_html_file.close()

new_text_file = open("/tmp/new.txt","w") 
new_text_file.write(oldtext) 
new_text_file.close()


print(oldmetrics.items())
print(newmetrics.items())

print('aldone')
exit()

newmetrics['images'] = 0
newmetrics['links'] = 0
newmetrics['tables'] = 0
newmetrics['chars'] = 0
newmetrics['headings'] = 0
newmetrics['codesamples'] = 0


# diff -wBi old.txt new.txt 

