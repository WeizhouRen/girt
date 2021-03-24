
rm -rf .girt
rm a
clear

2041 girt-init 


echo "test" > a
2041 girt-add a
2041 girt-commit -m 'commit'

echo "|-------- Same file in three directories --------|" 
2041 girt-rm a

echo "|-------- Current and Index are same, but diff from Repo ------------|" 
echo "test 2" > a
2041 girt-add a 
2041 girt-rm a # error given
echo "|-------- Same in index and repo, diff from cur ------------|" 
2041 girt-commit -m 'test 2'
echo "test 3" >> a
2041 girt-rm a 

echo "|-------- Same in cur and repo, diff from index ------------|" 

echo "test b" > b
2041 girt-add b 
2041 girt-commit -m 'bbbb'
echo "test bb" >> b 
2041 girt-add b 
rm b 
echo "test b" > b
2041 girt-rm b 

echo "|-------- Diff file in three directories --------|" 
echo "test 3" >> a 
2041 girt-rm a # error given


2041 girt-add a 

2041 girt-rm a 
2041 girt-commit -m 'test'
2041 girt-rm a
# echo "|------------- [root, ---, ----] ----------------------|"
# 2041 girt-rm a
# echo "|------------- [root, idx, ----] ----------------------|"
# 2041 girt-add a
# 2041 girt-rm a

# echo "|------------- [root, idx, repo] --------------------|"
# 2041 girt-commit -m 'test'
# 2041 girt-rm a
# echo "|------------- [----, ---, repo] --------------------|"
# 2041 girt-rm a

# echo "|------------- [----, idx, repo] --------------------|"

# echo "|------------- [----, idx, ----] --------------------|"
# echo "test" > a 
# 2041 girt-add a 
# rm a 
# 2041 girt-rm a
# echo "|------------- [----, ---, ----] --------------------|"
# 2041 girt-rm --cached a


# echo "|------------- [root, ---, repo] --------------------|"


# rm a
# 2041 girt-rm a

# 2041 girt-commit -m 'test'
# 2041 girt-rm a
# echo "|------------- Special Input ---------------------|"

# echo "|------------- Correct Input ---------------------|"
