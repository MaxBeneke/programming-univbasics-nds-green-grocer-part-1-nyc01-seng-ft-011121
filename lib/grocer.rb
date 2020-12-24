require 'pry'

def find_item_by_name_in_collection(name, collection)
  final_hash = {}
  collection.each do |item|
    item.each do |attribute, value|
      if value == name
        final_hash = item
      end
   end
  end
  if final_hash == {}
    NIL
  else
  final_hash
end
end

def consolidate_cart(cart)
  final_hash = {}
  count_array = []
  cart.each do |whole_item| 
    item_name = whole_item[:item]
    count_array.push(item_name)
  end
  cart.each do |whole_item| 
    item_name = whole_item[:item]
    final_count = count_array.count(item_name)
    whole_item[:count] = final_count
  end
  final_cart = cart.uniq 
  final_cart
  binding.pry
end
    
    
    
    
    #item_count = cart.count(whole_item[:item])
      #whole_item[:count] = item_count
      # successfully adds the count, but my item_count is 0 everytime


  