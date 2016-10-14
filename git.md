
## Create your first Git repo using command line :
###Below command will create repo in Github:-
####Replace `<username>` with your github username and `<repo>` with repo name to be created.
```
curl -u 'username' https://api.github.com/user/repos -d '{"name":"<repo>"}'
```
###Once created clone repo in your local:-
```
git clone https://github.com/<username>/<repo>.git
```
####NOTE: In case git client is not installed,kindly installed.

###Below directory will be downloaded after Git clone :
```
cd scripts/
vim test 
```
###Make following changes under .git/config:
####Replace `<username>` with your github username
```
vim .git/config
[core]
        repositoryformatversion = 0
        filemode = true
        bare = false
        logallrefupdates = true
[remote "origin"]
        fetch = +refs/heads/*:refs/remotes/origin/*
        url = https://<username>@github.com/<username>/<repo>.git
[branch "master"]
        remote = origin
        merge = refs/heads/master
```
####Save file and exit

####Add Your file (* will add all content)		
```
git add *
```
####Check Status
```
git status
```
###Commit your changes:
```
git commit -m "Initializing script repo"  
```
```
git push -u origin master
```
####NOTE: `git push -u origin master` is used only at initial state.After that "git push" command can be used.

###Login into Github account and check script has been uploaded or not.
