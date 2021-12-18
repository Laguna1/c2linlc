# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{ fullname: 'Doctor Dulitl', email: 'dulitl@mail.com', mobile_no: '380981111111' },
                     { fullname: 'Sponge Bob', email: 'spongebob@mail.com', mobile_no: '380971111111' }])
