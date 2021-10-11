## Dart

https://dart.dev/guides

## Scaffold

Uma Widget importante em Flutter é a Scaffold, que permite montar a estrutura básica de uma tela, adicionando itens como AppBar, FloatingActionButton, BottomNavigationBar, Drawer, além do próprio conteúdo da tela. As Widgets podem ser combinadas para criar diversos layouts.

## Functions

#### Functions

```dart
bringVegetables({@required bool thalia, int ruppes = 100}) {
    // Somethings
}

bringVegetables(thalia: true)
```

## UNDRAW

Open-source illustrations for any idea you can imagine and create.

#### https://undraw.co/

## Search docs

https://pub.dev/

## SingleChildScrollView

Uma caixa na qual um único widget pode ser rolado.

Este widget é útil quando você tem uma única caixa que normalmente estará totalmente visível, por exemplo, um mostrador de relógio em um seletor de tempo, mas você precisa se certificar de que pode ser rolado se o contêiner ficar muito pequeno em um eixo (a direção de rolagem )

Também é útil se você precisar encolher em ambos os eixos (a direção de rolagem principal, bem como o eixo cruzado), como pode ser visto em uma caixa de diálogo ou menu pop-up. Nesse caso, você pode emparelhar SingleChildScrollView com um filho ListBody.

Quando você tem uma lista de filhos e não exige um comportamento de encolhimento de eixo cruzado, por exemplo, uma lista de rolagem que sempre tem a largura da tela, considere ListView, que é muito mais eficiente que um SingleChildScrollView contendo um ListBody ou Column com muitos filhos.