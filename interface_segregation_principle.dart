void main() {
  print("Interface Segregetion principle ========");

  /*

  The Interface Segregation Principle states that clients should not be forced to depend on methods they do not use.


  Real life example

  =============================
  Imagine you're a gym instructor offering various fitness classes. 
  You have a single membership option that grants access to all classes, 
  even those someone might not be interested in,
   like Zumba or Yoga. This can be frustrating for members who only want specific classes and creates unnecessary
    clutter in their schedules.
  
  */

  // ccreating instance of the classes

  InjectPrinter injectPrinter = InjectPrinter();
  LaserPrinter laserPrinter = LaserPrinter();
// calling the printing function
  printDocument(injectPrinter, 'mydocument');
// calling the scan able function
  scanable(laserPrinter, 'mydocument');
}

// defining global function to reduce the coplexity
void printDocument(Printable printer, String document) {
  printer.printDocument(document);
}

void scanable(Scanable scan, String document) {
  scan.scanDocument(document);
}

abstract class Printable {
  void printDocument(String document);
}

abstract class Scanable {
  void scanDocument(String document);
}

abstract class faxAble {
  void faxDocument(String document);
}

class InjectPrinter implements Printable {
  @override
  printDocument(String documentName) {
    print('$documentName is printting');
  }
}

class LaserPrinter implements Printable, Scanable {
  @override
  printDocument(String documentName) {
    print('printing $documentName using laser printer');
  }

  @override
  scanDocument(String documentName) {
    print('$documentName is scanning');
  }
}
