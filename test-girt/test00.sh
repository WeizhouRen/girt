clear
rm -rf .girt
rm a 

echo "line 1" > a 

echo "|---------- Commit before init -----------|"
2041 girt-commit -m 'test'
2041 girt-init

echo "|---------- Commit before add ------------|"
2041 girt-commit -m 'test commit' 

echo "|---------- Commit after add -------------|"
2041 girt-add a 
2041 girt-commit -m 'test commit' 

echo "|---------- Commit without changes -------|"
2041 girt-commit -m 'test commit' 

echo "|---------- Add new commit ---------------|"
echo "line 2" >> a                          # update a
echo "line 1" > b  
2041 girt-commit -a -m 'test commit'    # update a in index with content of a in root 
cat a
cat .girt/master/index/a 


echo "|---------- Special cases -----------------|"              
# give "usage: girt-commit [-a] -m commit-message"
# 2041 girt-commit -m 'test commit' -a    # -a should be first
2041 girt-commit -a -m                  # commit message should not be empty
2041 girt-commit -a 'test commit' -m    # commit message should not be empty
2041 girt-commit -a -m -d               # commit message should not be start with '-'
2041 girt-commit -m -d                  # should not contain other options
2041 girt-commit -a -d -m               # should not contain other options

