people = [
  Person.create(name: 'Johnny Cash', document: '555555555', birth_date: '26/02/1932'),
  Person.create(name: 'Sid Vicious', document: '555555555', birth_date: '10/05/1957'),
  Person.create(name: 'Axl Rose', document: '555555555', birth_date: '06/02/1962'),
  Person.create(name: 'Joey Ramone', document: '555555555', birth_date: '19/05/1951'),
  Person.create(name: 'Bruce Dickinson', document: '555555555', birth_date: '07/08/1958'),
  Person.create(name: 'Kurt Cobain', document: '555555555', birth_date: '20/02/1967'),
  Person.create(name: 'Elvis Presley', document: '555555555', birth_date: '17/08/2008')
]


types = [
  AnimalType.create(title: 'Cavalo'),
  AnimalType.create(title: 'Cachorro'),
  AnimalType.create(title: 'Papagaio'),
  AnimalType.create(title: 'Lhama'),
  AnimalType.create(title: 'Iguana'),
  AnimalType.create(title: 'Ornitorrinco')
]

Animal.create(name: 'Pé de Pano', monthly_cost: 199.99, animal_type: types[0], person: people[0])
Animal.create(name: 'Rex', monthly_cost: 99.99, animal_type: types[1], person: people[1])
Animal.create(name: 'Ajudante do Papai Noel', monthly_cost: 99.99, animal_type: types[1], person: people[2])
Animal.create(name: 'Rex', monthly_cost: 103.99, animal_type: types[2], person: people[3])
Animal.create(name: 'Flora', monthly_cost: 103.99, animal_type: types[3], person: people[4])
Animal.create(name: 'Dino', monthly_cost: 177.99, animal_type: types[4], person: people[5])
Animal.create(name: 'Lassie', monthly_cost: 407.99, animal_type: types[5], person: people[6])
