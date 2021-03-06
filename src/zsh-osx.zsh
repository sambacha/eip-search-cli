#!/usr/bin/env zsh
function eip () {
  (cat $PWD/eip-index) |
    fzf --prompt 'Ethereum Improvement Proposal (EIP) >' \
      --preview='echo {}' --preview-window=down:3:wrap \
      --layout=reverse --height=80% | \
      awk '{ print $1 }'  | \
      xargs -I '{}' open -a "Google Chrome" "https://github.com/ethereum/EIPs/blob/master/EIPS/eip-{}.md" > /dev/null
}
