res="commit_res.txt"
rm $res
rm -rf .girt
rm a 

echo "line 1" > a 
./girt-commit -m 'test'

./girt-init

# commit before girt-add
./girt-commit -m 'test commit' >> $res

./girt-add a 
./girt-commit -m 'test commit' >> $res

# correct cases
./girt-commit -a -m 'test commit' > $res
./girt-commit -m 'test commit' >> $res

# special cases                             # give "usage: girt-commit [-a] -m commit-message"
./girt-commit -m 'test commit' -a >> $res   # -a should be first
./girt-commit -a -m >> $res                 # commit message should not be empty
./girt-commit -a 'test commit' -m >> $res   # commit message should not be empty
./girt-commit -a -m -d >> $res              # commit message should not be start with '-'
./girt-commit -m -d >> $res                 # should not contain other options
./girt-commit -a -d -m >> $res              # should not contain other options

