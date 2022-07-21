import 'package:flutter/material.dart';
import 'package:untitled5/burc.dart';
import 'package:untitled5/burclass.dart';

import 'burcitem.dart';

class BurclarList extends StatelessWidget {
  List<Burc> tumburclar = [];
  BurclarList() {
    tumburclar = verikaynaginihazirla();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        title: Text(
          "  ♈ ♉ ♊ ♋ ♌ ♍ ♎ ♏ ♐ ♑ ♒ ♓",
        ),
        backgroundColor: Colors.lightGreen,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return BurcItem(
            listenelecekburc: tumburclar[index],
          );
        },
        itemCount: tumburclar.length,
      ),
    );
  }

  List<Burc> verikaynaginihazirla() {
    List<Burc> gecici = [];
    for (int i = 0; i < 12; i++) {
      var burcAdi = Burcs.burcname[i];
      var burcDate = Burcs.burcdate[i];
      var burcDetay = Burcs.burcozellik[i];
      var burckucukresim = Burcs.burcname[i].toLowerCase() + "${i + 1}.png";
      var burcbuyukresim =
          Burcs.burcname[i].toLowerCase() + "_buyuk${i + 1}.png";
      Burc eklenecekburc =
          Burc(burcAdi, burcDate, burcDetay, burckucukresim, burcbuyukresim);
      gecici.add(eklenecekburc);
    }

    return gecici;
  }
}
