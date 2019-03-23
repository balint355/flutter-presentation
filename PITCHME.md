# Flutter

---

## Mi is az a Flutter?

- Cross platform alkalmazás fejlesztő keretrendszer
- Gyors fejlesztés Androidra és iOS-re
- Natívhoz közeli teljesítmény

---

## Flutter alapok

- Dart programozási nyelv
- Az alkalmazás felülete `Widget`-ekből épül fel
- Hot reload: az alkalmazás teljes újrafordítása nélkül tesztelhetjük a változtatásokat

---

## Pár szó a Widget-ekről

- Kb. mint egy androidos `View`
- De: minden `Widget` _immutable_
- Kétféle `Widget`:
  - Stateless
  - Stateful
- Minden `Widget` minden frame-ben újra kirajzolódik, új példány jön létre (meghívódik a `Widget` `build` függvénye)

+++

## Stateless Widget

- Nincs állapota
- Nem akarjuk változtatni
- Pl. egy fix kép, logo

+++

## Stateful Widget

- Tartozik hozzá egy `State` objektum
- A tartalma változik, pl. felhasználó valamit csinálhat vele
- A `State` objektum tárolja a hozzá tartozó adatokat, amik változnak

---

# Dart bevezető

---

## Hello world!

```dart
void main() {
  print('Hello world!');
}
```

Rövidebben, egysoros függvényeknél, vagy ha csak egy `return`-ből áll:

```dart
void main() => print('Hello world!');
```

---

## Dart nyelv jellemzői

- Magas szintű
- Erősen típusos
- Objektumorientált (is)

---

## Változók

- Beépített típusok: `int`, `String`, `List`, `bool`...
- Minden, ami egy változóban lehet, objektum
- Minden változó alapértéke `null` (még a számoké is, mivel a számok is objektumok)
- Típus annotáció opcionális:

```dart
var number = 42;
```

```dart
int number = 42;
```

- Lokális változóknál általában `var`, egyébként jelöljük a típust

---

## Függvények

- A függvények is objektumok, típusuk `Function`
