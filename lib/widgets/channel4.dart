import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Channel4 extends StatefulWidget {
  const Channel4({super.key});

  @override
  State<Channel4> createState() => _Channel4State();
}

class _Channel4State extends State<Channel4> {
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
          if (request.url.startsWith('https://watch.finalshout.org/on-demand/')) {
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ),
    )
    ..loadRequest(Uri.parse('https://watch.finalshout.org/on-demand/'));
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: WebViewWidget(controller: controller));
  }
}
