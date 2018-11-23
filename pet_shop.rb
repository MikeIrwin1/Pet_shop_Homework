def pet_shop_name(shop)
  return shop[:name]
end

def total_cash(shop)
  return shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, cash)
  return shop[:admin][:total_cash] += cash
end

def pets_sold(shop)
  return shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, num)
  return shop[:admin][:pets_sold] += num
end

def stock_count(shop)
  return shop[:pets].length
end

def pets_by_breed(shop,breed)
  return shop[:pets].select {|pet| pet[:breed] == breed}
end

def find_pet_by_name(shop, name)
  return shop[:pets].select {|pet| pet[:name] == name}.first
end

def remove_pet_by_name(shop, name)
  return shop[:pets].delete_if {|pet| pet[:name] == name}
end

def add_pet_to_stock(shop, new_pet)
  return shop[:pets]<<new_pet
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, cash)
  return customer[:cash] -= cash
end

def customer_pet_count(customer)
  return customer[:pets].length
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets]<<new_pet
  return customer[:pets].length
end

#optional exercises

def customer_can_afford_pet(customer, new_pet)
  return false if customer[:cash] < new_pet[:price]
  return true
end

def sell_pet_to_customer(shop, pet, customer)
  if customer_can_afford_pet(customer, pet) == true
    add_pet_to_customer(customer, pet)
    increase_pets_sold(shop, 1)
    remove_customer_cash(customer, pet[:price])
    add_or_remove_cash(shop, pet[:price])
  end
end
