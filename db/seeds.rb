Type.destroy_all
Brand.destroy_all
Album.destroy_all
Info.destroy_all
Power.destroy_all
Promo.destroy_all
Product.destroy_all










puts "--------------------Création du seed - START--------------------"






puts "Création des users - START"

# ------------------------- Création des users ------------------------- #


    user1 = User.create!(email: 'agaloppe@me.com', password: '1234soleil')
    user2 = User.create!(email: 'audric.agalops@gmail.com', password: '1234soleil')


# ------------------------- Création des users ------------------------- #



    puts "----------------------------------------------------"
    puts "ADMIN-USERS"
    puts "----------------------------------------------------"
    puts "** 1 **/ #{user1.email} / Password: #{user1.password}"
    puts "** 2 **/ #{user2.email} / Password: #{user2.password}"
    puts "----------------------------------------------------"


puts "Création des users - END"






puts "Création des types de stores - START"

# ------------------------- Création des types de stores ------------------------- #


    moustiquaire =      Type.create!(name: 'moustiquaire', color:'#007CB9')
    porte_de_garage =   Type.create!(name: 'porte de garage', color:'#007CB9')
    store_interieur =   Type.create!(name: 'store interieur', color:'#007CB9')
    store_exterieur =   Type.create!(name: 'store exterieur', color:'#007CB9')
    menuiserie =        Type.create!(name: 'menuiserie', color:'#007CB9')
    pergola =           Type.create!(name: 'pergola', color:'#007CB9')
    volet_roulant =     Type.create!(name: 'volet roulant', color:'#007CB9')


# ------------------------- Création des types de stores ------------------------- #


    puts "----------------------------------------------------"
    puts "CATEGORIES"
    puts "----------------------------------------------------"
    puts "** 1 **/ #{moustiquaire.name} / Couleur: #{moustiquaire.color}"
    puts "** 2 **/ #{porte_de_garage.name} / Couleur: #{porte_de_garage.color}"
    puts "** 3 **/ #{store_interieur.name} / Couleur: #{store_interieur.color}"
    puts "** 4 **/ #{store_exterieur.name} / Couleur: #{store_exterieur.color}"
    puts "** 5 **/ #{menuiserie.name} / Couleur: #{menuiserie.color}"
    puts "** 6 **/ #{pergola.name} / Couleur: #{pergola.color}"
    puts "** 7 **/ #{volet_roulant.name} / Couleur: #{volet_roulant.color}"
    puts "----------------------------------------------------"


puts "Création des types de stores - END"









puts "Création des stores - START"

