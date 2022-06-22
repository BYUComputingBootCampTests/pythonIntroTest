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
rm HowToUse.md
rm -rf ./.script
rm -rf ./.media