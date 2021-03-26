clear
rm -rf .girt
rm a 

echo "line 1" > a 

echo "|---------- Commit before init -----------|"
./girt-commit -m 'test'
./girt-init

echo "|---------- Commit before add ------------|"
./girt-commit -m 'test commit' 

echo "|---------- Commit after add -------------|"
./girt-add a 
./girt-commit -m 'test commit' 

echo "|---------- Commit without changes -------|"
./girt-commit -m 'test commit' 

echo "|---------- Add new commit ---------------|"
echo "line 2" >> a                          # update a
echo "line 1" > b  
./girt-commit -a -m 'test commit'    # update a in index with content of a in root 
cat a
cat .girt/master/index/a 


echo "|---------- Special cases -----------------|"              
# give "usage: girt-commit [-a] -m commit-message"
./girt-commit -m 'test commit' -a    # -a should be first
./girt-commit -a -m                  # commit message should not be empty
./girt-commit -a 'test commit' -m    # commit message should not be empty
./girt-commit -a -m -d               # commit message should not be start with '-'
./girt-commit -m -d                  # should not contain other options
./girt-commit -a -d -m               # should not contain other options

