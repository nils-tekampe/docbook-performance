rm -rf build
echo "Testing a document with about 500 pages pure text"
time daps -d ./500pagesText pdf

echo "Testing a document with about 1000 pages pure text"
time daps -d ./1000pagesText pdf
