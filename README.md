# initme-and-push

The purpose if this script is to 
  - git init 
  - git add
  - set a remote origin 
  - create a git repository
  - then push the code to the new repository
  
  and continue doing this a bunch of time for as many project folders 
  listed in the names file.
  
  The usfullness of this is when you have a whole bunch of old projects that you want to push up on to your GitHub account and don't want to painstakingly add them all manually.  
  
The file must be ran in the parent directory to your project folders.

To use this the usage is 
```bash
$ cat names | initMeAndPush.sh
```
This will pipe for standard input, and will read the input file line by line.
The input file should contain teh folders you want to initialise for Git.
The folder names will be used for the creation of the Git Repository names also.

example repository names file:
```bash
line | contents
-------------------------
1    |jokebot
2    |the-firm-sample-database
3    |word-game
4    |memgraph
5    |pricewatch-games-ps4
6    |twitter-search-read
7    |
-------------------------
```
Note: There must be a new line at the end of the file.
