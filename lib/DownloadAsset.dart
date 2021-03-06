import 'dart:io';
import 'package:download_assets/download_assets.dart';
import 'package:flutter/material.dart';

class DownloadAsset extends StatefulWidget {
  final String title;

  DownloadAsset({Key key, this.title}) : super(key: key);

  @override
  _DownloadAssetState createState() => _DownloadAssetState();
}

class _DownloadAssetState extends State<DownloadAsset> {
  String message = "Press the download button to start the download";
  bool downloaded = false;

  @override
  void initState() {
    super.initState();
    DownloadAssetsController.init();
    _downloadAssets();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(message),
            //if (downloaded)
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: FileImage(
                      File("${DownloadAssetsController.assetsDir}/dart.jpeg")),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            //if (downloaded)
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: FileImage(File(
                      "${DownloadAssetsController.assetsDir}/flutter.png")),
                  fit: BoxFit.fitWidth,
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FloatingActionButton(
            heroTag: 'Btn1',
            onPressed: (){},//_downloadAssets,
            tooltip: 'Increment',
            child: Icon(Icons.arrow_downward),
          ),
          SizedBox(
            width: 25,
          ),
          FloatingActionButton(
            heroTag: 'Btn2',
            onPressed: _refresh,
            tooltip: 'Refresh',
            child: Icon(Icons.refresh),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Future _refresh() async {
    await DownloadAssetsController.clearAssets();
    await _downloadAssets();
  }

  Future _downloadAssets() async {
    bool assetsDownloaded =
        await DownloadAssetsController.assetsDirAlreadyExists();

    if (assetsDownloaded) {
      setState(() {
        message = "Click in refresh button to force download";
        print(message);
      });
      return;
    }

    try {
      await DownloadAssetsController.startDownload(
          assetsUrl:
              "https://github.com/edjostenes/download_assets/raw/master/assets.zip",
          onProgress: (progressValue) {
            downloaded = false;
            setState(() {
              message = "Downloading - ${progressValue.toStringAsFixed(2)}";
              print(message);
            });
          },
          onComplete: () {
            setState(() {
              message =
                  "Download compeleted\nClick in refresh button to force download";
              downloaded = true;
            });
          },
          onError: (exception) {
            setState(() {
              downloaded = false;
              message = "Error: ${exception.toString()}";
            });
          });
    } on DownloadAssetsException catch (e) {
      print(e.toString());
    }
  }

  bool isExists(File file) {
    bool fileExists = false;
    file.exists().then((value) => fileExists = value);
    return fileExists;
  }
}
