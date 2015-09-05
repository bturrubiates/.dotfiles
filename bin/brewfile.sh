#!/bin/zsh

brew tap homebrew/versions
brew tap staticfloat/julia

formulas=(zsh-syntax-highlighting leiningen elixir ghc cabal-install python3  \
          clojurescript rust julia rcm reattach-to-user-namespace ssh-copy-id \
          go tmux tree mercurial oniguruma cscope ctags clang-format todo-txt \
          pandoc libtool autoconf automake the_silver_searcher mosh)

for formula in "${formulas[@]}"
do
  brew install "$formula"
done
