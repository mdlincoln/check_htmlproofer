#!/bin/bash

TARGETPOST=_posts/2017-03-22-bad-page-2.markdown

rm -rf tmp/

cp _inst/2017-03-22-bad-page-2.markdown $TARGETPOST

cat $TARGETPOST

bundle exec jekyll build

bundle exec htmlproofer ./_site \
	--timeframe '30d'

cp _inst/2017-03-22-bad-page-2.markdown.fix $TARGETPOST

cat $TARGETPOST

bundle exec jekyll build

bundle exec htmlproofer ./_site \
	--timeframe '30d'
