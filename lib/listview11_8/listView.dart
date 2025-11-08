import 'package:flutter/material.dart';
import 'package:flutter_application_1/listview11_8/steModel.dart';

class ListvW extends StatelessWidget {
  @override
  List<Stemodel> aCm = [
    Stemodel(name: "name", job: "000"),
    Stemodel(name: "name1", job: "11111"),
    Stemodel(name: "name2", job: "222"),
    Stemodel(name: "name3", job: "3333"),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.custom(
          childrenDelegate: SliverChildBuilderDelegate(
            (context, index) => ListTile(
              title: Text(aCm[index].name),
              subtitle: Text(aCm[index].job),
              leading: Icon(Icons.private_connectivity_rounded),
              //بعمل زي اكونز على الطرف  من اليمين
              trailing: Icon(Icons.access_time),
            ),
            // كم بده يبني  
            childCount: aCm.length,
          ),
        ),
      ),
    );
  }
}























/*class ListEE extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Stemodel> aCm = [
      Stemodel(name: "name", job: "000"),
      Stemodel(name: "name1", job: "11111"),
      Stemodel(name: "name2", job: "222"),
      Stemodel(name: "name3", job: "3333"),
    ];
    return Scaffold(
      //الفصل بين widget                                                     حسب ليست الموجوده    الاشي الي بدك تفصل فيه
      body: ListView.separated(
        itemBuilder: (context, index) {
          //عباره عن widget فيها خصاص افضل
          return ListTile(
            // العنوان بكون اكبير بشكل جاهز
            title: Text(aCm[index].name),
            //
            subtitle: Text(aCm[index].job),
            // بعطي ايكون لكل او  widget 
            leading: Icon(Icons.private_connectivity_rounded),
            //بعمل زي اكونز على الطرف  من اليمين 
            trailing: Icon(Icons.access_time),
          );
        },
        separatorBuilder: (context, index) {
         //مثل المسافه وبقدر اخير لونه  ال...خ
          return Divider(
// بعطي مسافه في النهايه 
endIndent: 5,
// مسافه بي البدايه 
indent: 10,
// العرض 
thickness: 7,

          );
        },
        itemCount: aCm.length,
      ),
    );
  }
}*/









/*class Listvie extends StatelessWidget {


@override
  Widget build(BuildContext context) {
   List<String>ss=["ss","pp","ss"];
  return Scaffold(

body: SafeArea(child:

SingleChildScrollView(
  child: Column(
    children: [
      //تنشاش اعملت كنتيتير و بعدها ميديا اكويري عشان احل المشكله 
      Container(
      
       width: MediaQuery.of(context).size.height*0.1,
      // ممنوع احطهم جوا كولوم  مباشره  لانها سكرول
        child: ListView.builder(
          shrinkWrap:true ,
          // عشان اخلي اليست ب العرض 
          scrollDirection: Axis.horizontal,
      
  //الطول و العرض وبتستخدم ويجت
  prototypeItem: SizedBox(height: 50,width: 50,),
  
          //بعطي مساحه لكل عنصر او لكل ويدجت استدعاها
          
          //itemExtent: ,
          itemCount: ss.length,
          itemBuilder:(context, index) =>costemcontener(ss[index])),
      ),
  
  
      Container(child: costemcontener("data")),
       Container(child: costemcontener("data")),
        Container(child: costemcontener("data")),
         Container(child: costemcontener("data")),
          Container(child: costemcontener("data")),
  
    ],
  ),
) ,)




  );
  }


}
Widget costemcontener(String data){

return Padding(
  padding: const EdgeInsets.all(8.0),
  child: Container(
  child: Center(child:  Text(data),),
  
  color: Colors.amber,
  
  ),
);

}*/