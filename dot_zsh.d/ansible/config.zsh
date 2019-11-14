export ANSIBLE_NOCOWS=1
export ANSIBLE_VAULT_PASSWORD_FILE=${DOTFILES}/mdp.helpers/upstream/bin/lpass-vault

# Fix for Python sigabort errors on macos 10.13
export no_proxy='*'
