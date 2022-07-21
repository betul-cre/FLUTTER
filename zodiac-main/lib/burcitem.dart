import 'package:flutter/material.dart';
import 'package:untitled5/burclass.dart';

import 'burcdetay.dart';

class BurcItem extends StatelessWidget {
  final Burc listenelecekburc;
  const BurcItem({
    @required this.listenelecekburc,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 10,
      color: Colors.lightGreen.shade700,
      child: ListTile(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => BurcDetay(
                    secilenburc: listenelecekburc,
                  )));
        },
        leading: CircleAvatar(
            maxRadius: 30,
            child: Image.asset("images/" + listenelecekburc.burckucukresim)),
        title: Text(
          listenelecekburc.burcname,
        ),
        subtitle: Text(listenelecekburc.burctarih),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: Colors.orangeAccent,
        ),
      ),
    );
  }
}
