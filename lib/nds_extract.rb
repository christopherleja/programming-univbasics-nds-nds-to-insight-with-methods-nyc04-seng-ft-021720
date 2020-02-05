$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  
 total_gross = 0
 column_index = 0
 inner_len = director_data[:movies].length
 while column_index < inner_len do
   total_gross += director_data[:movies][column_index][:worldwide_gross]
   column_index += 1
 end
 total_gross
 puts column_index
 puts total_gross
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  row_index = 0
  puts nds.length
  while row_index < nds.length do
    puts nds.class
    puts nds
#director_name = []
#total_gross = 0
#row_index = 0
#result = {}
  
 # while row_index < nds.length do
  #  inner_len = nds.length
   # director_name.push(nds[row_index][:name])
  #  column_index = 0

   # while column_index < inner_len do
    #    gross_for_director(nds)
        
  
  #  end
   # column_index += 1
  #result[director_name[row_index]] = value_total
  #end
  #row_index += 1

  #puts result
  #result
 
end
