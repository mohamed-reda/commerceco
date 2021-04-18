import 'package:flutter/material.dart';

import '../../../ui/localization/Language.dart';
import 'register_provider.dart';

// ignore: must_be_immutable
class DropMenu extends StatelessWidget {
  ProviderOfRegister providerOfRegister;

  FutureBuilder<void> f;

  DropMenu(this.providerOfRegister) {
//    if (providerOfRegister.showArea = false)
    providerOfRegister.getAreasFromInternet();
  }

  @override
  Widget build(BuildContext context) {
//    print('providerOfRegister.areaNow ${providerOfRegister.areaNow}');
    if (providerOfRegister.getStringListOfAreas().isEmpty) {
      return IconButton(
        icon: Icon(Icons.sync),
        onPressed: () {
          providerOfRegister.getAreasFromInternet();
        },
      );
    } else {
      return DropdownButton<String>(
        value: providerOfRegister.areaNow,
        hint: new Text(
          Language.myLanguage().area,
          style: new TextStyle(
            color: Colors.grey[900],
            fontSize: 18,
          ),
        ),
        onChanged: (String newValue) {
          providerOfRegister.select(newValue);
        },
        items: providerOfRegister
            .getStringListOfAreas()
            .map<DropdownMenuItem<String>>(
          (String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          },
        ).toList(),
      );
    }

//      f= FutureBuilder(
//        initialData: CircularProgressIndicator(),
//        future: providerOfRegister.getAreasFromPresenter(),
//        builder: (context, a) {
//          if (a.hasData && a.connectionState == ConnectionState.done) {
//            return DropdownButton<String>(
//              value: providerOfRegister.areaNow,
//              hint: new Text(
//                Language.myLanguage().area,
//                style: new TextStyle(
//                  color: Colors.grey[900],
//                  fontSize: 18,
//                ),
//              ),
//              onChanged: (String newValue) {
//                providerOfRegister.select(newValue);
//              },
//              items: providerOfRegister
//                  .getStringListOfAreas()
//                  .map<DropdownMenuItem<String>>(
//                (String value) {
//                  return DropdownMenuItem<String>(
//                    value: value,
//                    child: Text(value),
//                  );
//                },
//              ).toList(),
//            );
//          } else if (a.connectionState == ConnectionState.done && a.hasError ||
//              a.data == null) {
//            return IconButton(
//              icon: Icon(Icons.sync),
//              onPressed: () {
//                print('aaaaa ${providerOfRegister.showArea}');
//                providerOfRegister.getAreasFromPresenter();
//                print('aaaaa ${providerOfRegister.showArea}');
//              },
//            );
//          } else {
//            return IconButton(
//              icon: Icon(Icons.sync),
//              onPressed: () {
//                print('aaaaa ${providerOfRegister.showArea}');
//                providerOfRegister.getAreasFromPresenter();
//                print('aaaaa ${providerOfRegister.showArea}');
//              },
//            );
//          }
//        });
  }
}

//                                IndexedStack(
//                                  index: providerOfRegister.showArea ? 1 : 0,
//                                  children: <Widget>[
//                                    IconButton(
//                                      icon: Icon(Icons.sync),
//                                      onPressed: () {
//                                        print(
//                                            'aaaaa ${providerOfRegister.showArea}');
//                                        providerOfRegister
//                                            .getAreasFromPresenter();
//                                      },
//                                    ),
//                                    DropdownButton<String>(
//                                      value: providerOfRegister.areaNow,
//                                      hint: new Text(
//                                        Language.myLanguage().area,
//                                        style: new TextStyle(
//                                          color: Colors.grey[900],
//                                          fontSize: 18,
//                                        ),
//                                      ),
//                                      onChanged: (String newValue) {
//                                        providerOfRegister.select(newValue);
//                                      },
//                                      items: providerOfRegister
//                                          .getStringListOfAreas()
//                                          .map<DropdownMenuItem<String>>(
//                                        (String value) {
//                                          return DropdownMenuItem<String>(
//                                            value: value,
//                                            child: Text(value),
//                                          );
//                                        },
//                                      ).toList(),
//                                    ),
//                                  ],
//                                ),
