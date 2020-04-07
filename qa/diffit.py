#!/Users/mlautman/Documents/python_venv3.6/bin/python
from bs4 import BeautifulSoup
import re
from textwrap import wrap
import os
from create_crossref import comparisons

original_base = '/Users/mlautman/Documents/docs/_build/html/'
new_base = '/private/tmp/2020-04-07_10-12-18/3469-Support_and_Documentation_3_2-html5/out/en/'

original_path = original_base + 'cms/developers-guide/installation/advanced.html'
new_path = new_base + 'developer-guide/installation/advanced-installation.html'

lookup_table = comparisons()
#print(lookup_table)
#for i in lookup_table:
#    print(i)
#exit()

for entry in lookup_table:
    print("Processing " + entry[0])

with open(original_path, 'r') as oldfile:
    oldhtml = oldfile.read()

with open(new_path, 'r') as newfile:
    newhtml = newfile.read()

oldfile.close()
newfile.close()

#remove line endings
line_end = re.compile(r'\n')
oldhtml = re.sub(line_end, '', oldhtml)
newhtml = re.sub(line_end, '', newhtml)

# Trash ancillary content from old.html
head_pattern = re.compile(r'<head>.*</head>')
oldhtml = re.sub(head_pattern, '', oldhtml)

header_pattern = re.compile(r'<header class="\S+?">.*</header>')
oldhtml = re.sub(header_pattern, '', oldhtml)

sidebar_pattern = re.compile(r'<div class="Sidebar".*</div>.*<input type="checkbox" id="SidebarTrigger" class="SidebarTrigger" />')
oldhtml = re.sub(sidebar_pattern, '<input type="checkbox" id="SidebarTrigger" class="SidebarTrigger">', oldhtml)

footer_pattern = re.compile(r'<footer.*?</footer>')
oldhtml = re.sub(footer_pattern, '', oldhtml)

permalink_pattern = re.compile(r'<a class="headerlink".*?¶</a>')
oldhtml = re.sub(permalink_pattern, '', oldhtml)

# Trash ancillary content from new.html

newhtml = re.sub(head_pattern, '', newhtml)
newhtml = re.sub(header_pattern, '', newhtml)
newhtml = re.sub(footer_pattern, '', newhtml)

new_sidebar_pattern = re.compile(r'<aside.*?</aside>')
newhtml = re.sub(new_sidebar_pattern, '', newhtml)

new_bottom_pager = re.compile(r'<div id="bottom-pager">.*?</div>')
newhtml = re.sub(new_bottom_pager, '', newhtml)

new_toolbar = re.compile(r'<div class="toolbar">.*</div>.*<main>')
newhtml = re.sub(new_toolbar, '<main>', newhtml)


new_top_pager = re.compile(r'<div id="top-pager".*</div>.*?<article class="topic content-container" id="content-wrapper">')
newhtml = re.sub(new_top_pager, '<article class="topic content-container" id="content-wrapper">', newhtml)

new_admonition = re.compile(r'<h3 class="title">(.*?)</h3>')
newhtml = re.sub(new_admonition, r'<p>\1</p>', newhtml)

new_publication_title = re.compile(r'<h1 class="publication-title">.*?</h1>')
newhtml = re.sub(new_publication_title, '', newhtml)

new_search_results = re.compile(r'<article id="search-result-wrapper">.*?</article>')
newhtml = re.sub(new_search_results, '', newhtml)


soup = BeautifulSoup(oldhtml,features="lxml")
oldtext = soup.get_text() 

soup = BeautifulSoup(newhtml,features="lxml")
newtext = soup.get_text() 

# toss whitespace

whitespace = re.compile(r'\s+')
oldtext = re.sub(whitespace, '', oldtext)
newtext = re.sub(whitespace, '', newtext)


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
newmetrics['codesamples'] = len(re.findall(r'pre class="programlisting',newhtml))


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
new_text_file.write(newtext) 
new_text_file.close()

old_text_wrap = wrap(oldtext, 80)
new_text_wrap = wrap(newtext, 80)

with open('/tmp/old_wrap.txt', 'w') as f:
    for item in old_text_wrap:
        f.write("%s\n" % item)
f.close()

with open('/tmp/new_wrap.txt', 'w') as f:
    for item in new_text_wrap:
        f.write("%s\n" % item)
f.close()


with open('/tmp/results.csv', 'w') as f:

    f.write("Results:\n")
    f.write('\t' + '\t'.join(oldmetrics.keys()) + '\n')
    f.write("Advanced Installation\n")

    f.write(original_path + '\t')
    f.write('\t'.join(map(str,oldmetrics.values())) + '\n')
    f.write(new_path + '\t')
    f.write('\t'.join(map(str,newmetrics.values())) + '\n')

f.close()


#print(oldmetrics.items())
#print(newmetrics.items())

print('aldone')

exit()

# diff -wBi old.txt new.txt 


def comparisons():
  
    developer_docs = os.walk('/Users/mlautman/Documents/docs/_build/html/cms/developers-guide')
    #print(developer_docs)
    master_topic_list={}
    for directories in developer_docs:
        for files in directories[2]:
            localfilename = directories[0] + '/' + files
 #          print(localfilename)
            if not '.DS_Store' in localfilename:
                with open(localfilename, 'r') as localfile:
                    localhtml = localfile.read()
                localfile.close()
            # print(localhtml)
                match = re.search('<h1>(.*)<a class="headerlink" ', localhtml)
                if match:
                    master_topic_list[localfilename] = match.group(1)
                    #print('found', match.group(1)) ## 'found word:cat'
                else:
                    print('did not find')

#print(master_topic_list.items())


    developer_docs = os.walk('/private/tmp/2020-04-07_10-12-18/3469-Support_and_Documentation_3_2-html5/out/en/developer-guide')
    #print(developer_docs)
    new_topic_list={}
    for directories in developer_docs:
        for files in directories[2]:
            localfilename = directories[0] + '/' + files
            #print(localfilename)
            if not '.DS_Store' in localfilename:
                with open(localfilename, 'r') as localfile:
                    localhtml = localfile.read()
                localfile.close()
            # print(localhtml)
                match = re.search('<title>(.*)</title>', localhtml)
                if match:
                    new_topic_list[match.group(1)] = localfilename
                    #print('found', match.group(1)) ## 'found word:cat'
                else:
                    print('did not find')

#print(master_topic_list.items())
#print(new_topic_list.items())

    lookup_table = []
    for filename,title in master_topic_list.items():
        try:
            lookup_table.append(title,filename,new_topic_list[title])
       # print(title, new_topic_list[title])
        except KeyError:
            print("WARNING: No new topic for " + title)