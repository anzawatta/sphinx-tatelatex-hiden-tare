#!/bin/sh

# Sphinxではtexのみ出力
sphinx-build -b mylatex ./source ./build/latex
sphinx-build -b mylatex ./source ./build/latex

cd ./build/latex

# texからuplatexを使ってpdf生成

# sphinx.tex、sphinx.toc、sphinx.dviの各ファイル名は適宜変更
# はじめにを0章にしない
sed -i -e 's/\\chapter{はじめに}/\\chapter\*{はじめに}\n\\addcontentsline{toc}{chapter}{\\numberline {}はじめに}/g' sphinx.tex

# あとがきに0章を出さない
sed -i -e 's/\\chapter{あとがき}/\\chapter\*{あとがき}\n\\addcontentsline{toc}{chapter}{\\numberline {}あとがき}/g' sphinx.tex

sed -i -e 's/\\numberline {\\jlreq@rensuji {[0-9]}}//g' sphinx.toc

uplatex sphinx.tex

dvipdfmx sphinx.dvi

cd ../../

