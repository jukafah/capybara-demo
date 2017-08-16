# cucumber-capybara


**Resources**
- [GitHub](https://github.com/teamcapybara/capybara)
- [API](http://www.rubydoc.info/github/teamcapybara/capybara/master/Capybara)
- [Google Group](https://groups.google.com/forum/#!forum/ruby-capybara)

#### Setup - OS X

#### Install Homebrew

In terminal,
```
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Then,

```
$ brew doctor
Your system is ready to brew
```

### Install Git

Execute

```
$ brew install git
```

Then:

```
$ git --version
git version 2.3.3
```
 
### Install RVM

```
$ curl -L https://get.rvm.io | bash -s stable --auto-dotfiles --autolibs=enable --ruby
```

Once done, quit, relaunch Terminal, and then execute:

```
$ rvm -v
rvm 1.26.10 (latest) by Wayne E. Seguin <wayneeseguin@gmail.com>, Michal Papis <mpapis@gmail.com> [https://rvm.io/]
$ ruby -v
ruby 2.1.5p273 (2014-11-13 revision 48405) [x86_64-darwin14.0]
```

 
### Install Ruby 2.3.0

```
$ rvm install 2.3.0
```

After installation, execute command to use Ruby 2.3.0 as default in all Terminal instances:

```
$ rvm use 2.3.0 --default
$ ruby -v
ruby 2.3.0p0 (2015-12-25 revision 53290) [x86_64-darwin15]
```

### Install gems

```
$ bundle install
```

Execute example tests
```
$ cucumber -p web
```