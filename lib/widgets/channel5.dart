import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Channel5 extends StatefulWidget {
  const Channel5({
    super.key,
  });

  @override
  State<Channel5> createState() => _Channel5State();
}

int progress = 0;

class _Channel5State extends State<Channel5> {
  late WebViewController controller;
  double progressValue = 0.0;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(NavigationDelegate(
        onProgress: (progressValue) {
          setState(() {
            progress = progressValue;
          });
          debugPrint('WebView is loading (progress: $progressValue%)');
        },
        onPageStarted: (String url) {
          setState(() {
            progress = 0.0 as int;
          });
        },
        onPageFinished: (String url) {
          setState(() {
            progress = 100.0 as int;
          });
        },
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          if (request.url.startsWith('https://watch.finalshout.org/final-shouts-landscape/')) {
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ))
      ..loadRequest(Uri.parse('https://watch.finalshout.org/final-shouts-landscape/'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          WebViewWidget(controller: controller),
          if (progress < 100.0)
            Center(
              child: CircularProgressIndicator(
                value: progress / 100.0,
                color: Colors.green,
              ),
            ),
        ],
      ),
    );
  }
}
