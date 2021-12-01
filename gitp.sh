#!/bin/sh
#Hellogitフォルダ直下にこのファイルを設置し、./gitp.sh [変更したいファイル名] [コメント(""必要なので注意)]　で実行可能
git add $1
git commit -m "$2"
git push
