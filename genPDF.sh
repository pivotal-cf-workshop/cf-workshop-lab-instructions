#this script generates pdfs from markdowns.  It requires pandoc and supporting pdf generators as defined here http://johnmacfarlane.net/pandoc/installing.html
for f in *.md
do 
echo "Proccessing $f file..."
flen=${#f}-3
f2=${f:0:flen}
pandoc $f -o $f2.html
pandoc $f2.html -o $f2.pdf
rm $f2.html
done
