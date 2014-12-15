# Ben's Dotfiles

These are the configuration files I use to manage my personal setup across the
various systems I use.

## Install

My dotfiles are managed using [rcm](https://github.com/thoughtbot/rcm).

To install simply run:

```sh
rcup rcrc
rcup
```

This will symlink the appropriate files. It installs oh-my-zsh if it is not
currently installed (in ~/.oh-my-zsh) and also assumes Sublime Text 3 is
installed.