require 'faker'
camille = User.new(
  name:               "Camille Huret",
  phone:              "21-456-654",
  avatar:             Rails.root.join("app/assets/images/camille.JPG").open,
  email:              "camille@gmail.com",
  password:           "12345678",
)
camille.save!

floriane = User.new(
  name:               "Floriane Didier",
  phone:              "21-456-654",
  avatar:             Rails.root.join("app/assets/images/floriane.jpg").open,
  email:              "floriane@gmail.com",
  password:           "12345678",
)
floriane.save!


lucas = User.new(
  name:               "Lucas Martins",
  phone:              "21-456-654",
  avatar:             Rails.root.join("app/assets/images/lucas.jpg").open,
  email:              "lucas@gmail.com",
  password:           "12345678",
)
lucas.save!

marcus = User.new(
  name:               "Marcus Maione",
  phone:              "21-456-654",
  avatar:             Rails.root.join("app/assets/images/marcus.jpg").open,
  email:              "marcus@gmail.com",
  password:           "12345678",
)
marcus.save!

pedro = User.new(
  name:               "Pedro Meyer",
  phone:              "21-456-654",
  avatar:             Rails.root.join("app/assets/images/pedro.jpg").open,
  email:              "pedro@gmail.com",
  password:           "12345678",
)
pedro.save!

10.times do
  user = User.new(
    name:               Faker::Name.name,
    phone:              Faker::PhoneNumber.phone_number,
    avatar:             Faker::Avatar.image,
    email:              Faker::Internet.unique.email,
    password:           "12345678",
  )
  user.save!
end

# stores:
wagon = Store.new(
  name:    "Le Wagon",
  address: "Ladeira da Glória 26, Rio de Janeiro, Rio de Janeiro, Brasil",
  description: "Best Ecological Codding Bootcamp on the planet",
  phone: "21-99-234-234",
  user: User.all.fifth,
  picture: Rails.root.join("app/assets/images/wagon.jpg").open,
)
wagon.save!

osklen = Store.new(
  name:    "Osklen",
  address: "Rua do Catete 230, Rio de Janeiro, Rio de Janeiro, Brasil",
  description: "Sustainable Fashion, promotting circular economy and recycling.",
  phone: "(21) 2227-2930",
  user: User.all.third,
  picture: Rails.root.join("app/assets/images/osklen.jpeg").open,
)
osklen.save!

ecobeach = Store.new(
  name:    "Eco Beach",
  address: "Rua do Passeio 256, Rio de Janeiro, Rio de Janeiro, Brasil",
  description: "Sustainable Cloth",
  phone: "(21) 2227-2930",
  user: User.all.fourth,
  picture: Rails.root.join("app/assets/images/ecobeach.jpeg").open,
)
ecobeach.save!

mundoazul = Store.new(
  name:    "Mundo Azul",
  address: "Avenida Rio Branco 456, Rio de Janeiro, Rio de Janeiro, Brasil",
  description: "Organic food",
  phone: "(21) 2227-2930",
  user: User.all.third,
  picture: Rails.root.join("app/assets/images/mundoazul.jpeg").open,
)
mundoazul.save!

planetaverde = Store.new(
  name:    "Planeta Verde",
  address: "Rua Dias de Barros 600, Rio de Janeiro, Rio de Janeiro, Brasil",
  description: "Home appliances",
  phone: "(21) 2227-2930",
  user: User.all.fourth,
  picture: Rails.root.join("app/assets/images/planetaverde.jpeg").open,
)
planetaverde.save!

ashtanga = Store.new(
  name:    "Ashtanga",
  address: "Rua Paissandu 300, Rio de Janeiro, Rio de Janeiro, Brasil",
  description: "Yoga sudio",
  phone: "(21) 2227-2930",
  user: User.all.fifth,
  picture: Rails.root.join("app/assets/images/ashtanga.jpeg").open,
)
ashtanga.save!

esperanzacafe = Store.new(
  name:    "Esperanza Cafe",
  address: "Rua Pereira da Silva 102, Rio de Janeiro, Rio de Janeiro, Brasil",
  description: "Sustainably sourced coffee",
  phone: "(21) 2227-2930",
  user: User.all.third,
  picture: Rails.root.join("app/assets/images/esperanzacafe.jpeg").open,
)
esperanzacafe.save!


# Benefits:

benefit_wagon = Benefit.new(
  name:       "Learn coding for free!",
  description: "Free coding bootcamp and a massage from Pedro",
  start_date: "03/15/2019",
  end_date: "09/15/2019",
  store: Store.all.first,
)
benefit_wagon.save!


benefit_osklen = Benefit.new(
    name:       "10% reduction",
    description: "10% reduction valid on all shoes",
    start_date: "03/15/2019",
    end_date: "09/15/2019",
    store:Store.all.second,
)
benefit_osklen.save!

benefit_ecobeach = Benefit.new(
    name:       "5% reduction",
    description: "5% reduction on all products",
    start_date: "03/15/2019",
    end_date: "09/15/2019",
    store:Store.all.third,
)
benefit_ecobeach.save!

benefit_mundoazul = Benefit.new(
    name:       "5% reduction",
    description: "5% reduction on all products",
    start_date: "03/15/2019",
    end_date: "09/15/2019",
    store:Store.all.fourth,
)
benefit_mundoazul.save!

benefit_planetaverde = Benefit.new(
    name:       "5% reduction",
    description: "5% reduction on all products",
    start_date: "03/15/2019",
    end_date: "09/15/2019",
    store:Store.all.fifth,
)
benefit_planetaverde.save!

benefit_ashtanga = Benefit.new(
    name:       "Yoga against plastic",
    description: "One free yoga class",
    start_date: "03/15/2019",
    end_date: "09/15/2019",
    store:Store.find(6),
)
benefit_ashtanga.save!

benefit_esperanzacafe = Benefit.new(
    name:       "Less plastic more coffee",
    description: "One free 250g coffee pack origin Sumatra",
    start_date: "03/15/2019",
    end_date: "09/15/2019",
    store:Store.all.last,
)
benefit_esperanzacafe.save!





# Working hours:


7.times do
  working_hour = WorkingHour.new(
    week_day: 1,
    start_time: "10h00",
    end_time: "19h00",
    store: Store.all.sample,
  )
  working_hour.save!
end

7.times do
  working_hour = WorkingHour.new(
    week_day: 2,
    start_time: "10h00",
    end_time: "19h00",
    store: Store.all.sample,
  )
  working_hour.save!
end

7.times do
  working_hour = WorkingHour.new(
    week_day: 3,
    start_time: "10h00",
    end_time: "19h00",
    store: Store.all.sample,
  )
  working_hour.save!
end

7.times do
  working_hour = WorkingHour.new(
    week_day: 4,
    start_time: "10h00",
    end_time: "19h00",
    store: Store.all.sample,
  )
  working_hour.save!
end

7.times do
  working_hour = WorkingHour.new(
    week_day: 5,
    start_time: "10h00",
    end_time: "19h00",
    store: Store.all.sample,
  )
  working_hour.save!
end

7.times do
  working_hour = WorkingHour.new(
    week_day: 6,
    start_time: "10h00",
    end_time: "19h00",
    store: Store.all.sample,
  )
  working_hour.save!
end

7.times do
  working_hour = WorkingHour.new(
    week_day: 7,
    start_time: "10h00",
    end_time: "13h00",
    store: Store.all.sample,
  )
  working_hour.save!
end






