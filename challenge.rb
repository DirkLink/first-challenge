# Fork this repository to your personal account and
# clone that fork to your machine.
# 
# Answer each of the questions below, adding comments
# beneath them as appropriate.

# 1. Read this file. What do you expect it to do when
#    you run it? I don't expect it to return any number of A's or Z's
# 2. Now run it. Are there any bugs? It doesnt encounter any errors but it doesnt count anything.
# 3. Can you make any improvements to the program?
# 4. How many Q's are there in "prufrock.txt"?
# 5. (Harder) What are the 5 most common letters in "prufrock.txt"?

# When you're done (at least with 4), commit your work,
# push it to your repo, and open a pull request.

require 'pry'
def count_letters_in_file file_name

	text = File.read(file_name).downcase.gsub(' ','')
	cs = Hash.new
	text.chars.each do |letter|
		if cs[letter]
    		cs[letter] += 1
		else
			cs[letter] = 1
		end
	end
	cs
end

fox_letters = count_letters_in_file "fox.txt"

#binding.pry
ac = fox_letters["a"]
zc = fox_letters["z"]
qc = fox_letters["q"]
tc = fox_letters["t"]

#puts "Text is: #{text}"
puts "There are #{ac} A's and #{zc} Z's and #{qc} Q's and #{tc} T's"

prufrock_letters = count_letters_in_file "prufrock.txt"
qs = prufrock_letters["q"]

puts "There are #{qs} Q's"

#binding.pry
y = prufrock_letters.sort_by{|e,g|-g}.to_h
#binding.pry
puts "There are #{y.first(5)}"