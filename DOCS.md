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

## Stateful

Um widget que possui estado mutável.

Estado é a informação que (1) pode ser lida de forma síncrona quando o widget é construído e (2) pode mudar durante o tempo de vida do widget. É responsabilidade do implementador do widget garantir que o Estado seja imediatamente notificado quando tal estado for alterado, usando State.setState.

Um widget stateful é um widget que descreve parte da interface do usuário, construindo uma constelação de outros widgets que descrevem a interface do usuário de forma mais concreta. O processo de construção continua recursivamente até que a descrição da interface do usuário seja totalmente concreta (por exemplo, consiste inteiramente em RenderObjectWidgets, que descreve RenderObjects concretos).

Widgets com estado são úteis quando a parte da interface do usuário que você está descrevendo pode mudar dinamicamente, por exemplo, devido a ter um estado controlado por relógio interno ou dependendo de algum estado do sistema. Para composições que dependem apenas das informações de configuração no próprio objeto e no BuildContext no qual o widget está inflado, considere o uso de StatelessWidget.

## AnimatedContainer

Versão animada do Container que muda gradualmente seus valores ao longo do tempo.

O AnimatedContainer animará automaticamente entre os valores antigos e novos das propriedades quando eles mudam usando a curva e a duração fornecidas. As propriedades nulas não são animadas. Seu filho e descendentes não são animados.

Esta classe é útil para gerar transições implícitas simples entre diferentes parâmetros para Container com seu AnimationController interno. Para animações mais complexas, você provavelmente desejará usar uma subclasse de AnimatedWidget, como DecoratedBoxTransition, ou usar seu próprio AnimationController.

## InkWell class

Uma área retangular de um material que responde ao toque.

Para obter uma variante deste widget que não corta respingos, consulte InkResponse.

O diagrama a seguir mostra a aparência de um InkWell quando tocado, ao usar os valores padrão.

## Fechar ABD devices

```sh
adb kill-server
```

## Asserts

Durante o desenvolvimento, use uma declaração assert para interromper a execução normal se uma condição for falsa.

A instrução assert garante por exemplo, a manipulação de valores nulos durante o desenvolvimento, evitando possíveis erros em tempo de execução.