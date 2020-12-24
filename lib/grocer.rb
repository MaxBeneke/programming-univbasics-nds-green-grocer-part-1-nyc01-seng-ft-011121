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
  cart.each do |whole_item| 
    item_count = cart.count(whole_item[:item])
      whole_item[:count] = item_count
      # successfully adds the count, but my item_count is 0 everytime
  end
  new_cart = cart.uniq
end


  