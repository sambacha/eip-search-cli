#!/usr/bin/env zsh
# make sure to adjust path to eip-index
function eip () {
  (cat ~/.config/zsh/functions/eip-index) |
    fzf --prompt 'Ethereum Improvement Proposal (EIP) >' \
      --preview='echo {}' --preview-window=down,3,wrap \
      --layout=reverse --height=80% | \
      awk '{ print $1 }'  | \
      xargs -I '{}' brave "https://github.com/ethereum/EIPs/blob/master/EIPS/eip-{}.md" > /dev/null
}

#vi: ft=zsh
