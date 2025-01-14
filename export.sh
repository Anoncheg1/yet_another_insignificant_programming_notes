#!/bin/sh
# steps:
# 1) cp -r ~/docsmy_short/modified yet_another_insignificant_programming_notes/sources/
# or create dir yet_another_insignificant_programming_notes/sources/modified/ and copy there
# 2) cd yet_another_insignificant_programming_notes
# 3) remove target files
# - rm -rf ./*.html ./*.md
# - rm -rf sources_org/*
# 4) . export.sh
# 5) remove yet_another_insignificant_programming_notes/sources/modified/
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

# -- export sources of modified
if [ -d ./sources/modified ]; then
    # -- copy /modified to ./source
    for filename in $(find ./sources/modified/ -maxdepth 1 -type f \
                           -not -name '*.*'); do
        cp -f $filename ./sources/
    done
    EDIR="./sources/modified/"
else
    EDIR="./sources/"
    # -- copy sources/imgs to HTML images
    rm -rf ./imgs
    rm -rf ./autoimgs
    cp ./sources/imgs ./
    cp ./sources/autoimgs ./
fi

SECOND_PATH=1

for filename in $(find "$EDIR" -maxdepth 1 -type f \
                       -not -name '*.*'); do
    echo "${filename}"
    fname=$(basename $filename)
    # -- generate .md
    if [[ $SECOND_PATH -eq 1 && -f ./${fname}.md ]]; then
        echo skip
    else
        rm -f ./${fname}.md
        echo emacs -q ./sources/"${fname}" --eval "(progn (org-md-export-to-markdown) (save-buffers-kill-emacs))"
        emacs --no-x-resources ./sources/"${fname}" --eval "(progn (org-md-export-to-markdown) (save-buffers-kill-emacs))"
        mv ./sources/"${fname}".md ./
    fi
    # -- generate .html
    if [[ $SECOND_PATH -eq 1 && -f ./${fname}.html ]]; then
        echo skip
    else
        rm -f ./${fname}.html
        echo emacs -q ./sources/"${fname}" --eval "(progn (org-html-export-to-html) (save-buffers-kill-emacs))"
        emacs --no-x-resources ./sources/"${fname}" --eval "(progn (org-html-export-to-html) (save-buffers-kill-emacs))"
        mv ./sources/"${fname}".html ./
    fi
    # -- org files as a copy
    cp -rf --update=all $filename ./sources_org/$fname.org
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
