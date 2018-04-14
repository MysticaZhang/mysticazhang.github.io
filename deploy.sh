{\rtf1\ansi\ansicpg936\cocoartf1561
{\fonttbl\f0\fmodern\fcharset0 Courier;\f1\fmodern\fcharset0 Courier-Bold;}
{\colortbl;\red255\green255\blue255;\red61\green107\blue189;\red1\green18\blue44;\red4\green51\blue155;
\red229\green234\blue240;\red96\green109\blue126;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c29804\c50588\c78824;\cssrgb\c0\c9804\c22745;\cssrgb\c0\c28235\c67059;
\cssrgb\c91765\c93333\c95294;\cssrgb\c45098\c50588\c56863;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\sl280\partightenfactor0

\f0\fs24 \cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 #!/bin/bash\
\pard\pardeftab720\sl320\partightenfactor0

\fs28 \cf3 \strokec3 \
\pard\pardeftab720\sl280\partightenfactor0

\fs24 \cf4 \strokec4 echo
\fs28 \cf3 \cb5 \strokec3  -e 
\fs24 \cf4 \cb1 \strokec4 "\\033[0;32mDeploying updates to GitHub...\\033[0m"
\fs28 \cf3 \strokec3 \
\pard\pardeftab720\sl320\partightenfactor0
\cf3 \
\pard\pardeftab720\sl280\partightenfactor0

\fs24 \cf6 \strokec6 # Build the project.
\fs28 \cf3 \strokec3 \
\pard\pardeftab720\sl320\partightenfactor0
\cf3 \cb5 hugo 
\fs24 \cf6 \cb1 \strokec6 # if using a theme, replace with `hugo -t <YOURTHEME>`
\fs28 \cf3 \strokec3 \
\
\pard\pardeftab720\sl280\partightenfactor0

\fs24 \cf6 \strokec6 # Go To Public folder
\fs28 \cf3 \strokec3 \
\pard\pardeftab720\sl280\partightenfactor0

\fs24 \cf4 \strokec4 cd
\fs28 \cf3 \cb5 \strokec3  public\cb1 \
\pard\pardeftab720\sl280\partightenfactor0

\fs24 \cf6 \strokec6 # Add changes to git.
\fs28 \cf3 \strokec3 \
\pard\pardeftab720\sl320\partightenfactor0
\cf3 \cb5 git add .\cb1 \
\
\pard\pardeftab720\sl280\partightenfactor0

\fs24 \cf6 \strokec6 # Commit changes.
\fs28 \cf3 \strokec3 \
\pard\pardeftab720\sl320\partightenfactor0
\cf3 \cb5 msg=
\fs24 \cf4 \cb1 \strokec4 "rebuilding site `date`"
\fs28 \cf3 \strokec3 \
\pard\pardeftab720\sl280\partightenfactor0

\f1\b\fs24 \cf7 \strokec7 if
\f0\b0\fs28 \cf3 \cb5 \strokec3  [ 
\fs24 \cf2 \cb1 \strokec2 $#
\fs28 \cf3 \cb5 \strokec3  -eq 1 ]\cb1 \
\pard\pardeftab720\sl320\partightenfactor0
\cf3 \cb5  \'a0
\f1\b\fs24 \cf7 \cb1 \strokec7 then
\f0\b0\fs28 \cf3 \cb5 \strokec3  msg=
\fs24 \cf4 \cb1 \strokec4 "\cf2 \strokec2 $1\cf4 \strokec4 "
\fs28 \cf3 \strokec3 \
\pard\pardeftab720\sl280\partightenfactor0

\f1\b\fs24 \cf7 \strokec7 fi
\f0\b0\fs28 \cf3 \strokec3 \
\pard\pardeftab720\sl320\partightenfactor0
\cf3 \cb5 git commit -m 
\fs24 \cf4 \cb1 \strokec4 "\cf2 \strokec2 $msg\cf4 \strokec4 "
\fs28 \cf3 \strokec3 \
\
\pard\pardeftab720\sl280\partightenfactor0

\fs24 \cf6 \strokec6 # Push source and build repos.
\fs28 \cf3 \strokec3 \
\pard\pardeftab720\sl320\partightenfactor0
\cf3 \cb5 git push origin master\cb1 \
\
\pard\pardeftab720\sl280\partightenfactor0

\fs24 \cf6 \strokec6 # Come Back up to the Project Root
\fs28 \cf3 \strokec3 \
\pard\pardeftab720\sl280\partightenfactor0

\fs24 \cf4 \strokec4 cd
\fs28 \cf3 \cb5 \strokec3  ..}