# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

movies = [{:title => 'Coco',:description => 'En el pequeño pueblo de Santa Cecilia vive Miguel, un niño de 12 años que sueña con ser un músico como su famoso ídolo Ernesto de la Cruz, un popular compositor/cantante y estrella de cine que murió cuando fue aplastado por una campana en una presentación en vivo. Sin embargo la familia de Miguel tiene una larga y estricta restricción hacia la música que se remonta generaciones en el pasado cuando la tatarabuela de Miguel fue abandonada por un músico que decidió dejar su familia con tal de seguir sus sueños', :release_date => Date.strptime('07/15/2017', '%m/%d/%Y')},
          {:title => 'Spider-Man: Homecoming',:description => 'Dos meses después de los terribles acontecimientos en Capitán América: Civil War, Peter Parker, con la ayuda de su mentor Tony Stark, trata de equilibrar su vida como un estudiante de secundaria en Queens, y su lucha contra el crimen como Spider-Man mientras se enfrenta a una nueva amenaza, el Buitre.', :release_date => Date.strptime('07/07/2017', '%m/%d/%Y')},
          {:title => 'It', :description => 'Son los años 80 en el pequeño pueblo de Derry, en el estado de Maine. En él vive una panda de siete niños conocidos como "El club de los perdedores", que debe enfrentarse a sus problemas cotidianos con los matones de la escuela. Pero su vida da un giro inesperado cuando, durante el verano, una gran amenaza se cierne sobre ellos después de que una oleada de extrañas muertes provoquen el pánico y el terror entre los habitantes del lugar.', :release_date=> Date.strptime('09/07/2017', '%m/%d/%Y')},
          {:title => 'Wonder Woman',:description =>'Antes de ser Wonder Woman (Gal Gadot) era Diana, princesa de las Amazonas, entrenada para ser una guerrera invencible. Diana fue criada en una isla paradisíaca protegida. Hasta que un día un piloto norteamericano (Chris Pine), que tiene un accidente y acaba en sus costas, le habla de un gran conflicto existente en el mundo [Primera Guerra Mundial]. Diana decide salir de la isla convencida de que puede detener la terrible amenaza. Mientras lucha junto a los hombres en la guerra que acabará con todas las guerras, Diana descubre todos sus poderes y su verdadero destino.', :release_date => Date.strptime('05/15/2017', '%m/%d/%Y')},
          {:title => 'Pirates of the Caribbean: Dead Men Tell No Tales ', :description=>'El capitán Jack Sparrow se enfrentará a un grupo de piratas-fantasma comandados por una de sus viejas némesis, el terrorífico capitán Salazar, recién escapado del Triángulo de las Bermudas. La única posibilidad de Sparrow para salir con vida es encontrar el legendario Tridente de Poseidón, un poderoso artefacto que le da a su poseedor el control de los mares.', :release_date=>Date.strptime('05/11/2017', '%m/%d/%Y')},
          {:title => 'Guardians of the Galaxy Vol. 2', :description=>'Continúan las aventuras del equipo en su travesía por los confines del cosmos. Los Guardianes deberán luchar para mantener unida a su nueva familia mientras intentan resolver el misterio de los verdaderos orígenes de Peter Quill. Viejos rivales se convertirán en nuevos aliados, y queridos personajes de los cómics clásicos acudirán en ayuda de nuestros héroes a medida que el universo cinematográfico de Marvel continúa expandiéndose.', :release_date=> Date.strptime('04/19/2017', '%m/%d/%Y')},
          {:title => 'Logan', :description=>'Sin sus poderes, por primera vez, Wolverine es verdaderamente vulnerable. Después de una vida de dolor y angustia, sin rumbo y perdido en el mundo donde los X-Men son leyenda, su mentor Charles Xavier lo convence de asumir una última misión: proteger a una joven que será la única esperanza para la raza mutante.', :release_date => Date.strptime('03/01/2017', '%m/%d/%Y')},
          {:title => 'Alien: Covenant', :description=> "Durante un viaje en el espacio rumbo a un remoto planeta al otro lado de la galaxia para colonizarlo, la tripulación de la nave 'Covenant' descubre una señal proveniente de lo que creen puede ser un paraíso inexplorado, y que resulta ser un mundo oscuro y hostil.", :release_date => Date.strptime('05/04/2017', '%m/%d/%Y')},
          {:title => 'War for the Planet of the Apes', :description => 'César y sus monos son forzados a encarar un conflicto mortal contra un ejército de humanos liderado por un brutal coronel. Después de sufrir pérdidas enormes, César lucha con sus instintos más oscuros en una búsqueda por vengar a su especie. Cuando finalmente se encuentren, Cesar y el Coronel protagonizarán una batalla que pondrá en juego el futuro de ambas especies y el del mismo planeta.', :release_date => Date.strptime('07/10/2017', '%m/%d/%Y')},
          {:title => 'Murder on the Orient Express', :description =>'Durante un viaje en el legendario tren Orient Express, el detective belga Hercules Poirot investiga un asesinato cometido en el trayecto, y a resultas del cual todos los pasajeros del tren son sospechosos del mismo.', :release_date => Date.strptime('11/03/2017', '%m/%d/%Y')},
          {:title => 'Dunkirk', :description => 'Año 1940, en plena II Guerra Mundial. En las playas de Dunkerque, cientos de miles de soldados de las tropas británicas y francesas se encuentran rodeados por el avance del ejército alemán, que ha invadido Francia. Atrapados en la playa, con el mar cortándoles el paso, las tropas se enfrentan a una situación angustiosa que empeora a medida que el enemigo se acerca.', :release_date => Date.strptime('07/13/2017', '%m/%d/%Y')},
          {:title => 'Blade Runner 2049', :description => 'Treinta años después de los eventos del primer film, un nuevo blade runner, K (Ryan Gosling) descubre un secreto largamente oculto que podría acabar con el caos que impera en la sociedad. El descubrimiento de K le lleva a iniciar la búsqueda de Rick Deckard (Harrison Ford), un blade runner al que se le perdió la pista hace 30 años.', :release_date => Date.strptime('10/03/2017', '%m/%d/%Y')},
          {:title => 'The Mummy', :description => 'A pesar de estar enterrada en una tumba en lo más profundo del desierto, una antigua princesa (Sofia Boutella) cuyo destino le fue arrebatado injustamente, se despierta en la época actual, trayendo consigo una maldición que ha crecido hasta límites insospechados con el paso de miles de años.', :release_date => Date.strptime('06/09/2017', '%m/%d/%Y')},
          {:title => 'Saw VIII', :description => 'Jigsaw está de vuelta. En esta ocasión atrapará a cinco personas y las enfrentará en una serie de juegos sangrientos como castigo por sus delitos. Al mismo tiempo tiene lugar una investigación en la que científicos forenses tratan de encontrar y capturar al asesino, con la sospecha de que alguien del equipo puede ser el responsable.', :release_date => Date.strptime('10/26/2017', '%m/%d/%Y')},
          {:title => 'Suburbicon', :description => 'Un misterio criminal ambientado en un tranquilo pueblo familiar de Suburbicon durante los años 50, donde lo mejor y lo peor de la humanidad se ve reflejado en las vidas de la gente corriente. Cuando un allanamiento de morada se vuelve mortal, una familia aparentemente perfecta empezará a hacer uso del chantaje, la venganza y la traición.', :release_date => Date.strptime('10/27/2017', '%m/%d/%Y')},
          {:title => 'Beauty and the Beast', :description => 'Adaptación en imagen real del clásico de Disney "La bella y la bestia", que cuenta la historia de Bella (Emma Watson), una joven brillante y enérgica, que sueña con aventuras y un mundo que se extiende más allá de los confines de su pueblo en Francia. Independiente y reservada, Bella no quiere saber nada con el arrogante y engreído Gastón, quien la persigue sin descanso. Todo cambia un día cuando su padre Maurice (Kevin Kline) es encarcelado en el castillo de una horrible Bestia, y Bella se ofrece a intercambiarse con su padre y queda recluida en el castillo. Rápidamente se hace amiga del antiguo personal del lugar, que fue transformado en objetos del hogar tras una maldición lanzada por una hechicera.', :release_date => Date.strptime('03/16/2017', '%m/%d/%Y')},
          {:title => 'Cars 3', :description => 'Sorprendido por una nueva generación de corredores ultrarrápidos, el legendario Rayo McQueen queda relegado repentinamente del deporte que tanto ama. Para retomar su carrera, va a necesitar la ayuda de una joven mecánica de carreras, Cruz Ramírez, que tiene su propio plan para ganar, además de la inspiración del fallecido Fabuloso Hudson Hornet y un par de giros inesperados. ¡Y para probar que el nº95 no está ni mucho menos acabado, el campeón tendrá que poner a prueba su valía en el gran circuito de la Copa Piston!', :release_date => Date.strptime('06/15/2017', '%m/%d/%Y')},
          {:title => 'Cars 4', :description=> 'pelicula numero 17', :release_date => Date.strptime('06/15/2017', '%m/%d/%Y')},
          {:title => 'Cars 5', :description=> 'pelicula numero 18', :release_date => Date.strptime('06/15/2017', '%m/%d/%Y')},
          {:title => 'Cars 6', :description=> 'pelicula numero 19', :release_date => Date.strptime('06/15/2017', '%m/%d/%Y')},
          {:title => 'Cars 7', :description=> 'pelicula numero 20', :release_date => Date.strptime('06/15/2017', '%m/%d/%Y')},
        ]

