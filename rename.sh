# !/bin/bash
# fileName : rename.sh
# Rename jpg and png file
# notice : 依照檔名原生排序

count=1
for img in *.jpg *.png
do
  new=image-$count.${img##*.} # ${img##*.} 獲得副檔名
mv "$img" "$new" 2> /dev/null
if [ $? -eq 0 ]
then
echo "Renaming $img to $new"
# Renaming 10.存提款历程.jpg to image-10.jpg
let count++
fi
done

