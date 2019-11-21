#!/usr/bin/env zsh
find_vaults ()
{
  \grep -lr ANSIBLE_VAULT *
}
