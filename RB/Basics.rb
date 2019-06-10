#AFFICHER UN ÉLÉMENT, exemple : Hello World
puts "Hello World"

#CRÉATION DE VARIABLE
main_user = "Tukanebari"

user = main_user + "Bade" #Concaténation d'une variable

puts main_user #Exécution de ma variable
#------------------------------------------------------------------


#CRÉATION DE TABLEAU (Un tableau sert à afficher une série de chose)
utilisateurs = [
  "Alice", "Bob", "John"
]

utilisateurs << "Laura" #ajouter un élément dans un tableau

puts utilisateurs #Exécution des éléments de mon tableau

puts utilisateurs[3] #Exécution du 3eme élément de mon tableau // On compte à partir de 0 donc j'obtiens "Laura"
#------------------------------------------------------------------


#CRÉATION DE TABLES DE HASHAGE (Un hash sert à ranger des données que l'on retrouve à l'aide d'une clé)
mon_hash = { Alice: 10, Bob: 20}

mon_hash[:John] = 30 #Ajout d'une valeur à mon hash

puts mon_hash[:John]
#------------------------------------------------------------------


#CRÉATION DE BOUCLES (Boucles sur les tableaux et Boucles de répétition)
#Début Boucle de tableau
i = 0 #"i" me permet de décomposer les étapes de ma boucle
utilisateurs.each do |utilisateur| #.each do permet d'intégrer les éléments de ma variable "utilisateurs" à ma boucle "utilisateur"

  puts i #Tout d'abord, afficher "i"
  i = i + 1 #Puis une fois que "i" est affiché, sa valeur augmente de "+1"
  puts utilisateur #Ensuite, "utilisateur" s'affiche

end #fin de boucle de tableau

#Début Boucle de répétitions
10.times do |i|#Faire 10 fois ce que je demande d'afficher

  puts "Hello #{i}"
  i.times do #J'imbrique une boucle dans la boucle
  puts "World"
end #fin de l'imbrication

end #fin de boucle de répétition
#------------------------------------------------------------------

#CRÉATION DE CONDITIONS
a = 15

puts "a est égale à : #{a}" #Concaténation de ma variable

if a > 10 #Début de la condition : Si a est supérieur à 10 alors
  puts "A est supérieur à 10"
else #Sinon
  puts "A est inférieur à 10"
end #fin de la condition

#CRÉATION DE CONDITIONS DANS UN TABLEAU

emails = [
  "bob@bob.com", "jane@hello.com"
]

emails.each do |email| #Pour chaque tour de boucle, faire |email|
  puts email #Afficher email qui est "Emails"
  if email == "bob@bob.com" #Si
    puts "Bonjour Bob!" #Faire
  else #sinon
    puts "Vous n'êtes pas bob" #Faire
  end #Fin de if-else
end #Fin de la boucle

#COMBINER DES CONDITIONS

a = 9

if (a != 12 || a != 10) && a != "Hello" #Si a est DIFFÉRENT (!=) de 12 ou DIFFÉRENT (!=) de 10 ET (&&) DIFFÉRENT (!=) de "Hello"

  puts "OK!" #Alors Faire

end #Fin de la boucle et de ses conditions
#------------------------------------------------------------------

#LES BOOLÉENS

a = 15

mon_booleen = (a > 10) #Les booléens me permettent de savoir si une condition est vraie ou fausse 

puts mon_booleen

if mon_booleen
  puts "OK!"
end
