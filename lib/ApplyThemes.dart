import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'DownloadAsset.dart';
import 'DownloadTextFileWeb.dart';
import 'ThemeEntity.dart';

class ApplyThemes extends StatefulWidget {
  ApplyThemeState createState() => ApplyThemeState();
}

class ApplyThemeState extends State<ApplyThemes> {
  String _themeId = 'default';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _onThemeSelected(context, _themeId),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          ThemeEntity themeEntity = getColorEntity(snapshot.data);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              appBar: AppBar(
                title: Text('Themes Demo'),
                backgroundColor:
                    backgroundColorConvert(themeEntity.backgroundColor),
              ),
              body: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        themeOne(themeEntity.backgroundColor),
                        themeTwo(themeEntity.backgroundColor),
                        themeThree(themeEntity.backgroundColor),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Column(
                      children: [
                        Container(
                          height: 50,
                          color: backgroundColorConvert(
                              themeEntity.backgroundColor),
                          child: Center(
                            child: Text('Row1'),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 50,
                          color: backgroundColorConvert(
                              themeEntity.backgroundColor),
                          child: Center(
                            child: Text('Row2'),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 50,
                          color: backgroundColorConvert(
                              themeEntity.backgroundColor),
                          child: Center(
                            child: Text('Row3'),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        buttonOne(themeEntity.backgroundColor),
                        SizedBox(
                          height: 15,
                        ),
                        buttonTwo(themeEntity.backgroundColor),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }

  Widget themeOne(String backgroundColor) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            border: Border.all(
          color: backgroundColorConvert(backgroundColor),
        )),
        child: Text(
          'Theme 1 - Red',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 13,
            color: backgroundColorConvert(backgroundColor),
          ),
        ),
      ),
      onTap: () {
        setState(() {
          _themeId = 'red';
        });
      },
    );
  }

  Widget themeTwo(String backgroundColor) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            border: Border.all(
          color: backgroundColorConvert(backgroundColor),
        )),
        child: Text(
          'Theme 2 - blue',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 13,
            color: backgroundColorConvert(backgroundColor),
          ),
        ),
      ),
      onTap: () {
        setState(() {
          _themeId = 'blue';
        });
      },
    );
  }

  Widget themeThree(String backgroundColor) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            border: Border.all(
          color: backgroundColorConvert(backgroundColor),
        )),
        child: Text(
          'Theme 3 - green',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 13,
            color: backgroundColorConvert(backgroundColor),
          ),
        ),
      ),
      onTap: () {
        setState(() {
          _themeId = 'green';
        });
      },
    );
  }

  Widget buttonOne(String backgroundColor) {
    return RaisedButton(
      child: Text('Download Assets'),
      color: backgroundColorConvert(backgroundColor),
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DownloadAsset(title: 'Download Assets'),
        ));
      },
    );
  }

  Widget buttonTwo(String backgroundColor) {
    return RaisedButton(
      child: Text('Download for Web'),
      color: backgroundColorConvert(backgroundColor),
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DownloadTextFileWeb(),
        ));
      },
    );
  }

  Future<String> _onThemeSelected(BuildContext context, String themeId) async {
    var themeStr;
    await rootBundle.loadString('assets/themes/$themeId.json').then((value) {
      themeStr = value;
    });
    return themeStr;
  }

  Color backgroundColorConvert(String backgroundColor) {
    try {
      return new Color(
          int.parse(backgroundColor.substring(1, 7), radix: 16) + 0xFF000000);
    } catch (e) {
      return Color(0xFFCCCCCC).withOpacity(1);
    }
  }

  ThemeEntity getColorEntity(snapshotThemedata) {
    var jsondata = json.decode(snapshotThemedata);
    ThemeEntity themeEntity = ThemeEntity.fromJson(jsondata);
    return themeEntity;
  }
}
