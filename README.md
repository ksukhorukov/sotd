# SOTD

Sherevo Of The Day

## DISCLAIMER

This is [MOTD Service](https://www.reddit.com/r/NixOS/comments/5xd91g/message_of_the_day_motd_in_nixos/) analoge 

With all respect for all old people....

## HOW IT LOOKS LIKE

![screen](https://github.com/ksukhorukov/sotd/blob/master/images/example.png?raw=true)

## REQUIREMENTS

 - Windows, *nix or BSD based OS
 - Ruby 3.x.x or higher
   

## HOW TO INSTALL RUBY? [DALBICH FAQ GUIDE]

* [Windows Installer](https://rubyinstaller.org)
* [Ruby Source Code](https://www.ruby-lang.org/en/downloads/)
* [Ruby Version Manager](https://rvm.io)


## INSTALL

```
$ ./installer
```

## INTEGRATION OF SOTD SERVICE WITH MOTD \*nix DAEMON

1) Install SOTD and try to execute 'sotd' binary manually. If it works well then just delete this line from your RC file, e.g. '.bashrc':

```
export PATH="$PATH:/home/users/sotd/"
```

It should look like something aforementioned but home directory of cause may be various. Just delete it and then 
relogin yourself or type the following command:

```
`source ~/.bashrc`
```


2) There is another repo that you have to clone: [https://github.com/ksukhorukov/motd.configs](https://github.com/ksukhorukov/motd.configs)

Firstly go to the folder with MOTD configs and clone the repository:

```
cd /etc/update-motd.d
git clone https://github.com/ksukhorukov/motd.configs.git
```

Then terminate current SSH session and relogin again or just exit from your current terminal session and open it again.

You will see somethings like this:

![sotd integration with motd](https://github.com/ksukhorukov/sotd/blob/master/images/motd_integration.png?raw=true)

Actually it's working right now. But optionally you can remove 'sotd' from your shell profile file, e.g. .bashrc.
It will prevents 'sotd' from autorun from login. For instance you have this line in your profile file that must be
deleted:

```
export PATH="$PATH:/Users/user/workspace/sotd/"
```



## USAGE

You can see so called «sherevo» every time when you launch terminal, but
you can execute the binary directly:

```
$ sotd

PIZDEC SHEREVO!!1
```

## LICENSE

#### [GNU General Public License v3.0](https://www.gnu.org/licenses/gpl-3.0.txt)

## [EOF]


