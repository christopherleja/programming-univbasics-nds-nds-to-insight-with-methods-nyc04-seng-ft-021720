$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

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

def directors_totals(nds)
  row_index = 0
  director_name = []
  result = {}
  while row_index < nds.length do
    director_data = nds[row_index]
    director_name.push(nds[row_index][:name])
 
    gross_for_director(director_data)
    result[director_name[row_index]] = gross_for_director(director_data)
 
    row_index += 1
  end
  result
end
