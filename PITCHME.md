# Flutter

---

## Mi is az a Flutter?

- Cross platform alkalmazás fejlesztő keretrendszer
- Gyors fejlesztés Androidra és iOS-re
- Natívhoz közeli teljesítmény

---

## Flutter alapok

- Dart programozási nyelv
- Az alkalmazás felülete Widget-ekből épül fel
- Hot reload: az alkalmazás teljes újrafordítása nélkül tesztelhetjük a változtatásokat

+++

## Pár szó a Widget-ekről

- Kb. mint egy androidos View
- De: minden Widget *immutable*
- Widget lehet:
    - Stateless: nincs állapota, nem akarjuk változtatni (pl. egy fix kép, logó)
    - Stateful: tartozik hozzá egy State objektum, akkor hasznos, ha változik a tartalma pl. felhasználó csinálhat vele valamit
- Minden Widget minden frame-ben újra kirajzolódik (meghívódik a `build` függvénye)