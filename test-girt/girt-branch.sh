rm -rf .girt
clear
# usage: girt-branch [-d] <branch>
2041 girt-init
# girt-branch: error: this command can not be run until after the first commit
touch a
2041 girt-add a
2041 girt-commit -m 'a'

2041 girt-branch
# master
2041 girt-branch testbranch

2041 girt-branch
# master
# testbranch

2041 girt-branch -d testbranch
# Deleted branch 'testbranch'

2041 girt-branch -d ccc
# girt-branch: error: branch 'ccc' doesn't exist

2041 girt-branch -d master
# girt-branch: error: can not delete branch 'master'

2041 girt-branch master
# girt-branch: error: branch 'master' already exists


##### delete current branch #####
######### not required ##########
# 2041 girt-branch current
# 2041 girt-checkout current
# 2041 girt-branch -d current

# girt-branch: error: internal error error: Cannot delete branch 'current' checked out at '/tmp_amd/reed/export/reed/4/z5288155/COMP9044/ass1/test-girt/.girt'

# You are not required to detect this error or produce this error message.