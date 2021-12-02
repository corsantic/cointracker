import 'package:cointracker/model/listing/data.dart';
import 'package:cointracker/model/listing/listing_latest.dart';
import 'package:cointracker/services/listing_service.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latest Coins Listed',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Latest Coins Listed'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Future<ListingLatest> futureListingLatest;
  ListingService listingService = ListingService();
  final DateFormat formatter = DateFormat('yyyy-MM-dd HH:MM:SS');
  var colorChange = false;
  @override
  void initState() {
    super.initState();
    futureListingLatest = listingService.fetchLatestListing();
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(34.0),
        child: Center(
            // Center is a layout widget. It takes a single child and positions it
            // in the middle of the parent.
            child: FutureBuilder<ListingLatest>(
          future: futureListingLatest,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: (snapshot.data?.data.length),
                  itemBuilder: (context, index) {
                    var data = snapshot.data?.data[index];
                    return Card(
                      color: getColor(),
                      child: ListTile(
                        leading: Text("${data?.symbol}"),
                        title: Column(
                          children: <Widget>[
                            RichText(
                                text: TextSpan(children: <TextSpan>[
                              TextSpan(
                                text: " ${data?.name}",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    launch(launchUrl(data));
                                  },
                              ),
                            ]))
                          ],
                        ),
                        trailing: Text(formatter
                            .format(DateTime.parse(data?.dateAdded as String))),
                      ),
                    );
                  });
              // return Text("${snapshot.data?.data[0]?.name}");
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }

            // By default, show a loading spinner.
            return const CircularProgressIndicator();
          },
        )),
      ),
    );
  }

  getColor() {
    colorChange = !colorChange;
    return colorChange ? Colors.grey[300] : Colors.white;
  }

  String launchUrl(Data? data) {
    var stableUrl =
        "${dotenv.env['COIN_STABLE_URL']}"; //EX: https://coinmarketcap.com/currencies/bitcoin

    var coinMarketCapUrl = "$stableUrl${data?.slug}";
    return coinMarketCapUrl;
  }
}
