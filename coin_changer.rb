
# def whole_class
# 	whole_class = ["Katie Collins", "Aaron Camersi", "Derrick Gillispie", "Andrew Farley", "Adrian Sauls", 
# 		"John Murphy", "Steven Miller", "Victoria Frame", "Stephanie Frame", "Chris Phelps", "Derick West", 
# 		"Ty Cook", "Robert Caldwell", "Marcus Folks", "Tyler Richards", "Mike Handy"].shuffle
# end

# def random_pairs
# 	random_pairs = [["0","1"], ["2","3"], ["4","5"], ["6","7"], ["8","9"], ["10","11"], ["12","13"], ["14"],["15"]]
# end

# random_pairs[0][0] << whole_class[0]
# random_pairs[0][1] << whole_class[1]
# random_pairs[1][0] << whole_class[2]
# random_pairs[1][1] << whole_class[3]
# random_pairs[2][0] << whole_class[4]
# random_pairs[2][1] << whole_class[5]
# random_pairs[3][0] << whole_class[6]
# random_pairs[3][1] << whole_class[7]
# random_pairs[4][0] << whole_class[8]
# random_pairs[4][1] << whole_class[9]
# random_pairs[5][0] << whole_class[10]
# random_pairs[5][1] << whole_class[11]
# random_pairs[6][0] << whole_class[12]
# random_pairs[6][1] << whole_class[13]
# random_pairs[7][0] << whole_class[14]
# random_pairs[7][1] << whole_class[15]

# puts random_pairs[0]

def pair(names)
	array = []
	#Creates an empty array to hold objects later called
	array_paired_names = names.shuffle.each_slice(2)
	#Shuffles the names to create random picks, 
	#takes the results and slices out 2, 
	#puts them in an array of (2)
	#creating the pairs

	array_paired_names.each do |pair|
		#interates over each element in the array of names
		if pair.length == 2
			array << pair
			#if the number of names is 2, print the pair
		else
			(array.last << pair).flatten!
			#if there is a remainder, pushes the last array(of one)
			#into the last returned pair, .flatten! changes it to part of the string
		end
	end
	array
	
end