
rm -rf .girt
rm a
echo "test" > a
clear
echo "|------------- Before Initialization -------------|"
2041 girt-show :a

2041 girt-init 

echo "|------------- Before Add  -----------------------|"
2041 girt-show
2041 girt-show 0-a
2041 girt-show :a   # girt-show: error: 'a' not found in index
2041 girt-add a


echo "|------------- Before Commit ---------------------|"
2041 girt-show :a 
2041 girt-show 0:a

echo "|-------------------------------------------------|"
2041 girt-commit -m 'First commit'

echo "|------------- Special Input ---------------------|"
2041 girt-show a:a a
2041 girt-show a:a
2041 girt-show 0-a
2041 girt-show 0:a:b

echo "|------------- Correct Input ---------------------|"
2041 girt-show :a 
2041 girt-show 0:a
2041 girt-show 1:a
2041 girt-show b
2041 girt-show 0:b


# girt-show: error: girt repository directory .girt not found
# Initialized empty girt repository in .girt
# girt-show: error: 'a' not found in index
# Committed as commit 0
# test
# test
# girt-show: error: unknown commit '1'
# girt-show: error: invalid object b
