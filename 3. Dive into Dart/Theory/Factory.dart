/*
        Паттерн factory является порождающим паттерном 
    проектирования, используемым для создания объектов без определения их 
    конкретных классов. Другими словами, для обеспечения более гибкого создания объектов из иерархии классов. Вместо того чтобы напрямую создавать объекты с помощью new, Factory паттерн предполагает использование общего интерфейса, который может создавать объекты различных классов.
*/

//Иерархия классов
abstract class Animal {
  void speak();
}

class Cat implements Animal {
  @override
  void speak() {
    print('Meow');
  }
}

class Dog implements Animal {
  @override
  void speak() {
    print('Woof');
  }
}

//Класс, реализующий паттерн Фабрика
class AnimalFactory {
  static Animal createAnimal(String animalType) {
    switch (animalType.toLowerCase()) {
      case 'cat':
        return Cat();
      case 'dog':
        return Dog();
      default:
        throw ArgumentError('Invalid animal type: $animalType');
    }
  }
}

//Downcasting и использование factory
void main() {
  Animal cat = AnimalFactory.createAnimal('cat');
  cat.speak(); // вывод: Meow

  Animal dog = AnimalFactory.createAnimal('dog');
  dog.speak(); // вывод: Woof
}