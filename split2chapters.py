#!/usr/local/bin/python3
import os

TEMP_FILE_NAME="it3pr_chapters.temp"

os.system("pdfgrep -n Kapitel it3pr.pdf > {}".format(TEMP_FILE_NAME))

with open(TEMP_FILE_NAME) as FILE: 
    content=FILE.read().splitlines()
    content=[ item.split(':') for item in content]
    startpages=[int(item[0]) for item in content]
    names=[item[1].replace(' ','_') for item in content]


ranges=[str(first)+'-'+str(last-1) for first,last in zip(startpages[:-1],startpages[1:])]
ranges.append(str(startpages[-1])+'-')

for name,page_range in zip(names,ranges):
    os.system("pdfjam --landscape it3pr.pdf {} -o it3pr_{}.pdf".format(page_range,name))
