# KimiA Dotfiles #

These are my configuration files for• various OS X and Linux hosts I use daily. For some applications there are general confgis (either at the top-level directory or as a tag) and then host-dependent parts that are included from general config (for example see tag-zsh and zshrc.local under host).

## Getting started ##

1. Clone this repo: `git clone git@github.com:mr-kimia/dotfiles.git ~/.dotfiles`
2. Install [rcm][]:
    * On OS X first install [homebrew][], then [rcm][]:

            ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
            brew tap thoughtbot/formulae
            brew install rcm

    * On other platforms see the home page
3. Link the global and host-dependent dotfiles: `rcup -v -x Readme.md`
4. If this is new host customize the .rcrc file and add the host-specific config: `mkrc -v -o .rcrc`
5. Link plugin dotfiles (based on the rcrc): `rcup -v`

[homebrew]: http://brew.sh/ "Homebrew"
[rcm]: http://robots.thoughtbot.com/rcm-for-rc-files-in-dotfiles-repos "rcm"

