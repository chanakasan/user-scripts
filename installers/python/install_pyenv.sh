git clone https://github.com/pyenv/pyenv.git ~/.pyenv

bashrc=$HOME/.bashrc

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> $bashrc
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> $bashrc
echo 'eval "$(pyenv init -)"' >> $bashrc

exec "$SHELL"
pyenv --version
