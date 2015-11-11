# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Book.destroy_all


Book.create!([{
  title: "Hyperion",
  author: "Dan Simmons",
  description: "Probably my favorite science fiction book (and series) I've ever read. Hyperion is written in a style similar
to The Canterbury Tales, in which a series of stories are told by the main characters. Each story is a gem in itself, but alude
to the larger storyline. The score of the story is ambitious - spanning time, planets religion and love.",
  amazon_id: "0553283685"
  },
  {
    title: "The name of the wind",
    author: "Patrick Rothfuss",
    description: "My favorite book ever, The name of the wind tells the history of Kvothe a man who is known by his history and is considered
a legend, this book is narred by Kvothe itself since the beggining of his life... and maybe the end.",
    amazon_id: "0756404746"
  }
])