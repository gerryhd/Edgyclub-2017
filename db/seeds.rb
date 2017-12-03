# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

movies = [{:title => 'Aladdin', :release_date => Date.strptime('04/01/1992', "%m/%d/%Y"), :description => 'Basada en el famoso cuento "Aladino y la lámpara maravillosa", la trama se sitúa en el exótico paisaje del mítico reino árabe de Agrabah. Aladdin es un ingenioso joven que, a pesar de vivir en un estado de extrema pobreza, sueña con casarse con la bella hija del sultán, la princesa Yasmin. El destino interviene cuando el astuto visir del Sultán, Yafar, recluta a Aladdin para que le ayude a recuperar una lámpara mágica de las profundidades de la Cueva de las Maravillas. El joven encuentra la lámpara, en la que vive un genio que concede tres deseos a quien lo libere.'},
          {title: 'The Emonji Movie', release_date: Date.strptime('04/24/2018', "%m/%d/%Y")},
]

movies.each do |movie|
  Movie.find_or_create_by(movie)
end

premieres = [
  {title: 'Insidious: The Last Key', prem_date: Date.strptime("01/05/2018", '%m/%d/%Y')},
  {title: 'Day of the dead: Bloodline', prem_date: Date.strptime("01/05/2018", '%m/%d/%Y')},
  {title: "Molly's Game", prem_date: Date.strptime("12/25/2018", '%m/%d/%Y')},
  {title: "Molly's Game", prem_date: Date.strptime("01/05/2018", '%m/%d/%Y')},
  {title: "Star Wars: The Last Jedi", prem_date: Date.strptime("12/15/2018", '%m/%d/%Y')}
]

premieres.each do |premier|
  Premiere.create!(premier)
end

=begin
  99.times do |n|
    title = "Película número #{n}"
    year = "200#{n}"
    description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras nisl enim, tempor id ullamcorper vel, posuere eu dui. Ut placerat felis eros, ac sagittis lorem mollis cursus. Aliquam erat volutpat. Integer non risus auctor, imperdiet est tempor, lacinia magna. Vestibulum et ligula quis felis dictum porta. Praesent in turpis semper, finibus nisl eget, convallis metus. Mauris quis maximus eros. Sed dolor nibh, imperdiet ac justo id, bibendum tincidunt neque. Nam dapibus suscipit mattis. Fusce sollicitudin accumsan ligula sed suscipit. Cras."
    Movie.create!(title: title, year: year, description: description)
  end
=end

Admin.create(email: 'admin@homie.mx', password: 'admin123', password_confirmation: 'admin123')