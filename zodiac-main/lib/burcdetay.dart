import 'package:flutter/material.dart';
import 'package:untitled5/burclass.dart';
import 'package:palette_generator/palette_generator.dart';

class BurcDetay extends StatefulWidget {
  final Burc secilenburc;
  const BurcDetay({
    @required Burc this.secilenburc,
  });

  @override
  _BurcDetayState createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {
  Color appbarcolor = Colors.blue;
  PaletteGenerator _generator;
  @override
  void initState() {
    // TODO: implement initState
    appbarrenginibul();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: appbarcolor,
          expandedHeight: 250,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(widget.secilenburc.burcname + " Burcu ve Özellikleri"),
            background: Image.asset(
              "images/" + widget.secilenburc.burcbuyukresim,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Text(
                widget.secilenburc.burcdetay,
                style: TextStyle(fontFamily: "ZenKurenaido", fontSize: 17),
              ),
            ),
          ),
        )
      ],
    ));
  }

  void appbarrenginibul() async {
    _generator = await PaletteGenerator.fromImageProvider(
        AssetImage("images/" + widget.secilenburc.burcbuyukresim));
    appbarcolor = _generator.dominantColor.color;
    setState(() {});
  }
}
