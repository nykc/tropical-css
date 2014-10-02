#!/bin/sh

cd ~/Sites
printf "What would you like to name your new Tropical-CSS root directory (eg., mynewdir)? "

read NEWDIR
echo 'creating root directory...'
mkdir $NEWDIR
cd $NEWDIR
compass create .

echo 'making additional directories...'
mkdir ~/Sites/$NEWDIR/assets/
cd ~/Sites/$NEWDIR/assets
mkdir -p js/ images/ css/
cd ~/Sites/$NEWDIR
rm -rf stylesheets/
mv sass/ assets/
cd ~/Sites/$NEWDIR/assets/sass/
mkdir base/ components/ devices/ helpers/ modules/ pages/ vendor/
mv ie.scss print.scss screen.scss devices/

cd ~/Sites/tropical-css
echo 'copying files to your new directory...'
cp config.rb README.md index.html .gitignore sass-overview.md ~/Sites/$NEWDIR

cd ~/Sites/tropical-css/assets/sass/
cp main.scss ~/Sites/$NEWDIR/assets/sass
cd base/
cp _tropical.scss ~/Sites/$NEWDIR/assets/sass/base/

echo 'compile sass files...'
cd ~/Sites/$NEWDIR
compass compile

echo 'initialize empty git repository...'
git init
git add .
git commit -m "initial commit"
git checkout -b development master

echo 'setup complete!'
