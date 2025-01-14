#!/bin/sh
# steps:
# 1) cp -r ~/docsmy_short/modified yet_another_insignificant_programming_notes/sources/
# 2) cd yet_another_insignificant_programming_notes
# 3) remove target files
# - rm -rf ./*.html ./*.md
# - rm -rf sources_org/*
# 4) . export.sh
# -- julia file preparation
cat ./sources/julia | sed 's/#+begin_src julia/#+begin_src python/' > /tmp/julia
mv -f /tmp/julia ./sources/julia
# -- readme linkes
echo "* links" > README.org
# -- copy from modified images to source dirs
if [ -d ./sources/modified ]; then
    cp -f ./sources/modified/imgs/* ./sources/imgs/
    cp -f ./sources/modified/autoimgs/* ./sources/autoimgs/

    cp -f ./sources/modified/imgs/* ./sources_org/imgs/
    cp -f ./sources/modified/autoimgs/* ./sources_org/autoimgs/

    cp -f ./sources/modified/imgs/* ./imgs/
    cp -f ./sources/modified/autoimgs/* ./autoimgs/
fi
# -- copy /modified to ./source
for filename in $(find ./sources/modified/ -maxdepth 1 -type f \
		       -not -name '*.html' -not -name '.nojekyll' \
		       -not -name '*.md' -not -name '*.png' -not -name 'export.sh' \
		       -not -name '.*.sh'); do
    cp -f $filename ./sources/
done
# -- export sources of modified
for filename in $(find ./sources/modified/ -maxdepth 1 -type f \
		       -not -name '*.html' -not -name '.nojekyll' \
		       -not -name '*.md' -not -name '*.png' -not -name 'export.sh' \
		       -not -name '.*.sh'); do
    echo "${filename}"
    fname=$(basename $filename)
    # -- generate .md and .html
    rm -rf ./${fname}.html ./${fname}.md
    echo emacs ./sources/"${fname}" --eval "(progn (org-md-export-to-markdown) (save-buffers-kill-emacs))"
    emacs ./sources/"${fname}" --eval "(progn (org-md-export-to-markdown) (save-buffers-kill-emacs))"
    echo emacs ./sources/"${fname}" --eval "(progn (org-html-export-to-html) (save-buffers-kill-emacs))"
    emacs ./sources/"${fname}" --eval "(progn (org-html-export-to-html) (save-buffers-kill-emacs))"
    # -- org files as a copy
    cp -rf --update=all $filename ./sources_org/$fname.org
    mv ./sources/"${fname}".html ./
    mv ./sources/"${fname}".md ./
    # -- readme linkes
    # echo [[./sources_org/${fname}.org][${fname}]] >> README.org
    # echo >> README.org
done
# -- copy imgs for org files
# rm -r ./sources_org/imgs ./sources_org/autoimgs
# cp -r ./sources/imgs ./sources_org/
# cp -r ./sources/autoimgs ./sources_org/
# mv ./sources/*.html ./
# mv ./sources/*.md ./
