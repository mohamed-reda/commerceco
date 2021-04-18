import 'package:flutter/material.dart';

import '../../../main.dart';

Widget itemsOfRegister(BuildContext context, validate,
    TextEditingController controller, hint, double i,
    {String ex,
    bool pass,
    FocusNode node,
    FocusNode nextNode,
    dynamic visible}) {
  return Column(
    crossAxisAlignment:
        MyApp.lang == true ? CrossAxisAlignment.start : CrossAxisAlignment.end,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(top: 2.0),
        child: Text(
          '$hint',
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontStyle: FontStyle.normal),
        ),
      ),
      TextFormField(
        focusNode: node,
        onFieldSubmitted: (String value) {
//          if(nextNode!=null){
          FocusScope.of(context).requestFocus(nextNode);
//          }
        },
        cursorColor: Colors.amberAccent,
//          decoration: BoxDecoration(
//              color: Colors.white30,
//              backgroundBlendMode:BlendMode.color,
//            border: Border.all(color: Colors.grey,),
//            borderRadius: BorderRadius.circular(15),
//
//          ),
        decoration: InputDecoration(
          suffix: pass != null
              ? InkWell(
                  child: Icon(
                    Icons.remove_red_eye,
                    color: pass ? Colors.black : Colors.green,
                  ),
                  onTap: () {
                    visible();
                  },
                )
              : null,
          hintStyle: new TextStyle(color: Colors.green[500]),
          labelStyle: new TextStyle(color: Colors.grey[900]),
          hintText: ex ?? hint,
          fillColor: Colors.white70,
        ),
        textAlign: MyApp.lang == true ? TextAlign.left : TextAlign.right,
        textDirection:
            MyApp.lang == true ? TextDirection.ltr : TextDirection.rtl,
        validator: (value) {
          return validate(value);
        },
        obscureText: pass ?? false,
        controller: controller,
        keyboardType: TextInputType.text,

//          decoration: InputDecoration(
//              hintStyle: new TextStyle(color: Colors.grey[500]),
//              labelStyle: new TextStyle(color: Colors.grey[900]),
//              hintText: '$hint',
//              labelText: Language.lang == true ? '$hint' : '',
//              fillColor: Colors.white70),
      ),
    ],
  );
}
