## Questões

As questões devem ser respondidas com queries do `ActiveRecord`.
Inclua os trechos de código que respondem as perguntas abaixo:

### Qual é o custo médio dos animais do tipo cachorro?

    Animal.where(animal_type: AnimalType.find_by_title('Cachorro')).average(:monthly_cost)

### Quantos cachorros existem no sistema?

    Animal.where(animal_type: AnimalType.find_by_title('Cachorro')).count

### Qual o nome dos donos dos cachorros (Array de nomes)

    Person.includes(:animals).where(animals: {animal_type: AnimalType.find_by_title('Cachorro')}).pluck(:name)

### Retorne as pessoas ordenando pelo custo que elas tem com os animais (Maior para menor)

    Person.all.sort_by{ |person| person.monthly_cost}.reverse

### Levando em consideração o custo mensal, qual será o custo de 3 meses de cada pessoa?

    Person.all.map{ |person| {name: person.name, cost: (person.monthly_cost * 3)}}

# Entrega do projeto

- Crie uma aplicação Rails nova para executar o desafio. Pode escolher o banco de dados de preferência.
- Ao finalizar, suba a sua proposta para o projeto que você criou no GitHub. Exemplo: https://github.com/seuNome/pet-code;
- Envie-nos o link do projeto. Exemplo: https://github.com/seuNome/test-backend-ruby.git
- Pronto! Basta aguardar o nosso RH entrar em contato. Entramos em contato rapidinho ;)
