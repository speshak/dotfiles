# [chezmoi](https://www.chezmoi.io/) Dotfiles Management


## Install

* [Install](https://www.chezmoi.io/docs/install/) the `chezmoi` binary
* `chezmoi init https://github.com/speshak/dotfiles.git`
* `chezmoi apply`

## Environments

During `init` you will be asked about the machine's environment.  Currently there are two recognized values:

* `work`
* `home`

## Identity Crisis

What if you're not [speshak](https://github.com/speshak)?  Well in that case,
you'll probably want to fork this repo and at least change
[.chezmoi.toml.tmpl](.chezmoi.toml.tmpl)
