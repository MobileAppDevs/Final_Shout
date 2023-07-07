import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Channel3 extends StatefulWidget {
  const Channel3({
    super.key,
  });

  @override
  State<Channel3> createState() => _Channel3State();
}

int progress = 0;

class _Channel3State extends State<Channel3> {
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
          if (request.url.startsWith('https://watch.finalshout.org/youth/')) {
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ))
      ..loadRequest(Uri.parse('https://watch.finalshout.org/youth/'));
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
