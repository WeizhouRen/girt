res="commit_res.txt"
rm $res
rm -rf .girt
rm a

echo "line 1" > a
2041 girt-commit -m 'test'

2041 girt-init 

# commit before girt-add
2041 girt-commit -m 'test'

2041 girt-add a 
2041 girt-commit -m 'test'

echo "test 2" >> a
2041 girt-add a 
2041 girt-commit -a -m 'test'
2041 girt-commit -d -m 'test'



