require 'faker'

puts 'seeding'

#clear db
EarnedBadge.destroy_all
Badge.destroy_all
ActionCategory.destroy_all
Category.destroy_all
Action.destroy_all
Challenge.destroy_all
User.destroy_all

# Categories
plastic = Category.create!(name: 'Plastic', icon: "https://res.cloudinary.com/dhc2cbdw0/image/upload/v1583438643/icons/plastic_1_vhcmqa.svg")
diet    = Category.create!(name: 'Diet', icon: "https://res.cloudinary.com/dhc2cbdw0/image/upload/v1583438643/icons/healthy-food_kopxt4.svg")
travel  = Category.create!(name: 'Travel', icon: "https://res.cloudinary.com/dhc2cbdw0/image/upload/v1583438641/icons/aircraft_qx4lui.svg")
commute = Category.create!(name: 'Commute', icon: "https://res.cloudinary.com/dhc2cbdw0/image/upload/v1583438877/icons/bike_1_osxcrs.svg")
energy  = Category.create!(name: 'Energy', icon: "https://res.cloudinary.com/dhc2cbdw0/image/upload/v1583438643/icons/solar-energy_xqk7oo.svg")
waste   = Category.create!(name: 'Waste', icon: "https://res.cloudinary.com/dhc2cbdw0/image/upload/v1583438643/icons/jar_2_evcvpa.svg")

# Challenge to show in detail
nine_five = Challenge.create!(name: '9-fivers', num_days: 5, difficulty: 1)
coffee_diet = Action.create!(title: "Morning Coffee! Swap out Cow milk for Non-dairy.",
                              description: "That cup of coffee’s footprint just got reduces by ~50% CO2e! Try Oat milk! It's delicous!",
                              impact: 30,
                              challenge: nine_five)
bike_commute = Action.create!(title: "Commute via Bike or Public Transit or walk",
                              description: "If your commute is 20-miles, the switch could lower your carbon footprint by 4,800 pounds annually",
                              impact: 6000,
                              challenge: nine_five)
flexitarian_diet = Action.create!(title: "Prep flexitarian meal for lunches",
                                  description: 'Checkout this awesome app called "began"!',
                                  impact: 1200,
                                  challenge: nine_five)
electronics_energy = Action.create!(title: "Switch off your electronics when you leave the office",
                                    description: "A computer that is on for 8 hours a day emits 175 kg of CO2 per year.",
                                    impact: 450,
                                    challenge: nine_five)
beer_diet = Action.create!(title: "Choose a local beer at the 5a7, instead of an imported one",
                            description: "300g CO2e: locally brewed cask ale at the pub vs. 500g CO2e: local bottled beer from a shop or foreign beer in a pub",
                            impact: 200,
                            challenge: nine_five)

ActionCategory.create!(action: coffee_diet, category: diet)
ActionCategory.create!(action: bike_commute, category: commute)
ActionCategory.create!(action: flexitarian_diet, category: diet)
ActionCategory.create!(action: electronics_energy, category: energy)
ActionCategory.create!(action: beer_diet, category: diet)

# 1st Challenge that you completed
starter = Challenge.create!(name: 'Starter Pack', num_days: 7, difficulty: 1)
bottle_plastic = Action.create!(title: "Use Reusable Water Bottle",
              description: "1 million bottles are bought every min, according to some studies.",
              impact: 83,
              challenge: starter)
tupperware_plastic = Action.create!(title: "Use tupperware for leftovers / takeout",
                description: "2.2 billion take-out containers being used each year in EU alone.",
                impact: 150,
                challenge: starter)
bag_plastic = Action.create!(title: 'Prep reusable bag',
              description: "An average plastic grocery bag weighs 5.5 grams therefore 1 kg of plastic contains approximately 180 bags",
              impact: 33,
              challenge: starter)
local_diet = Action.create!(title: "Look up Local Farmer's Market / Bulk Store",
              description: "######",
              impact: 0,
              challenge: starter)
grocery_diet = Action.create!(title: 'Grocery Shop: Replace 1 Meat with 1 plant-based protein',
              description: "######",
              impact: 1200,
              challenge: starter)
repair_waste = Action.create!(title: 'Repair Something Broken, instead of buying new',
              description: "Reach out to somebody in your community that can teach you it to fix it?",
              impact: 500,
              challenge: starter)

ActionCategory.create!(action: bottle_plastic, category: plastic)
ActionCategory.create!(action: tupperware_plastic, category: plastic)
ActionCategory.create!(action: bag_plastic, category: plastic)
ActionCategory.create!(action: local_diet, category: diet)
ActionCategory.create!(action: grocery_diet, category: diet)
ActionCategory.create!(action: repair_waste, category: waste)

# 2nd Challenge that you completed
activism = Challenge.create!(name: 'Enviro Activism 101', num_days: 5, difficulty: 2)
Action.create!(title: 'Watch a documentary. How about "Cowspiracy"?',
              description: "######",
              impact: 0,
              challenge: activism)
