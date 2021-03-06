```
     _       _    __ _ _
  __| | ___ | |_ / _(_) | ___  ___
 / _` |/ _ \| __| |_| | |/ _ \/ __|
| (_| | (_) | |_|  _| | |  __/\__ \
 \__,_|\___/ \__|_| |_|_|\___||___/

```
# dotfiles

This repository contains my personal dotfiles. They are stored here for convenience so that I may quickly access them on new machines or new installs.

## Branches
- `master`: README
- `linux`: Linux
- `macos`: macOS (Intel)
- `macos-arm` : macOS (Apple Silicon)

# Installation

Clone and install the dotfiles repo:
```
$ echo 'alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git --work-tree=$HOME"' >> $HOME/.zshrc
$ source ~/.zshrc
$ echo ".dotfiles.git" >> .gitignore
$ git clone --bare https://github.com/xcession/dotfiles.git $HOME/.dotfiles.git
$ dotfiles checkout
$ dotfiles config --local status.showUntrackedFiles no
```

For macOS (Intel) dotfiles:
```
$ dotfiles checkout macos
```

For macOS (Apple Silicon) dotfiles:
```
$ dotfiles checkout macos-arm
```

For Linux dotfiles:
```
$ dotfiles checkout linux
```

# License

MIT License

Copyright (c) 2020 Tharawut Paripaiboon
https://reverievisuals.com
https://github.com/xcession

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