movies.each do |movie|
  Movie.find_or_create_by(movie)
end

premieres = [
  {title: 'Insidious: The Last Key', prem_date: Date.strptime("01/05/2018", '%m/%d/%Y')},
  {title: 'Day of the dead: Bloodline', prem_date: Date.strptime("01/05/2018", '%m/%d/%Y')},
  {title: "Molly's Game", prem_date: Date.strptime("12/25/2018", '%m/%d/%Y')},
  {title: "Molly's Game", prem_date: Date.strptime("01/05/2018", '%m/%d/%Y')},
  {title: "Star Wars: The Last Jedi", prem_date: Date.strptime("12/15/2018", '%m/%d/%Y')},
  {title: "Jumanji: Welcome to the Jungle", prem_date: Date.strptime("12/20/2017", '%m/%d/%Y')},
  {title: "Avengers: Infinity War", prem_date: Date.strptime("04/25/2018", '%m/%d/%Y')},
  {title: "Black Panther", prem_date: Date.strptime("02/09/2018",'%m/%d/%Y')},
  {title: "The new Mutants", prem_date: Date.strptime("04/13/2018", "%m/%d/%Y")},
  {title: "Untitled Deadpool Sequel", prem_date: Date.strptime("05/31/2018",'%m/%d/%Y')},
  {title: "Ant-Man and the Wasp", prem_date: Date.strptime("07/06/2018",'%m/%d/%Y')},
  {title: "Jurassic World: Fallen Kingdom", prem_date: Date.strptime("06/22/2018",'%m/%d/%Y')},
  {title: "The Incredibles 2", prem_date: Date.strptime("06/14/2018",'%m/%d/%Y')},
  {title: "Pacific Rim: Insurrección", prem_date: Date.strptime("03/22/2018",'%m/%d/%Y')},
  {title: "Venom", prem_date: Date.strptime("10/05/2018",'%m/%d/%Y')},
  {title: "Tomb Raider", prem_date: Date.strptime("03/16/2018",'%m/%d/%Y')},
  {title: "Aquaman", prem_date: Date.strptime("12/21/2018",'%m/%d/%Y')},
  {title: "Maze Runner: The Death Cure", prem_date: Date.strptime("01/26/2018",'%m/%d/%Y')},
  {title: "Predator", prem_date: Date.strptime("08/03/2018",'%m/%d/%Y')},
  {title: "Ready Player One", prem_date: Date.strptime("03/30/2018",'%m/%d/%Y')}
]

premieres.each do |premier|
  Premiere.create!(premier)
end

20.times do |n|
  email = Faker::Internet.email
  password = Faker::Internet.password(6,8)
  member_type = [:free, :paid, :premium].sample
  months_of_membership = 0
  total_credits = [*0..100].sample  # First we assume it's a free account

  if member_type == :paid
    puts 'its paid so it gets '
    total_credits = [*200..2500].sample
    puts "#{total_credits} total credits and "
    months_of_membership = [1,2,3,4,5,6].sample
    puts "#{months_of_membership} months of membership "
  elsif member_type == :premium
    puts 'its premium so it gets '
    total_credits = [*1000..10000].sample
    puts "#{total_credits} total credits and "
    months_of_membership = [6,12].sample
    puts "#{months_of_membership} months of membership "
  end

  user = User.new(email: email, password: password, total_credits: total_credits, member_type: member_type, months_of_membership: months_of_membership)
  user.skip_confirmation!
  user.save!
end
gerry = User.new(email: "gerry_hd@live.com.mx", password: "chalo123")
gerry.skip_confirmation!
gerry.save!
Admin.create(email: 'admin@homie.mx', password: 'admin123', password_confirmation: 'admin123')