Action.create!(title: 'Have a conversation with your stranger about Sustainability',
              description: "######",
              impact: 0,
              challenge: activism)
Action.create!(title: 'Check out a local environmental group / organizing',
              description: "######",
              impact: 0,
              challenge: activism)
Action.create!(title: 'Be in solidarity with the Indigenous Community in your land',
              description: "######",
              impact: 0,
              challenge: activism)
Action.create!(title: 'Renew your commitment <3',
              description: "######",
              impact: 0,
              challenge: activism)

# Challenge to fill the page
single = Challenge.create!(name: 'Single Use Plastic, No More', num_days: 7, difficulty: 3)
# ActionCategory.create!(challenge: single, category: plastic)

flexi   = Challenge.create!(name: 'Flexi 21 Dietary', num_days: 21, difficulty: 2)
# ActionCategory.create!(challenge: flexi, category: diet)

grocery = Challenge.create!(name: 'Grocery List Re-Write', num_days: 7, difficulty: 1)
# ActionCategory.create!(challenge: grocery, category: diet)

zero    = Challenge.create!(name: '30 Days Zero Waste', num_days: 30, difficulty: 3)
# ActionCategory.create!(challenge: zero, category: waste)

student =Challenge.create!(name: 'Student Hack', num_days: 7, difficulty: 2)
# ActionCategory.create!(challenge: student, category: diet)
# ActionCategory.create!(challenge: student, category: commute)

parent  = Challenge.create!(name: 'Sustainability for Parents', num_days: 14, difficulty: 2)
# ActionCategory.create!(challenge: parent, category: energy)
# ActionCategory.create!(challenge: parent, category: diet)
# ActionCategory.create!(challenge: parent, category: plastic)

biz     = Challenge.create!(name: 'Business Traveler Essentials', num_days: 2, difficulty: 1)
# ActionCategory.create!(challenge: biz, category: travel)

mini    = Challenge.create!(name: 'Minimalism Living', num_days: 30, difficulty: 3)
# ActionCategory.create!(challenge: mini, category: waste)

boot    = Challenge.create!(name: 'Enviromentalist Bootcamp', num_days: 45, difficulty: 3)
# ActionCategory.create!(challenge: boot, category: plastic)
# ActionCategory.create!(challenge: boot, category: waste)
# ActionCategory.create!(challenge: boot, category: diet)

prod    = Challenge.create!(name: 'Natural Products 101', num_days: 7, difficulty: 3)
# ActionCategory.create!(challenge: prod, category: plastic)

mason   = Challenge.create!(name: 'Mason Jar Challenge', num_days: 365, difficulty: 3)
# ActionCategory.create!(challenge: mason, category: waste)

gt      = Challenge.create!(name: 'Grow a green thumb', num_days: 100, difficulty: 1)
# ActionCategory.create!(challenge: gt, category: energy)

holiday = Challenge.create!(name: 'Holiday shopping hack', num_days: 3, difficulty: 1)
# ActionCategory.create!(challenge: holiday, category: waste)



# user faker for now
User.create!(username: 'nour', email: 'nour@day-o.cc', password: '123456', location: 'Montreal, Canada')
User.create!(username: 'laurence', email: 'laurence@day-o.cc', password: '123456', location: 'Montreal, Canada')
User.create!(username: 'clem', email: 'clem@day-o.cc', password: '123456', location: 'Montreal, Canada')
User.create!(username: 'carms', email: 'carms@day-o.cc', password: '123456', location: 'Montreal, Canada')

20. times do
  User.create!(username: Faker::Name.unique.name,
              email: Faker::Internet.email,
              password: '123456',
              location: Faker::Address.country )
end

# creating badges
plastic_badge = Badge.create!(name: 'Plastic')
diet_badge = Badge.create!(name: 'Diet')
travel_badge = Badge.create!(name: 'Travel')
commute_badge = Badge.create!(name: 'Commute')
energy_badge = Badge.create!(name: 'Energy')
waste_badge = Badge.create!(name: 'Waste')

# creating earned badges
10. times do
  user = User.all.sample
  badge = Badge.all.sample
  EarnedBadge.create!(user: user, badge: badge)
end

puts 'completed'
# Action.create!(title: "Replace 1 Meat with 1 plant-based protein",
#               description: 'Tempeh maybe?')
# Action.create!(title: "Choose Fruits & Veggie in Season",
#               description: '')
# 'Visit a Second Hand Store'
# 'Plastic Free Picnic'
# '15 mins beach clean'
# 'Go for a bike ride'
# 'Zero waste BBQ'
# 'Go star gazing'
# 'Make your own humus'
# 'Plant a tree seed'
# 'Donate 10 items that no longer serves you'
# 'Hug a tree'
# 'Walk today, instead of driving'
# 'Share a shower'
# 'Learn Furoshiki gift wrapping'
# 'Buy a local craft beer'
# 'Check out a community group'
# 'Set goals for the next 6 months'
