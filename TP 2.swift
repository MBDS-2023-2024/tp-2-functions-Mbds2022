// Fonction pour afficher les x premiers nombres pairs ou impairs :

func afficherNombres(pairs: Bool, nombre: Int) {
  var compteur = 0
  var nombreActuel = pairs ? 0 : 1

  while compteur < nombre {
    print(nombreActuel)
    compteur += 1
    nombreActuel += 2
  }
}
// Exemples d'utilisation
afficherNombres(pairs: true, nombre: 5) // Pour afficher les nombres pairs 
afficherNombres(pairs: false, nombre: 4) // Pour Afficher les nombres impairs



//Ecrire une fonction qui affiche les x premiers nombres de la suite Fibonacci

func afficherFibonacci(nombre: Int) {
  var a = 0
  var b = 1

  for _ in 0..<nombre {
    print(a)
    let temp = a
    a = b
    b = temp + b
  }
}
// Exemple d'utilisation
afficherFibonacci(nombre: 8) 



// Ecrire une fonction qui calcule le factoriel d’un nombre x, utiliser 10 par défaut si aucun nombre n’est spécifié.

func factoriel(nombre: Int = 10) -> Int {
  var resultat = 1

  for i in 1...nombre {
    resultat *= i
  }

  return resultat
}
// Exemples d'utilisation
let factoriel10 = factoriel() // Calcule 10! 
let factoriel5 = factoriel(nombre: 5) // Calcule 5!
print("Factoriel de 10 : \(factoriel10)")
print("Factoriel de 5 : \(factoriel5)")





// Ecrire une fonction qui affiche les x premiers nombres premiers
func afficherNombresPremiers(nombre: Int) {
  var nombresPremiers = [2] 
  var candidat = 3

  while nombresPremiers.count < nombre {
    var estPremier = true

    for nombrePremier in nombresPremiers {
      if candidat % nombrePremier == 0 {
        estPremier = false
        break
      }
    }

    if estPremier {
      nombresPremiers.append(candidat)
    }

    candidat += 2
  }

  print(nombresPremiers)
}
// Exemple d'utilisation
afficherNombresPremiers(nombre: 10) 
