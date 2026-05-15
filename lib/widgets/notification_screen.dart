import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

int progress = 0;

class _NotificationScreenState extends State<NotificationScreen> {
  late WebViewController controller;
  double progressValue = 0.0;
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
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
  if (request.url.startsWith('https://www.youtube.com/')) {
    // Check if the request contains "/embed/" to identify YouTube video embeds
    if (request.url.contains('/embed/')) {
      return NavigationDecision.navigate; // Allow YouTube video embeds
    } else {
      return NavigationDecision.prevent; // Prevent regular YouTube pages
    }
  }
  return NavigationDecision.navigate; // Allow other URLs
},
        // onNavigationRequest: (NavigationRequest request) {
        //   if (request.url.startsWith('https://www.youtube.com/')) {
        //     return NavigationDecision.prevent;
        //   }
        //   return NavigationDecision.navigate;
        // },
      ))
      ..loadRequest(Uri.parse('https://finalshout.org/'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(7.0),
          child: InkWell(
            onTap: () => {
              SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
                  .then((_) {}),
              Navigator.pop(context)
            },
            child: Container(
              decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              padding: const EdgeInsets.only(left: 10.0),
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.green,
              ),
            ),
          ),
        ),
      ),
      extendBody: true,
      extendBodyBehindAppBar: true,
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
