#!/bin/bash
##################################################
#      Filename: auto_make_index.sh
#        Author: Zhaohui Mei<mzh.whut@gmail.com>
#   Description:      
#   Create Time: 2021-04-21 20:45:54
# Last Modified: 2021-04-21 20:49:25
##################################################


cat > index.html << EOF
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
    <h1>images bed</h1>
EOF
ls img|awk '{print "    <img src=\"img/"$0"\"><br><br><hr>"}' >> index.html
cat >> index.html << EOF
</body>
</html>
EOF

