import 'package:flutter/material.dart';
import 'package:flutter_application_1/Task5_11/model_5_11/Model_Icon&Text.dart';


class Home5_11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Color> ss = [
      Colors.black,
      Colors.brown,
      Colors.redAccent,
      Colors.tealAccent,
    ];

    List<Applicaion> app = [
      Applicaion(cons: Icons.home, name: "HOME"),
      Applicaion(cons: Icons.contact_mail_outlined, name: "Contact"),
      Applicaion(cons: Icons.map, name: "Map"),
      Applicaion(cons: Icons.phone, name: "Phone"),
      Applicaion(cons: Icons.camera, name: "Camera"),
      Applicaion(cons: Icons.settings, name: "Setting"),
      Applicaion(cons: Icons.phone_android_sharp, name: "Album"),
      Applicaion(cons: Icons.wifi, name: "Wifi"),
    ];

    return Scaffold(
      appBar: AppBar(title: Text("GridView"),centerTitle: true,
      backgroundColor: Colors.blueGrey,),

      body: Padding(

        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: app.length,
          itemBuilder: (context, index) {
            return bbt(context, app[index]);
          },
        ),
      ),
    );
  }

  Widget bbt(BuildContext context, Applicaion h) {
    return Container(
      color: Colors.amber,
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width * 0.1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(h.cons, color: Colors.black54),
          Text(h.name, style: TextStyle(fontSize: 25, color: Colors.black45)),
        ],
      ),
    );
  }

  // كيف اعمل لون لل icons للخلفيه
  Widget elV(BuildContext context, Applicaion l) {
    return Container(
      color: Colors.amber,
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width * 0.1,

      child: ElevatedButton.icon(
        onPressed: () {},
        icon: Icon(l.cons),

        label: Text(l.name),
      ),
    );
  }
}
