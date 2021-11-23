# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Entry.create({category:"Beast", name:"Wolf", sword:"Steel", spell:"Igni"})
Entry.create({category:"Draconid", name:"Basilisk", sword:"Silver", spell:"Aard"})
Entry.create({category:"Elemental", name:"Golem", sword:"Silver", spell:"Quen"})
Entry.create({category:"Hybrid", name:"Griffin", sword:"Silver", spell:"Aard"})
Entry.create({category:"Specter", name:"Plague Maiden", sword:"Silver", spell:"Yrden"})
Entry.create({category:"Human", name:"Various", sword:"Steel", spell:"Igni"})

p Entry.all