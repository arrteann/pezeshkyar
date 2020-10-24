import 'package:flutter/material.dart';
import 'package:pezeshkyar/models/centerData.dart';
import 'package:pezeshkyar/components/CenterCard.dart';

class centerScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new centerScreenState();

}
class centerScreenState extends State<centerScreen>{
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 5),
      itemCount: dummycenterData.length,
      itemBuilder: (BuildContext context , int index){
        return CenterCard(getData : dummycenterData[index]);
      },
    );
  }
}