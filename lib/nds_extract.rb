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
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  row_index = 0
  director_name = []
  result = {}
  puts nds.class
  director_data = nds[row_index]
  while row_index < nds.length do
    director_name.push("#{nds[row_index][:name]}")
    puts gross_for_director(director_data)
    result[director_name[row_index]] = total_gross
    row_index += 1
  end

end
