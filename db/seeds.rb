# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# users = User.create([{ fullname: 'Doctor Dulitl', email: 'dulitl@mail.com', mobile_no: '380981111111' },
#                      { fullname: 'Sponge Bob', email: 'spongebob@mail.com', mobile_no: '380971111111' }])

# r1 = Role.create({ name: 'Patient', description: 'Can create and read vizits. Can read own appointments' })
# r2 = Role.create({ name: 'Doctor', description: 'Can read vizits. Can create, read and update own appointments' })
# r3 = Role.create({ name: 'Admin', description: 'Can perform any CRUD operation on any resource' })

c1 = Category.create(name: 'Therapist')
c2 = Category.create(name: 'Surgeon')
c3 = Category.create(name: 'Pediatrician')
c4 = Category.create(name: 'Gynecologist')
c5 = Category.create(name: 'Dentist')
c6 = Category.create(name: 'Dermatologist')
c7 = Category.create(name: 'Ophthalmologist')
c8 = Category.create(name: 'Urologist')
c9 = Category.create(name: 'Psychiatrist')
