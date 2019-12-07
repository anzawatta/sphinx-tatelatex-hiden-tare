#!/bin/sh
# sphinx.tex、sphinx.toc、sphinx.dviの各ファイル名は適宜変更
FILE_NAME=test-project
TEX_FILE_NAME=$FILE_NAME.tex
TOC_FILE_NAME=$FILE_NAME.toc
DVI_FILE_NAME=$FILE_NAME.dvi

# Sphinxではtexのみ出力
sphinx-build -b mylatex ./source ./build/latex
sphinx-build -b mylatex ./source ./build/latex

cd ./build/latex

# texからuplatexを使ってpdf生成

if [ -e $TEX_FILE_NAME ]
then
    # はじめにを0章にしない
    sed -i -e 's/\\chapter{はじめに}/\\chapter\*{はじめに}\n\\addcontentsline{toc}{chapter}{\\numberline {}はじめに}/g' $TEX_FILE_NAME

    # あとがきにx章を出さない
    sed -i -e 's/\\chapter{あとがき}/\\chapter\*{あとがき}\n\\addcontentsline{toc}{chapter}{\\numberline {}あとがき}/g' $TEX_FILE_NAME

    sed -i -e 's/\\numberline {\\jlreq@rensuji {[0-9]}}//g' $TOC_FILE_NAME

    uplatex $TEX_FILE_NAME
    dvipdfmx $DVI_FILE_NAME
fi

cd ../../

