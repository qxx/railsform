# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Type.delete_all
book = Type.create(title: 'book')
clothing = Type.create(title: 'clothing')
cellphone = Type.create(title: 'cellphone')
computer = Type.create(title: 'computer')
other = Type.create(title: 'other')

Item.delete_all
Item.create!(
  [ { title: 'English book',
      description: '2010',
      owner: 'Alice',
      type_id: book.id
    },
    { title: 'Ruby Hard Way',
      description: 'Pearson',
      owner: 'Bob',
      type_id: book.id
    },
    { title: 'Lonely Planet',
      description: 'Japan',
      type_id: book.id
    },
    { title: 'Core Java',
      description: 'V1',
      type_id: book.id
    },
    { title: 'Data Structure',
      owner: 'CC',
      type_id: book.id
    },
    { title: 'T-shirt',
      description: 'black',
      type_id: clothing.id
    },
    { title: 'Swim suit',
      description: 'speedo',
      type_id: clothing.id
    },
    { title: 'T-shirt',
      description: 'white',
      type_id: clothing.id
    },
    { title: 'Sneakers',
      type_id: clothing.id
    },
    { title: 'iPhone 6',
      description: 'gold',
      owner: 'Alice',
      type_id: cellphone.id
    },
    { title: 'Nexus 4',
      type_id: cellphone.id
    },
    { title: 'Lumia 625',
      type_id: cellphone.id
    },
    { title: 'Macbook Air',
      owner: 'Alice',
      type_id: computer.id
    },
    { title: 'Macbook Air',
      owner: 'Bob',
      type_id: computer.id
    },
    { title: 'Keyboard',
      type_id: other.id
    }
  ] )