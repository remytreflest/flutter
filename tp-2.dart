class Jedi extends Character {
  Jedi({
    required String name,
    required String species,
    required String homePlanet,
    required String affiliation,
    required int health,
  }) : super(
         name: name,
         species: species,
         homePlanet: homePlanet,
         affiliation: affiliation,
         health: health,
       );

  bool hasMasterOfForce() => true;

  usingLightSaber() {
    print("Je te brisse le crâne avec mon épée de lumière !");
  }
}

class Ewok extends Character {
  Ewok({
    required String name,
    required String species,
    required String homePlanet,
    required String affiliation,
    required int health,
  }) : super(
         name: name,
         species: species,
         homePlanet: homePlanet,
         affiliation: affiliation,
         health: health,
       );
  
  bool hasMasterOfForce() => false;
  usingLightSaber() {
    print("Je ne sais pas quoi faire avec çaaaaa !!!");
  }
}

abstract class Character {
  String name;
  String species;
  String homePlanet;
  String affiliation;
  int health;

  Character({
    required this.name,
    required this.species,
    required this.homePlanet,
    required this.affiliation,
    required this.health,
  });
  
  bool hasMasterOfForce();
  void usingLightSaber();
}

void main() {
  List<Character> personnages = [
    Jedi(
      name: "Luke Skywalker",
      species: "Humain",
      homePlanet: "Tatooine",
      affiliation: "Jedi Order",
      health: 100,
    ),
    Jedi(
      name: "Leia Organa",
      species: "Humaine",
      homePlanet: "Alderaan",
      affiliation: "Alliance Rebelle",
      health: 90,
    ),
    Ewok(
      name: "Yoda",
      species: "Yoda's species",
      homePlanet: "Dagobah",
      affiliation: "Jedi Order",
      health: 200,
    ),
  ];

  // Affichage et actions
  for (var perso in personnages) {
    print(
      "${perso.name} (${perso.species}) de ${perso.homePlanet} - Affiliation : ${perso.affiliation}, Santé : ${perso.health}",
    );
    if (perso.hasMasterOfForce()) {
      perso.usingLightSaber();
    }
    print("-----");
  }
}