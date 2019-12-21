# nguyentodo' dotfiles
[![Build Status][tb]][tp]
[![Powered by Antibody][ab]][ap]

> Config files for ZSH, Go, Python, Node, Editors, Terminals and more.

![screenshot][scrn]

[ap]: https://github.com/getantibody/antibody
[ab]: https://img.shields.io/badge/powered%20by-antibody-blue.svg?style=flat-square
[tb]: https://img.shields.io/travis/com/nguyentodo/dotfiles?style=flat-square
[tp]: https://travis-ci.com/nguyentodo/dotfiles
[scrn]: /screenshot.png

## Installation

### Dependencies

First, make sure you have all those things installed:

- `git`: to clone the repo
- `curl`: to download some stuff
- `tar`: to extract downloaded stuff
- `zsh`: to actually run the dotfiles
- `sudo`: some configs may need that

### Install

Then, run these steps:

```console
$ git clone https://github.com/nguyentodo/dotfiles.git ~/.dotfiles
$ cd ~/.dotfiles
$ ./script/bootstrap
$ zsh
```

### Recommended Software

For macOS, I recommend:

- iTerm: a better terminal emulator.

### Themes and fonts being used

Theme is **[Dracula](https://draculatheme.com)** and the font is
**Inconsolata for Powerline**.

## Contributing

Feel free to contribute. Pull requests will be automatically
checked/linted with [Shellcheck](https://github.com/koalaman/shellcheck)
and [shfmt](https://github.com/mvdan/sh).
