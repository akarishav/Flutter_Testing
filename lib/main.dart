import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(eazyiot());

class eazyiot extends StatelessWidget {
  late WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter WebView',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Eazyiot"),
        ),
        body: Center(
          child: WebView(
            initialUrl: 'https://uat.eazyiot.in',
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController WebViewController) {
              _controller = WebViewController;
            },
          ),
        ),
      ),
    );
  }
}
