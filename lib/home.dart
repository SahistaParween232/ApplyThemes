import 'package:applythemes/theme_bloc/ThemeProvider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ResponsiveBodyWidget.dart';
import 'ResponsivePage.dart';
import 'Theme_Dark_Light.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeBloc = ThemeProvider.of(context);
    return StreamBuilder(
        stream: themeBloc.themeData,
        builder: (context, snapshot) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: ResponsivePage(
                  widget: bottomWithBodyWidget(context, _homeContent(context))),
              theme: themeBloc.getTheme(buildLightTheme()));
        });
  }

  //todo home content widget
  Widget _homeContent(context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 60, 10, 0),
      child: Card(
        child: Container(

          padding: EdgeInsets.fromLTRB(10, 60, 10,0),
          color: Colors.black12,
          /*child: Column(
        children: [
          Text(
            'Vams3.1 dkdkdkdkdkkdkddkkdkkdkdkdkdkkdkkdkdkdkdkkdkdkd'
                'fhfhhfhfhfhfhfhfhhfhfhhfhhfhfhfhhfhfhfhfhhfhfhfhhfhfh'
                'dgdgdgdggdgdgdgggddggggggggggghhhhhhhhhhhhhhhhhhhhhhhh'
                'dfghjklllllllllllllllllllllllllllllll',
            style: TextStyle(
              color: Colors.cyan,
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextFormField(
            decoration: InputDecoration(
              filled: true,
              icon: const Icon(Icons.person),
              hintText: 'name',
              labelText: 'name',
            ),
          ),
          SizedBox(
            height: 15,
          ),
          RaisedButton(
              textColor: Colors.cyan,
              child: Text('dfghjklllllllllllllllllllllllllllllll'),
              onPressed: () {})
        ],
      ),*/
        ),));

  }



}
