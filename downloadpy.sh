#!/bin/sh
#Pythonを使う上で重要なコマンド集(macのbrew導入からpyenv,anaconda,OpenCV,MeCab,TensorFlow,Kerasのダウンロード)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update
brew install pyenv
brew install pyenv_virtualenv
echo 'eval "$(pyenv init -)"' >> ~/.bash_profile
source ~/.bash_profile
pyenv install --list
pyenv install anaconda3-5.0.0
pyenv global anaconda3-5.0.0
conda create -n py35 python=3.5
pyenv global anaconda3-5.0.0/envs/py35
conda update anaconda
conda init bash
conda activate py35
pip install opencv-python
brew install mecab
brew install mevab-ipadic
pip install mecab-python3
pip install --upgrade tensorflow=1.5.0
pip install --upgrade keras=2.1.4
