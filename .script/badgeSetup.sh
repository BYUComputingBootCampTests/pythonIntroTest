#!/bin/sh

git clone git@github.com:BYUComputingBootCampTests/$1Test.git
cd $1Test
git clone git@github.com:BYUComputingBootCampTests/modelTest.git
cp -r ./modelTest/* .
cp -r ./modelTest/.cbc .
cp -r ./modelTest/.github .
cp ./modelTest/.gitignore .
rm -rf ./modelTest

sed -i "s/{model}/$1/g" ./.cbc/addLabel.js
sed -i "s/{model}/$1/g" ./.cbc/badgeAPI.js
sed -i "s/{model}/$1/g" ./.cbc/getRepoInfo.js
sed -i "s/{model}/$1/g" ./.cbc/makeComment.js
sed -i "s/{model}/$1/g" ./.cbc/removeAllLabels.js
sed -i "s/{model}/$1/g" ./.cbc/triggerRunForAllPRs.js
sed -i "s/{Model}/$2/g" ./.github/workflows/modelTest.yml
sed -i "s/{Model}/$2/g" README.md
sed -i "s/{model}/$1/g" README.md

mv ./.github/workflows/modelTest.yml  ./.github/workflows/$1Test.yml

git add *
git add .cbc
git add .github
git add .gitignore

git commit -m "Initial commit"
git branch -M main
git push https://BYUComputingBootcampTests@github.com/BYUComputingBootCampTests/$1Test.git

