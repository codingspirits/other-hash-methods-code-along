require 'pry'

#This is the groceries hash we'll be passing in to the get_the_min method
groceries = {
  dairy: ["milk", "yogurt", "cheese"],
  vegetable: ["carrots", "broccoli", "cucumbers"],
  meat: ["chicken", "steak", "salmon"],
  grains: ["rice", "pasta"]
 }

def get_the_min(groceries)
  def flatten(groceries)
    single_array = []
    array_of_arrays = groceries.values
    outer_index = 0
    while outer_index < array_of_arrays.length do
    inner_index = 0
    while inner_index < array_of_arrays[outer_index].length do
      single_array.push(array_of_arrays[outer_index][inner_index])
    inner_index +=1
  end
  outer_index +=1
  end
  single_array
  end
  p flatten(groceries).min
end

get_the_min(groceries)