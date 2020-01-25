# Admin
User.create!(uid: Faker::Omniauth.github[:uid], name: Faker::Name.name, admin: true)

# Non-admins
5.times do
  user = User.create!(uid: Faker::Omniauth.github[:uid], name: Faker::Name.name, admin: false)
  5.times do
    resource = Resource.create!(title: Faker::Book.title, url: Faker::Internet.domain_name, description: Faker::Marketing.buzzwords, user_id: user.id)
    resource.tag_list.add("#{Faker::Lorem.word}, #{Faker::Lorem.word}", parse: true)
    resource.save
  end
end
