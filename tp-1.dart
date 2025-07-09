import 'dart:math';

class Student {
  String nom;
  int note;

  Student({required this.nom, int? note}) : note = note ?? 0;
}

class Animal {
  String nom;
  String type;
  int age;

  Animal(this.nom, this.type, this.age);

  String quiSuisJe() {
    return "Je m'appelle " +
        this.nom +
        ", je suis un " +
        this.type +
        " et j'ai " +
        this.age.toString() +
        " an" +
        (this.age > 1 ? "s" : "");
  }
}

void main() {
  var array = [
    "Ils ne savaient pas que c’était impossible, alors ils l’ont fait.",
    "Le succès, c’est se promener d’échec en échec tout en restant motivé.",
    "L’ouverture d’esprit n’est pas une fracture du crâne",
  ];
  for (var i = 0; i < 10; i++) {
    int randomInt = Random().nextInt(array.length);
    print(array[randomInt]);
  }

  Iterable<Animal> animaux = [
    Animal('Rex', 'chien', 4),
    Animal('Mimi', 'chat', 2),
    Animal('Titi', 'oiseau', 1),
    Animal('Caramel', 'cheval', 7),
    Animal('Nemo', 'poisson', 3),
  ];

  for (var animal in animaux) {
    print(animal.quiSuisJe());
  }

  Iterable<Student> students = [
    Student(nom: 'Alice', note: 15),
    Student(nom: 'Bob'), // note par défaut : 0
    Student(nom: 'Charlie', note: 12),
    Student(nom: 'Diana', note: 18),
    Student(nom: 'Evan', note: 9),
  ];

  for (var student in students) {
    print('${student.nom} a eu la note de ${student.note}');
  }
}
