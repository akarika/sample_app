require 'faker'

namespace :db do
  desc "Peupler la base de données"
  task populate: :environment do
    Rake::Task['db:reset'].invoke
    administrateur = User.create!(nom: 'Example exemple',
                                  email: 'example@railstutorial.org',
                                  password: 'foobar',
                                  password_confirmation: 'foobar')
    administrateur.toggle!(:admin)
    99.times do |n|
      nom = Faker::Name.name
      email = "example-#{n + 1}@railstutorial.org"
      password = 'motdepasse'
      User.create!(nom: nom,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end
namespace :db do
  desc "Remplissage de la base de données avec des messages fictifs"
  task populate: :environment do
    users = User.order(:created_at).take(6)
      50.times do
        content = Faker::Lorem.sentence(5)
        users.each{|user| user.microposts.create!(content: content)}
      end
    end
  end
