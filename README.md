# capybara-demo


**Resources**
- RubyDoc: http://www.rubydoc.info/github/jnicklas/capybara
- Google Group: https://groups.google.com/forum/#!forum/ruby-capybara

#### Setup - Mac

### Install Homebrew

Still in Terminal, execute the following commands:
```
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

After installation:

```
$ brew doctor
Your system is ready to brew
```
**Note: You may get soft warnings on installation. The warning should be descriptive enough on whether or not action needs to be taken.**

### Install Git

Still in terminal, execute:

```
$ brew install git
```

After installation, execute:

```
$ git --version
git version 2.3.3
```

### Install RVM

```
$ curl -L https://get.rvm.io | bash -s stable --auto-dotfiles --autolibs=enable --ruby
```
*RVM installation may take a few minutes.*

Once done, quit, relaunch Terminal, and then execute:

```
$ rvm -v
rvm 1.26.10 (latest) by Wayne E. Seguin <wayneeseguin@gmail.com>, Michal Papis <mpapis@gmail.com> [https://rvm.io/]
$ ruby -v
ruby 2.1.5p273 (2014-11-13 revision 48405) [x86_64-darwin14.0]
$ brew doctor
If no issues have occurred during setup, the message "Your system is ready to brew" is displayed.
```
*note: your version of ruby will change with the next few steps.

### Install Ruby 2.1.5

```
$ rvm install 2.1.5
```
*note: installation may take some time*

After installation, execute command to use Ruby 2.1.5 as default in all Terminal instances:

```
$ rvm use 2.1.5 --default
$ ruby -v
ruby 2.1.5p273 (2014-11-13 revision 48405) [x86_64-darwin14.0]
```

### Install Capybara

```
$ gem install capybara
```
*note: this may take a few minutes*

Check version (*you will have many other gems*):

```
$ gem list
capybara (2.4.4)
```

### Install Cucumber
```
$ gem install cucumber
```
*note: This may take a few minutes*

Check version:
```
$ cucumber --version
1.3.20
```

Install a driver:
```
$ gem install selenium-webdriver
```
#### Setup - Windows

### Install Git

Click [here](https://git-scm.com/download/win) to download the latest release of Git for Windows.
Run the installer once the download completes.

Accept all the defaults provided, but change
```
Use Git from Git Bash only
```
to
```
Use Git from the Windows Command Prompt
```
This will allow Git access to both shells; use whichever you are more comfortable with.

### Install Ruby 2.1.8

Note: At time of this writing, 2.1.8 was the stable release on that branch.

Click [here](http://dl.bintray.com/oneclick/rubyinstaller/rubyinstaller-2.1.8-x64.exe) to download Ruby 2.1.8 x64.
For 32-bit, click [here](http://dl.bintray.com/oneclick/rubyinstaller/rubyinstaller-2.1.8.exe) instead.

Run the installer after the download completes.

Accept defaults, but be sure to check the boxes for
- `Add Ruby executables to your PATH`
- `Associate .rb and .rbw files with this Ruby installation`.

You may wish to also install the Ruby DevKit.
- [64-bit](http://dl.bintray.com/oneclick/rubyinstaller/DevKit-mingw64-64-4.7.2-20130224-1432-sfx.exe)
- [32-bit](http://dl.bintray.com/oneclick/rubyinstaller/DevKit-mingw64-32-4.7.2-20130224-1151-sfx.exe)

The DevKit gives access to Make and build utilities, so that a Windows user can compile & build from source code.

### Install Ruby gems

Execute the command
```
C:\Users\you>: gem install capybara cucumber selenium-webdriver
```
*note: This may take a few minutes*


### @todo:

More!  
- linux setup
- API tutorial
- gherkin tutorial
- skeleton framework build w/ non dry cucumber
- basic end to end tests (manual to automated)

And More!!  
- POP design framework build w/ dry cucumber (*recommended*)
- upload examples