# ------------------------- Création des stores ------------------------- #




    # ---- Création des moustiquaires ---- #



        mousty01 = Product.create!(title: 'Moustiquaire plissée', type: moustiquaire , description: 'Plisséa est la moustiquaire idéale pour porte et baies vitrées', photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        mousty02 = Product.create!(title: 'Moustiquaire enroulable', type: moustiquaire , description: 'Saga est une moustiquaire à enroulement vertical pour les fenêtres ou à enroulement latéral pour les portes', photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        mousty03 = Product.create!(title: 'Moustiquaire à battant', type: moustiquaire , description: "Classique , la moustiquaire à battant Altesse se manoeuvre avec légèreté quel que soit le sens d'ouverture choisi", photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])


    puts " "
    puts " "
    # ---- Création des moustiquaires ---- #
    puts "----------------------------------------------------"
    puts "MOUSTIQUAIRES"
    puts "----------------------------------------------------"
    puts "** 1 **/ #{mousty01.title}"
    puts "** 2 **/ #{mousty02.title}"
    puts "** 3 **/ #{mousty03.title}"
    puts "----------------------------------------------------"

    puts " "
    puts " "


    # ---- Création des portes de garage ---- #



        porto01 = Product.create!(title: 'Sectionnelles', type: porte_de_garage , description: "Confort , design et technicité , decouvrez des modèles répondant à des besoins essentiels de sécurité", photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        porto02 = Product.create!(title: 'Traditionnelles', type: porte_de_garage , description: "Une vaste gamme sur mesure , traditionnelles , enroulables ou modernes répondant à tous les projets", photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])



    # ---- Création des portes de garage ---- #
    puts "----------------------------------------------------"
    puts "PORTES DE GARAGE"
    puts "----------------------------------------------------"
    puts "** 1 **/ #{porto01.title}"
    puts "** 2 **/ #{porto02.title}"
    puts "----------------------------------------------------"

    puts " "
    puts " "



    # ---- Création des stores interieurs ---- #



        inte01 = Product.create!(title: 'Stores Silhouette', type: store_interieur , description: "Doux jeux de lumières au gré de vos envies", photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        inte02 = Product.create!(title: 'Voiles Facette', type: store_interieur , description: "Tissu doux pour un dosage subtil de la lumière", photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        inte03 = Product.create!(title: 'Stores Duette', type: store_interieur , description: "Filtrez la lumière et isolez votre maison toute l'année", photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        inte04 = Product.create!(title: 'Stores Plissé', type: store_interieur , description: "Décoratifs et complices de votre maison", photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        inte05 = Product.create!(title: 'Stores Textiles', type: store_interieur , description: "Des tissus décoratifs , fabriqués sur mesure", photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        inte06 = Product.create!(title: 'Stores Vénitiens', type: store_interieur , description: "Modulez la lumière avec un design classique", photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        inte07 = Product.create!(title: 'Stores Vénitiens Bois', type: store_interieur , description: "La chaleur et la beauté de la nature dans votre maison", photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        inte08 = Product.create!(title: 'Stores Rouleaux', type: store_interieur , description: "Une touche personnelle pour marquer votre style", photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        inte09 = Product.create!(title: 'Stores Rouleaux Twist', type: store_interieur , description: "Variations de lumière pour une multitudes d'ambiances", photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        inte10 = Product.create!(title: 'Stores à Bandes Verticales', type: store_interieur , description: "Elégance en toute simplicité pour les larges baies", photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])


    # ---- Création des stores interieurs ---- #
    puts "----------------------------------------------------"
    puts "STORES INTERIEURS"
    puts "----------------------------------------------------"
    puts "** 1 **/ #{inte01.title}"
    puts "** 2 **/ #{inte02.title}"
    puts "** 3 **/ #{inte03.title}"
    puts "** 4 **/ #{inte04.title}"
    puts "** 5 **/ #{inte05.title}"
    puts "----------------------------------------------------"

    puts " "
    puts " "




    # ---- Création des stores exterieurs ---- #



        exte01 = Product.create!(title: 'Stores coffres', type: store_exterieur , description: "Design , robuste , le store coffre peut couvrir une largeur de près de 12m", photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        exte02 = Product.create!(title: 'Stores Monoblocs', type: store_exterieur , description: "Armature thermolaquée assurant à la fois résistance et discrétion", photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        exte03 = Product.create!(title: 'Stores Loggia', type: store_exterieur , description: "Pour une occultation presque totale de vos fenêtres", photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        exte04 = Product.create!(title: 'Stores Bannette', type: store_exterieur , description: "Adaptés aux grandes surfaces vitrées", photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        exte05 = Product.create!(title: 'Abris 2 pentes', type: store_exterieur , description: "Profitez de votre jardin en été sans avoir à souffrir du soleil", photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])



    # ---- Création des stores exterieurs ---- #
    puts "----------------------------------------------------"
    puts "STORES EXTERIEURS"
    puts "----------------------------------------------------"
    puts "** 1 **/ #{exte01.title}"
    puts "** 2 **/ #{exte02.title}"
    puts "** 3 **/ #{exte03.title}"
    puts "** 4 **/ #{exte04.title}"
    puts "** 5 **/ #{exte05.title}"
    puts "----------------------------------------------------"

    puts " "
    puts " "



    # ---- Création des menuiseries ---- #



        menui01 = Product.create!(title: 'Menui 1', type: menuiserie , description: 'test', photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        menui02 = Product.create!(title: 'Menui 2', type: menuiserie , description: 'test', photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        menui03 = Product.create!(title: 'Menui 3', type: menuiserie , description: 'test', photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        menui04 = Product.create!(title: 'Menui 4', type: menuiserie , description: 'test', photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        menui05 = Product.create!(title: 'Menui 5', type: menuiserie , description: 'test', photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])



    # ---- Création des menuiseries ---- #
    puts "----------------------------------------------------"
    puts "MENUISERIES"
    puts "----------------------------------------------------"
    puts "** 1 **/ #{menui01.title}"
    puts "** 2 **/ #{menui02.title}"
    puts "** 3 **/ #{menui03.title}"
    puts "** 4 **/ #{menui04.title}"
    puts "** 5 **/ #{menui05.title}"
    puts "----------------------------------------------------"

    puts " "
    puts " "



    # ---- Création des pergolas ---- #



        pergo01 = Product.create!(title: 'Pergolas toiles', type: pergola , description: "Entrez dans un nouvel univers , où intérieur et extérieur se confondent", photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        pergo02 = Product.create!(title: 'Pergolas Bioclimatiques', type: pergola , description: "Profitez d'un espace extérieur protégé", photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])



    # ---- Création des pergolas ---- #
    puts "----------------------------------------------------"
    puts "PERGOLAS"
    puts "----------------------------------------------------"
    puts "** 1 **/ #{pergo01.title}"
    puts "** 2 **/ #{pergo02.title}"
    puts "----------------------------------------------------"

    puts " "
    puts " "



    # ---- Création des volets roulants ---- #



        volet01 = Product.create!(title: 'Volet 1', type: volet_roulant , description: 'test', photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        volet02 = Product.create!(title: 'Volet 2', type: volet_roulant , description: 'test', photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        volet03 = Product.create!(title: 'Volet 3', type: volet_roulant , description: 'test', photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        volet04 = Product.create!(title: 'Volet 4', type: volet_roulant , description: 'test', photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        volet05 = Product.create!(title: 'Volet 5', type: volet_roulant , description: 'test', photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])



    # ---- Création des volets roulants ---- #
    puts "----------------------------------------------------"
    puts "VOLETS ROULANTS"
    puts "----------------------------------------------------"
    puts "** 1 **/ #{volet01.title}"
    puts "** 2 **/ #{volet02.title}"
    puts "** 3 **/ #{volet03.title}"
    puts "** 4 **/ #{volet04.title}"
    puts "** 5 **/ #{volet05.title}"
    puts "----------------------------------------------------"

    puts " "
    puts " "


# ------------------------- Création des stores ------------------------- #

puts "Création des stores - END"







puts "Création des infos - START"

# ------------------------- INFOS - Moustiquaires ------------------------- #


    Info.create!(title: 'info', content: 'info-test', product: mousty01 , icon: 'icon-fold')
    Info.create!(title: 'info', content: 'info-test', product: mousty02 , icon: 'icon-fold')
    Info.create!(title: 'info', content: 'info-test', product: mousty03 , icon: 'icon-fold')


# ------------------------- INFOS - Moustiquaires ------------------------- #


# ------------------------- INFOS - Portes de garage ------------------------- #


    Info.create!(title: 'info', content: 'info-test', product: porto01 , icon: 'icon-fold')
    Info.create!(title: 'info', content: 'info-test', product: porto02 , icon: 'icon-fold')


# ------------------------- INFOS - Portes de garage ------------------------- #


# ------------------------- INFOS - Stores intérieurs ------------------------- #


    Info.create!(title: 'info', content: 'info-test', product: inte01 , icon: 'icon-fold')
    Info.create!(title: 'info', content: 'info-test', product: inte02 , icon: 'icon-fold')
    Info.create!(title: 'info', content: 'info-test', product: inte03 , icon: 'icon-fold')
    Info.create!(title: 'info', content: 'info-test', product: inte04 , icon: 'icon-fold')
    Info.create!(title: 'info', content: 'info-test', product: inte05 , icon: 'icon-fold')


# ------------------------- INFOS - Stores intérieurs ------------------------- #



# ------------------------- INFOS - Stores exterieurs ------------------------- #


    Info.create!(title: 'info', content: 'info-test', product: exte01 , icon: 'icon-fold')
    Info.create!(title: 'info', content: 'info-test', product: exte02 , icon: 'icon-fold')
    Info.create!(title: 'info', content: 'info-test', product: exte03 , icon: 'icon-fold')
    Info.create!(title: 'info', content: 'info-test', product: exte04 , icon: 'icon-fold')
    Info.create!(title: 'info', content: 'info-test', product: exte05 , icon: 'icon-fold')


# ------------------------- INFOS - Stores exterieurs ------------------------- #



# ------------------------- INFOS - Menuiseries ------------------------- #


    Info.create!(title: 'info', content: 'info-test', product: menui01 , icon: 'icon-fold')
    Info.create!(title: 'info', content: 'info-test', product: menui02 , icon: 'icon-fold')
    Info.create!(title: 'info', content: 'info-test', product: menui03 , icon: 'icon-fold')
    Info.create!(title: 'info', content: 'info-test', product: menui04 , icon: 'icon-fold')
    Info.create!(title: 'info', content: 'info-test', product: menui05 , icon: 'icon-fold')


# ------------------------- INFOS - Menuiseries ------------------------- #



# ------------------------- INFOS - Pergolas ------------------------- #


    Info.create!(title: 'info', content: 'info-test', product: pergo01 , icon: 'icon-fold')
    Info.create!(title: 'info', content: 'info-test', product: pergo02 , icon: 'icon-fold')


# ------------------------- INFOS - Pergolas ------------------------- #



# ------------------------- INFOS - Volets roulants ------------------------- #


    Info.create!(title: 'info', content: 'info-test', product: volet01 , icon: 'icon-fold')
    Info.create!(title: 'info', content: 'info-test', product: volet02 , icon: 'icon-fold')
    Info.create!(title: 'info', content: 'info-test', product: volet03 , icon: 'icon-fold')
    Info.create!(title: 'info', content: 'info-test', product: volet04 , icon: 'icon-fold')
    Info.create!(title: 'info', content: 'info-test', product: volet05 , icon: 'icon-fold')


# ------------------------- INFOS - Volets roulants ------------------------- #


puts "Création des infos - END"

















puts "Création des pouvoirs - START"

# ------------------------- POUVOIRS - Moustiquaires ------------------------- #


    pow_mous_01 = Power.create!(product: mousty01 , sun: false, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: false, taxsaver: false, insects: false, security: false, inside: true, outside: false, certification: false)
    pow_mous_02 = Power.create!(product: mousty02 , sun: false, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: false, taxsaver: false, insects: false, security: false, inside: true, outside: false, certification: false)
    pow_mous_03 = Power.create!(product: mousty03 , sun: false, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: false, taxsaver: false, insects: false, security: false, inside: true, outside: false, certification: false)


# ------------------------- POUVOIRS - Moustiquaires ------------------------- #
    puts "----------------------------------------------------"
    puts "----------------------------------------------------"
    puts "----------------------------------------------------"
    puts "POUVOIRS / MOUSTIQUAIRE / #{mousty01.title}"
    puts "----------------------------------------------------"
    puts "** 1 **/ Soleil : #{pow_mous_01.sun}"
    puts "** 2 **/ Pluie : #{pow_mous_01.rain}"
    puts "** 3 **/ Vent : #{pow_mous_01.wind}"
    puts "** 4 **/ Froid : #{pow_mous_01.cold}"
    puts "** 5 **/ Chaud : #{pow_mous_01.hot}"
    puts "----------------------------------------------------"
    puts "POUVOIRS / MOUSTIQUAIRE / #{mousty02.title}"
    puts "----------------------------------------------------"
    puts "** 1 **/ Soleil : #{pow_mous_02.sun}"
    puts "** 2 **/ Pluie : #{pow_mous_02.rain}"
    puts "** 3 **/ Vent : #{pow_mous_02.wind}"
    puts "** 4 **/ Froid : #{pow_mous_02.cold}"
    puts "** 5 **/ Chaud : #{pow_mous_02.hot}"
    puts "----------------------------------------------------"
    puts "POUVOIRS / MOUSTIQUAIRE / #{mousty03.title}"
    puts "----------------------------------------------------"
    puts "** 1 **/ Soleil : #{pow_mous_03.sun}"
    puts "** 2 **/ Pluie : #{pow_mous_03.rain}"
    puts "** 3 **/ Vent : #{pow_mous_03.wind}"
    puts "** 4 **/ Froid : #{pow_mous_03.cold}"
    puts "** 5 **/ Chaud : #{pow_mous_03.hot}"
    puts "----------------------------------------------------"
    puts "----------------------------------------------------"
    puts "----------------------------------------------------"



# ------------------------- POUVOIRS - Portes de garage ------------------------- #


    pow_pdg_01 = Power.create!(product: porto01 , sun: false, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: false, outside: false, certification: false)
    pow_pdg_02 = Power.create!(product: porto02 , sun: false, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: false, outside: false, certification: false)


# ------------------------- POUVOIRS - Portes de garage ------------------------- #
    puts "----------------------------------------------------"
    puts "----------------------------------------------------"
    puts "----------------------------------------------------"
    puts "POUVOIRS / PORTES DE GARAGES / #{porto01.title}"
    puts "----------------------------------------------------"
    puts "** 1 **/ Soleil : #{pow_pdg_01.sun}"
    puts "** 2 **/ Pluie : #{pow_pdg_01.rain}"
    puts "** 3 **/ Vent : #{pow_pdg_01.wind}"
    puts "** 4 **/ Froid : #{pow_pdg_01.cold}"
    puts "** 5 **/ Chaud : #{pow_pdg_01.hot}"
    puts "----------------------------------------------------"
    puts "POUVOIRS / PORTES DE GARAGES / #{porto02.title}"
    puts "----------------------------------------------------"
    puts "** 1 **/ Soleil : #{pow_pdg_02.sun}"
    puts "** 2 **/ Pluie : #{pow_pdg_02.rain}"
    puts "** 3 **/ Vent : #{pow_pdg_02.wind}"
    puts "** 4 **/ Froid : #{pow_pdg_02.cold}"
    puts "** 5 **/ Chaud : #{pow_pdg_02.hot}"
    puts "----------------------------------------------------"
    puts "----------------------------------------------------"
    puts "----------------------------------------------------"


# ------------------------- POUVOIRS - Stores intérieurs ------------------------- #


    Power.create!(product: inte01 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)
    Power.create!(product: inte02 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)
    Power.create!(product: inte03 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)
    Power.create!(product: inte04 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)
    Power.create!(product: inte05 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)


# ------------------------- POUVOIRS - Stores intérieurs ------------------------- #



# ------------------------- POUVOIRS - Stores exterieurs ------------------------- #


    Power.create!(product: exte01 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)
    Power.create!(product: exte02 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)
    Power.create!(product: exte03 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)
    Power.create!(product: exte04 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)
    Power.create!(product: exte05 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)


# ------------------------- POUVOIRS - Stores exterieurs ------------------------- #



# ------------------------- POUVOIRS - Menuiseries ------------------------- #


    Power.create!(product: menui01 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: true)
    Power.create!(product: menui02 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: true)
    Power.create!(product: menui03 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: true)
    Power.create!(product: menui04 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: true)
    Power.create!(product: menui05 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: true)


# ------------------------- POUVOIRS - Menuiseries ------------------------- #



# ------------------------- POUVOIRS - Pergolas ------------------------- #


    Power.create!(product: pergo01 , sun: true, rain: true, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)
    Power.create!(product: pergo02 , sun: true, rain: true, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)


# ------------------------- POUVOIRS - Pergolas ------------------------- #



# ------------------------- POUVOIRS - Volets roulants ------------------------- #


    Power.create!(product: volet01 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)
    Power.create!(product: volet02 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)
    Power.create!(product: volet03 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)
    Power.create!(product: volet04 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)
    Power.create!(product: volet05 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)


# ------------------------- POUVOIRS - Volets roulants ------------------------- #


puts "Création des pouvoirs - END"






























puts "Création des albums - START"

# ------------------------- Création des albums ------------------------- #


    Album.create!(name: 'porte de garage', type: porte_de_garage, photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1472658802/asbzfjhqc7xyspqoolxn.jpg","http://res.cloudinary.com/agaloppe84/image/upload/v1456127547/sample.jpg"])
    Album.create!(name: 'store exterieur', type: store_exterieur, photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1472658802/asbzfjhqc7xyspqoolxn.jpg","http://res.cloudinary.com/agaloppe84/image/upload/v1456127547/sample.jpg"])
    Album.create!(name: 'store interieur', type: store_interieur, photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1472658802/asbzfjhqc7xyspqoolxn.jpg","http://res.cloudinary.com/agaloppe84/image/upload/v1456127547/sample.jpg"])
    Album.create!(name: 'pergola', type: pergola, photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1472658802/asbzfjhqc7xyspqoolxn.jpg","http://res.cloudinary.com/agaloppe84/image/upload/v1456127547/sample.jpg"])
    Album.create!(name: 'menuiserie', type: menuiserie, photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1472658802/asbzfjhqc7xyspqoolxn.jpg","http://res.cloudinary.com/agaloppe84/image/upload/v1456127547/sample.jpg"])
    Album.create!(name: 'volet roulant', type: volet_roulant, photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1472658802/asbzfjhqc7xyspqoolxn.jpg","http://res.cloudinary.com/agaloppe84/image/upload/v1456127547/sample.jpg"])
    Album.create!(name: 'moustiquaire', type: moustiquaire, photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1472658802/asbzfjhqc7xyspqoolxn.jpg","http://res.cloudinary.com/agaloppe84/image/upload/v1456127547/sample.jpg"])


# ------------------------- Création des albums ------------------------- #

puts "Création des albums - END"






puts "Création des promos - START"

# ------------------------- Création des types de stores ------------------------- #


    Promo.create!(title: 'moustiquaire', description: "promo-test", start: Date.today + 2.months, end: Date.today + 3.months, type: moustiquaire, current: true, photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1472658802/asbzfjhqc7xyspqoolxn.jpg","http://res.cloudinary.com/agaloppe84/image/upload/v1456127547/sample.jpg"])
    Promo.create!(title: 'moustiquaire', description: "promo-test", start: Date.today + 3.months, end: Date.today + 4.months, type: pergola, current: true, photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1472658802/asbzfjhqc7xyspqoolxn.jpg","http://res.cloudinary.com/agaloppe84/image/upload/v1456127547/sample.jpg"])


# ------------------------- Création des types de stores ------------------------- #

puts "Création des promos - END"





puts "Création des marques - START"

# ------------------------- Création des marques ------------------------- #


    coublanc =      Brand.create!(name: 'coublanc', product: exte01, logo_url: 'http://res.cloudinary.com/agaloppe84/image/upload/v1471805960/v9g44efftzca2auuhelb.jpg')
    luxaflex =      Brand.create!(name: 'luxaflex', product: mousty02, logo_url: 'http://res.cloudinary.com/agaloppe84/image/upload/v1471805960/v9g44efftzca2auuhelb.jpg')
    franceferm =    Brand.create!(name: 'france fermetures', product: pergo01, logo_url: 'http://res.cloudinary.com/agaloppe84/image/upload/v1471805960/v9g44efftzca2auuhelb.jpg')
    franciaflex =   Brand.create!(name: 'franciaflex',  product: porto02, logo_url: 'http://res.cloudinary.com/agaloppe84/image/upload/v1471805960/v9g44efftzca2auuhelb.jpg')



# ------------------------- Création des marques ------------------------- #
    puts "----------------------------------------------------"
    puts "MARQUES"
    puts "----------------------------------------------------"
    puts "** 1 **/ #{coublanc.name}"
    puts "** 2 **/ #{luxaflex.name}"
    puts "** 3 **/ #{franceferm.name}"
    puts "** 4 **/ #{franciaflex.name}"
    puts "----------------------------------------------------"




puts "Création des marques - END"












puts "Création du seed - END"
