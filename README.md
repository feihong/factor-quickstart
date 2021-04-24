# Feihong's Factor Quickstart

## Installation

- Download latest Mac binary: https://downloads.factorcode.org/releases/0.98/factor-macosx-x86-64-0.98.dmg
- Copy `factor` directory to `/usr/local/opt/factor`
- Copy the following to `~/.bash_profile`:

      alias factor='/usr/local/opt/factor/factor'
      alias factorui='open /usr/local/opt/factor/Factor.app'

- Open Terminal and run `source ~/.bash_profile`

Note: There seems to be a bug in the Factor UI where it appears blank until you resize the window.

## Commands

Download this repo

    git clone https://github.com/feihong/factor-quickstart

Run Factor command line REPL

    factor

Run Factor UI

    factorui

Run script source file

    factor hello.factor

## Listener

See all vocabulary roots

    vocab-roots get .

Add path to vocabulary root

    add-vocab-root "/Users/bob/work/factor-quickstart"

## Links

- [Factor/Learning](https://concatenative.org/wiki/view/Factor/Learning)
