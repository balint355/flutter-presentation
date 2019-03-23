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
- De: minden `Widget` *immutable*
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