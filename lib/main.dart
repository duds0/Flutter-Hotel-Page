import 'package:flutter/material.dart';
import 'buttons.dart';
import 'card.dart';
import 'headerlist.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(),
        appBarTheme: const AppBarTheme(
          color: Color(0xff294D61),
        ),
      ),
      home: Scaffold(
        //backgroundColor: const Color(0xFF05161A),
        appBar: AppBar(
          leading: const IconButton(
              onPressed: null,
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
          actions: const [
            IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.map_sharp,
                  color: Colors.white,
                ))
          ],
          //backgroundColor: const Color(0xFF072E33),
          title: const Text("Pacote de Viagem"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Image(image: AssetImage("assets/muro.jpg")),
            Container(
              //color: Colors.amber,
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Kotel",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          "Jerusalem, Israel",
                          style: TextStyle(),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.green,
                      ),
                      Text(
                        "3.489",
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(25),
              child: Row(children: [
                Buttons(
                  onPress: () => {},
                  icon: Icons.phone,
                  text: "Ligar",
                ),
                Buttons(
                  onPress: () => {},
                  icon: Icons.pin_drop,
                  text: "Localização",
                ),
                Buttons(
                  onPress: () => {},
                  icon: Icons.share,
                  text: "Compartilhar",
                ),
              ]),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 5),
              child: const Text(
                "O Muro das Lamentações ou Muro Ocidental é o segundo local mais sagrado do judaismo, atras somente do Santo dos Santos, no monte do Templo. Trata-se do único vestigio.",
                textAlign: TextAlign.justify,
              ),
            ),
            const Divider(
              color: Color(0xff797979),
              indent: 25,
              endIndent: 25,
              thickness: 1,
            ),
            SizedBox(
              height: 40,
              //color: Colors.amber,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  HeaderList(
                    onPress: () => {},
                    text: "Hotéis",
                  ),
                  HeaderList(
                    onPress: () => {},
                    text: "Casas",
                  ),
                  HeaderList(
                    onPress: () => {},
                    text: "Resorts",
                  ),
                  HeaderList(
                    onPress: () => {},
                    text: "Apartamentos",
                  ),
                  HeaderList(
                    onPress: () => {},
                    text: "Pousadas",
                  ),
                  HeaderList(
                    onPress: () => {},
                    text: "Outros",
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
              height: 270 - 2.9,
              /* 243 */
              child: ListView(
                children: [
                  Cards(
                    networkImage:
                        "https://cf.bstatic.com/xdata/images/hotel/square200/480810540.webp?k=3623c602a0324b33f99f2e00dc0011a35b8acb41c8a1107ac498f3efc1643a88&o=",
                    description: "Apê Metrô Paraíso",
                    localization: "Vila Mariana, São Paulo",
                    url: "www.booking.com",
                    onPress: () => {},
                  ),
                  Cards(
                    networkImage:
                        "https://cf.bstatic.com/xdata/images/hotel/square200/495876765.webp?k=00968be167ac7f58ccaef7d601f3087471c51c582a05db08f8caf61501bd0bb2&o=",
                    description: "Studio Completo Allianz P.",
                    localization: "Allianz Parque, São Paulo",
                    url: "www.airbnb.com.br",
                    onPress: () => {},
                  ),
                  Cards(
                    networkImage:
                        "https://cf.bstatic.com/xdata/images/hotel/square200/449954146.webp?k=8e22dc2a06bffeb3696ea8c49c76d9d44e29dd278fb288013975eb9d90283f86&o=",
                    description: "Apê Metrô Higienópolis",
                    localization: "Centro de São Paulo, São Paulo",
                    url: "www.trivago.com",
                    onPress: () => {},
                  ),
                  Cards(
                    networkImage:
                        "https://cf.bstatic.com/xdata/images/hotel/square200/295787269.webp?k=9446d3203db1d1988381bb113c9f49726f844a16c4abcc8e8ec0e19e1c56be6a&o=",
                    description: "Meliá Paulista",
                    localization: "Cerqueira César, São Paulo",
                    url: "www.hoteis.com",
                    onPress: () => {},
                  ),
                  Cards(
                    networkImage:
                        "https://cf.bstatic.com/xdata/images/hotel/square200/433482396.webp?k=269b366ff5d3c057367760fb9a4416bf3f6ab020625dbd82c24f36159e096c54&o=",
                    description: "Cozzy Suites Paraíso Hotel",
                    localization: "Vila Mariana, São Paulo",
                    url: "www.kayak.com.br",
                    onPress: () => {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
