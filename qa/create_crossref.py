#!/Users/mlautman/Documents/python_venv3.6/bin/python
import re
import os

def comparisons():
  
    old_dir = '/Users/mlautman/Documents/docs/_build/html/cms/editorial-guide/'
    if not os.path.isdir(old_dir):
        print (old_dir + ' is not a directory. Exiting')
        exit()

    developer_docs = os.walk(old_dir)
    #print(developer_docs)
    master_topic_list={}
    for directories in developer_docs:
        for files in directories[2]:
            localfilename = directories[0] + '/' + files
            #print(localfilename)
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
                    print('did not find old topic' )

#print(master_topic_list.items())


    new_dir = '/private/tmp/2020-04-10_10-38-56/3469-Support_and_Documentation_3_2-html5/out/en/editorial-guide'
    if not os.path.isdir(new_dir):
        print (new_dir + ' is not a directory. Exiting')
        exit()

    developer_docs = os.walk(new_dir)
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
                    print('did not find new topic' )

#print(master_topic_list.items())
#print(new_topic_list.items())

    lookup_table = []
    for filename,title in master_topic_list.items():
        try:
            lookup_table.append((title,filename,new_topic_list[title]))
       # print(title, new_topic_list[title])
        except KeyError:
            print("WARNING: No new topic for " + title)
    return lookup_table