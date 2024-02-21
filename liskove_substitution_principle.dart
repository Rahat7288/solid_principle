void main() {
  print("  Liskove Substitution Principle.............");

/**
 * Imagine you're building furniture:

You have a base class called Chair. Every Chair has legs and a seat, and you can use them to sit down.
Now, you want to create different types of chairs: DiningChair, Armchair, and OfficeChair.
If LSP is violated:

You create a DiningChair subclass that inherits from Chair. However, the DiningChair also has a back support,
 which is not required by the Chair base class.
Using a DiningChair in code expecting a regular Chair might lead to issues.
 For example, a function calculating how many chairs fit in a room might miscount 
 if it assumes all chairs have the same dimensions.
This violates LSP because the DiningChair doesn't fully fulfill the expectations of the Chair class.
If LSP is followed:

You ensure all subclasses (like DiningChair) fulfill the core contract of the
 Chair class: they have legs and a seat and can be used for sitting.
Any additional features of specific chairs (like back support) are implemented separately.
This way, you can use any type of chair interchangeably where a 
Chair is expected, without unexpected behavior. This demonstrates how LSP promotes code reliability and flexibility.
 */

  Ostrich ostrich = Ostrich();

  ostrich.fly();
}

abstract class Bird {
  void fly();
}

class Sparrow implements Bird {
  @override
  void fly() {
    print('Sparrow can fly');
  }
}

class Ostrich implements Bird {
  @override
  void fly() {
    print("You know Ostrich can't fly right?");
  }
}
