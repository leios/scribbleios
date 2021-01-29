# checkout to the master branch
git checkout master

# pull the latest updates
git rebase development

# build honkit
npx honkit build

# copy the static site files into the current directory.
cp -R _book/* .

# remove 'node_modules' and '_book' directory
git clean -fx node_modules
git clean -fx _book

# add all files
git add .

# commit
git commit -a -m $1

# push to the origin
git push origin master

# checkout to the master branch
git checkout development
