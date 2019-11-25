
sphinx-tatelatex-hiden-tare
===========================

Sphinxから縦書きPDFを生成する秘伝のタレ。
タレから抽出したので動作未検証（もうちょっと使いやすくするかも）。


how to use
----------

1. mylatexをSphinxのextディレクトリに入れる
2. conf.py、_templatesをソースディレクトリに移動
3. mysphinxなどをbuild/latexディレクトリに移動
4. latex.shを実行


mylatex
-------

真面目にext作るのが面倒だったのでSphinxのソースから適当に引っ張ってきた。
実際に変更しているのはvisit_footnoteでrotateboxしている部分のみ。


pdf
---

test-project.pdfが出力結果。
3ページ以降のページ数が見えないのはちょっと不明（抽出元では問題なかった）。


註の番号
--------

`(1)` となるようにカッコをmylatexでつけている。
フォントによっては数字とカッコがずれるかも。


文章
----

『ごん狐』（青空文庫）

