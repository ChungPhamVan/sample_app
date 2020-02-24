User.create!(
  name: Settings.seeds.name,
  email: Settings.seeds.email,
  password: Settings.seeds.password,
  password_confirmation: Settings.seeds.password_confirmation,
  admin: Settings.seeds.admin
)

99.times do |n|
  name = Faker::Name.name
  email = "example-#{n}@railstutorial.org"
  password = Settings.seeds.password
  User.create!( 
    name:  name,
    email: email,
    password: password,
    password_confirmation: password
  )
end
