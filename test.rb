@customers = [
  {
    name: "Craig",
    pets: [],
    cash: 1000
  },
  {
    name: "Zsolt",
    pets: [],
    cash: 50
  }
]

@new_pet = {
        name: "Bors the Younger",
        pet_type: :cat,
        breed: "Cornish Rex",
        price: 100
      }

@pet_shop = {
    pets: [
      {
        name: "Sir Percy",
        pet_type: :cat,
        breed: "British Shorthair",
        price: 500
      },
      {
        name: "King Bagdemagus",
        pet_type: :cat,
        breed: "British Shorthair",
        price: 500
      },
      {
        name: "Sir Lancelot",
        pet_type: :dog,
        breed: "Pomsky",
        price: 1000,
      },
      {
        name: "Arthur",
        pet_type: :dog,
        breed: "Husky",
        price: 900,
      },
      {
        name: "Tristan",
        pet_type: :dog,
        breed: "Basset Hound",
        price: 800,
      },
      {
        name: "Merlin",
        pet_type: :cat,
        breed: "Egyptian Mau",
        price: 1500,
      }
    ],
    admin: {
      total_cash: 1000,
      pets_sold: 0,
    },
    name: "Camelot of Pets"
  }


def pets_by_breed(shop,name)
  return shop[:pets].select {|pet| pet[:name] == name}
end

pet = pets_by_breed(@pet_shop, "Arthur")
p pet
