
sphinx-tatelatex-hiden-tare
===========================

Sphinxから縦書きPDFを生成する秘伝のタレ。
タレから抽出したので動作未検証（もうちょっと使いやすくするかも）。


how to use
----------

1. mylatexをSphinxのextディレクトリに入れる
2. `pip install -r requirements.txt` を実行
3. latex.shの `FILE_NAME` をプロジェクトに合わせて変更
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

`『ごん狐』（青空文庫） <https://www.aozora.gr.jp/cards/000121/card628.html>`_


japanesesupport
---------------

`japanesesupport` については https://sphinx-users.jp/reverse-dict/html/japanese.html を参照。

この拡張のライセンスはpublic domain（ https://sphinxjp.slack.com/archives/C0GCUAD6V/p1575696021162400 ）。


LICENCE
-------

MIT

