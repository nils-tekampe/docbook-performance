declare -a testcases=("100pagesText" "500pagesText" "1000pagesText" "500pagesTables" "100pagesText10Times")

for i in "${testcases[@]}"
do
	echo "Cleaning up to make sure that we have a fresh start"
	daps -d ./"$i" clean
	echo "Starting the build for $i"
	time daps -d ./"$i" pdf
   echo "$i"
done



# echo "Testing a document with about 500 pages pure text"
# echo "Cleaning up to make sure that we have a fresh start"
# daps -d ./500pagesText clean
# echo "Starting the build"
# time daps -d ./500pagesText pdf


# echo "Testing a document with about 1000 pages pure text"
# echo "Cleaning up to make sure that we have a fresh start"
# daps -d ./1000pagesText clean
# echo "Starting the build"
# time daps -d ./1000pagesText pdf

# echo "Testing a document with about 500 pages tables"
# echo "Cleaning up to make sure that we have a fresh start"
# daps -d ./500pagesTables clean
# echo "Starting the build"
# time daps -d ./500pagesTables pdf