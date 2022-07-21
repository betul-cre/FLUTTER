import 'dart:convert';

import 'package:flutter/material.dart';
import 'coin_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate';
const apiKey = 'E9AEC1CF-4EF8-457F-97AA-7B70E71C9408';

class _PriceScreenState extends State<PriceScreen> {
  @override
  Future<dynamic> getCoinData() async {
    String requestURL = "$coinAPIURL/BTC/$selectedcurrency?apikey=$apiKey ";
    http.Response response = await http.get(requestURL);
    var decodedData = jsonDecode(response.body);
    var lastPrice = decodedData['rate'];

    return lastPrice;
  }

  Future<dynamic> getetcdata() async {
    String url = "$coinAPIURL/ETH/$selectedcurrency?apikey=$apiKey";
    http.Response response = await http.get(url);
    var decodeData = jsonDecode(response.body);
    var lastPrice = decodeData["rate"];
    return lastPrice;
  }

  Future<dynamic> getltcdata() async {
    String url = "$coinAPIURL/LTC/$selectedcurrency?apikey=$apiKey";
    http.Response response = await http.get(url);
    var decodeData = jsonDecode(response.body);
    var lastPrice = decodeData["rate"];
    return lastPrice;
  }

  String selectedcurrency = "USD";
  List<Widget> getPickeritem() {
    List<Text> pickermenu = [];
    for (String currency in currenciesList) {
      pickermenu.add(Text(
        currency,
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.blueGrey.shade300),
      ));
    }
    return (pickermenu);
  }

  String bitcoinValueInUSD = '?';

  void getData() async {
    try {
      double data = await getCoinData();

      setState(() {
        bitcoinValueInUSD = data.toStringAsFixed(0);
      });
    } catch (e) {
      return e;
    }
  }

  String etcvalue = "?";

  void getetcData() async {
    try {
      double data = await getetcdata();
      setState(() {
        etcvalue = data.toStringAsFixed(0);
      });
    } catch (e) {
      return e;
    }
  }

  String ltcvalue = "?";
  void getltcData() async {
    try {
      double data = await getltcdata();
      setState(() {
        ltcvalue = data.toStringAsFixed(0);
      });
    } catch (e) {
      return e;
    }
  }

  @override
  void initState() {
    getetcdata();
    getltcdata();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade700,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        title: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.monetization_on_sharp),
            Text(' COİN TİCKER'),
          ],
        )),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/coins.jpg"), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
              child: Card(
                color: Colors.grey.shade800,
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                  child: Text(
                    '1 BTC =  $bitcoinValueInUSD $selectedcurrency',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
              child: Card(
                color: Colors.grey.shade800,
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                  child: Text(
                    '1 ETH =  $etcvalue $selectedcurrency',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
              child: Card(
                color: Colors.grey.shade800,
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                  child: Text(
                    '1 LTC =  $ltcvalue $selectedcurrency',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 150.0,
              alignment: Alignment.center,
              padding: EdgeInsets.only(
                bottom: 30.0,
              ),
              color: Colors.grey.shade900,
              child: Center(
                child: CupertinoPicker(
                  onSelectedItemChanged: (selectedIndex) {
                    setState(() {
                      selectedcurrency = (currenciesList[selectedIndex]);
                      getData();
                      getetcData();
                      getltcData();
                    });
                  },
                  itemExtent: 32.0,
                  children: getPickeritem(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
