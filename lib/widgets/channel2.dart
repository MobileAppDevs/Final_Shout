import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Channel2 extends StatefulWidget {
  const Channel2({super.key});

  @override
  State<Channel2> createState() => _Channel2State();
}

class _Channel2State extends State<Channel2> {
  bool isLoading = true;

  // Controller indexcontroller = Controller();
  WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(const Color(0x00000000))
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
        },
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          if (request.url.startsWith('https://watch.finalshout.org/final-shouts-kids/')) {
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ),
    )
    ..loadRequest(Uri.parse('https://watch.finalshout.org/final-shouts-kids/'));
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: WebViewWidget(controller: controller));
  }
}
