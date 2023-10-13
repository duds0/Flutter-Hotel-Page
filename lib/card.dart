import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Cards extends StatelessWidget {
  Cards(
      {super.key,
      required this.onPress,
      required this.description,
      required this.localization,
      required this.networkImage,
      required this.url});

  Function onPress;
  String description;
  String localization;
  String networkImage;
  String url;

  @override
  Widget build(BuildContext context) {
    //-----
    return Container(
      padding: const EdgeInsets.all(2),
      //color: Colors.black,
      //height: 125,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(2),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    networkImage,
                    height: 125,
                    width: 125,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  //color: Colors.amber,
                  margin: const EdgeInsets.only(left: 10, top: 4),
                  padding: const EdgeInsets.only(left: 5),
                  child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          /*Descrição*/ description,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 4),
                          child: Text(
                            /*Localização*/ localization,
                            style: const TextStyle(
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                        Container(
                            padding: const EdgeInsets.only(top: 10),
                            height: 30,
                            //color: Colors.amber,
                            child: Row(
                              children: [
                                Text(
                                  url,
                                  style: const TextStyle(
                                      decoration: TextDecoration.underline),
                                ),
                              ],
                            )),
                        Container(
                          margin: const EdgeInsets.only(top: 8),
                          child: TextButton(
                            onPressed: () => onPress(),
                            style: ButtonStyle(
                              padding: const MaterialStatePropertyAll(
                                  EdgeInsets.only(left: 16, right: 16)),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  const Color(0xff0071C2)),
                            ),
                            child: const Text(
                              "Ir para o site",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            color: Color(0xff797979),
            thickness: 2,
          )
        ],
      ),
    );
  }
}
