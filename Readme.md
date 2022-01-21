# KimiA Dotfiles #

These are my configuration files for• various OS X and Linux hosts I use daily. For some applications there are general configs (either at the top-level directory or as a tag) and then host-dependent parts that are included from general config (for example see tag-zsh and zshrc.local under host).

## Getting started ##

1. Clone this repo: `git clone git@github.com:kimmoahokas/dotfiles.git ~/.dotfiles`
2. Install [zgenom](https://github.com/jandamm/zgenom): `git clone https://github.com/jandamm/zgenom.git "${HOME}/.zgenom"`
3. Install [rcm][rcm]:
    * On OS X first install [Homebrew][homebrew], then [rcm][rcm]:

        ```bash
        ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
        brew tap thoughtbot/formulae
        brew install rcm
        ```

    * On other platforms see the home page
4. Link the global and host-dependent dotfiles: `rcup -v -x Readme.md [-B hostname]`
5. If this is new host customize the .rcrc file and add the host-specific config: `mkrc -v -o .rcrc`
6. Link plugin dotfiles (based on the rcrc): `rcup -v`
7. Change shell to zsh: `chsh -s /bin/zsh`
8. Logout and log in again for all changes to take effect

## Tips ##

* To add some config file to tag: `mkrc -t <tag_name> <file_name>`
* To add host-specific config file: `mkrc -o <file_name>`
* To list current config files: `lsrc -v`
* Config folders work too
* for more info see [rcm(7)][rcm-man]

## Visual studio code settings ##

Visual studio code settings can be synced using [Settings sync][settings-sync] plugin.

[homebrew]: http://brew.sh/ "Homebrew"
[rcm]: http://robots.thoughtbot.com/rcm-for-rc-files-in-dotfiles-repos "rcm"
[rcm-man]: http://thoughtbot.github.io/rcm/rcm.7.html "rcm man page"
[settings-sync]: https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync "Settings Sync"
