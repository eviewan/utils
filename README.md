# Note to self:
<br/>


### File manipulation
- [FASTA](https://gist.github.com/eviewan/4dfda21739fe2a7b3f35d90d120316c2#file-fasta-sh)
- [VCF](https://gist.github.com/eviewan/37ac21fac07276209e6ec9a741046291)



### Docker related
- Docker file: use `-O` tag to set file name (sometimes name error happens <br />
    [example in hifiasm Dockerfile](https://gist.github.com/eviewan/6c9e4b1ba2a1cddbd8d9b1c2a3031a3e)


### Git
- permanantly delete pushed commits in remote: <br />
    1) delete in local:  `git reset --hard {commit ID}`
    2) `git push --force`
- merge: 
    1) git checkout main <br />
       git pull <br />
       git checkout \<branch> <br />
       git merge main (->> `git merge feature main`)

- [merging vs rebasing](https://www.atlassian.com/git/tutorials/merging-vs-rebasing#the-golden-rule-of-rebasing)
    - both for incorporating new commits into feature branch



### Pandas 

 - change col name: <br />
    `df.rename(columns = {'oldName1':'newName1', 'oldName2':'newName2})`
    
 - [subset with multiple conditions](https://gist.github.com/eviewan/2f0f296eb11cf19a5d04764e1c755d0b) 
 - not NA: `df[df[col].notna()]`



### Numpy
- [stride tricks](https://towardsdatascience.com/advanced-numpy-master-stride-tricks-with-25-illustrated-exercises-923a9393ab20)


### Plotting
- [Matplotlib legend handling](https://gist.github.com/eviewan/c2948301e90a06ce9b61e0ff600bc739)