t3org-cucumber
==============

Cucumber Test for typo3.org

Installation
=============

Additional steps to run the cucumber tests on the official t3org vagrant box

Get the vagrant box from: git://git.typo3.org/Teams/Server/Vagrant/Typo3Org.git

After the vagrant box is up and running:

1. Install RVM (Ruby Version Manager): https://rvm.io/rvm/install/

> \curl -L https://get.rvm.io | bash -s stable --ruby

This will install ruby and more

2. Install required packages

> sudo aptitude install libxml2 build-essential ruby1.9.1-dev libxslt1-dev g++ postgresql libpq-dev

> sudo aptitude install qt4-qmake

> sudo apt-get install libqt4-dev

> sudo aptitude install xvfb

3. Copy the Gemfile from this package

4. Install required gems that are in the Gemfile by using
> bundle install

in the directory where the Gemfile is located

Usage cucumber
===============

If a scenario is still not ready to be tested, add the following in the first line of the scenario:

> Given PENDING: <add a message here>

# add oh-my-zsh if you want
sudo apt-get install zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
