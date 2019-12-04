def find_item_by_name_in_collection(name, collection)
# if name ("WINE") is in the AoH (collection), return that hash.
# if not, return nil
# So I'm gonna have to use an if/else statement. Get into Array, then into the hash, then into the key, then into the value
# p name = "WINE"

# p collection  = [{:item=>"DOG FOOD"}, {:item=>"WINE"}, {:item=>"STRYCHNINE"}] <---- ARRAY
# p collection[0] = {:item=>"DOG FOOD"} <-------------- HASH 
# p collection[1] = {:item => "WINE"} <-------------- HASH
# p collection[2] = {:item => "STRYCHNINE"} <-------------- HASH

# p collection[0][:item] = "DOG FOOD" <---------- STRING
# p collection[1][:item] = "WINE" <---------- STRING
# p collection[2][:item] = "STRYCHNINE" <---------- STRING 

food_counter = 0 
  
 while food_counter < collection.count do 
  hash = collection[food_counter]
   if hash[:item] == name
    return hash
   end 
  food_counter += 1 
 end 

end

def consolidate_cart(cart)
array = []
counter = 0 

 while counter < cart.length do  
   new_item = find_item_by_name_in_collection(cart[counter][:item], array)
   if new_item
    new_item += 1 
   else 
     new_item = {
      :item => cart[counter][:item],
      :price => cart[counter][:price],
      :clearence => cart[counter][:clearence],
      :count => 1 
     }
     array << new_item
   end 
  counter += 1  
 end 

array
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
