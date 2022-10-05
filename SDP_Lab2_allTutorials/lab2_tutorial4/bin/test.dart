enum Gfg { Welcome, to, GeeksForGeeks }

void main() {
  // Assign a value from
  // enum to a variable geek
  var geek = Gfg.GeeksForGeeks;

  // Switch-case
  switch (geek) {
    case Gfg.Welcome:
      print("This is not the correct case.");
      break;
    case Gfg.to:
      print("This is not the correct case.");
      break;
    case Gfg.GeeksForGeeks:
      print("This is the correct case.");
      break;
  }
}
