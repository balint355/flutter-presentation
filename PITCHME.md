# Flutter

---

### Mi is az a Flutter?

- Cross platform alkalmazás fejlesztő keretrendszer
- Gyors fejlesztés Androidra és iOS-re
- Natívhoz közeli teljesítmény

---

### Flutter alapok

- Dart programozási nyelv
- Az alkalmazás felülete `Widget`-ekből épül fel
- Hot reload: az alkalmazás teljes újrafordítása nélkül tesztelhetjük a változtatásokat

---

### Pár szó a Widget-ekről

- Kb. mint egy androidos `View`
- De: minden `Widget` _immutable_
- Kétféle `Widget`:
  - Stateless
  - Stateful
- Minden `Widget` minden frame-ben újra kirajzolódik, új példány jön létre (meghívódik a `Widget` `build` függvénye)

+++

### Stateless Widget

- Nincs állapota
- Nem akarjuk változtatni
- Pl. egy fix kép, logo

+++

### Stateful Widget

- Tartozik hozzá egy `State` objektum
- A tartalma változik, pl. felhasználó valamit csinálhat vele
- A `State` objektum tárolja a hozzá tartozó adatokat, amik változnak

---

## Dart bevezető

---

### Hello world!

```dart
void main() {
  print('Hello world!');
}
```

---

### Dart nyelv jellemzői

- Magas szintű
- Erősen típusos
- Objektumorientált (is)

---

### Változók

- Beépített típusok: `int`, `double`, `String`, `List`, `bool`...
- Minden, ami egy változóban lehet, objektum
- Minden változó alapértéke `null`
- Típus annotáció opcionális

```dart
var number = 42;
```

```dart
int number = 42;
```

---

### Függvények

- A függvények is objektumok, típusuk `Function`
- Más nyelvekhez hasonlók
- Lehetnek opcionális paraméterek

```dart
bool isEven(int a) {
  return a % 2 == 0;
}
```

Arrow syntax, ha csak egy `return` van a függvényben

```dart
bool isEven(int a) => a % 2 == 0;
```

+++

### Optional named parameters

- Opcionális paraméterek, a nevükkel adhatjuk meg őket a függvény hívásakor
- Lehet alapértelmezett értékük

```dart
String gyumolcsFa({String gyumolcs = 'alma'}) {
  return gyumolcs + 'fa';
}

void main() {
  String fa = gyumolcsFa();
  String kortefa = gyumolcsFa(gyumolcs: 'Körte');

  print(fa);        // almafa
  print(kortefa);   // Körtefa
}
```

### Optional positional parameters

- Csak a paraméterlista végén lehetnek
- Lehet alapértelmezett értékük

```dart
double add(num a, num b, [num c, num d]) {
  return c == null ? a + b : d == null ? a + b + c : a + b + c + d;
}

void main() {
  print(add(2, 4.5));
  print(add(2, 4.5, 3));
  print(add(2, 4.5, 3, -5));
}
```

### Névtelen függvények

- *Anonymous function, lambda, closure*

```dart
void main() {
  var list = ['pen', 'pineapple'];
  list.forEach((item) {
    print('I have a $item');
  });
}
```