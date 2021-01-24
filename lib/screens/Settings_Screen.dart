import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  static const RouteName="/SettingScreen";

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool LanguageIsEnglish=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.deepOrange,
       leading: IconButton(
         icon: Icon(Icons.arrow_back,size: 35,color: Colors.white),
         onPressed: (){
           Navigator.of(context).pop();
           },
       ),
       title: Text("Settings",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
     ),
      body: Container(
        color: Colors.black87,
        child:Column(
            children: [
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Language",style: TextStyle(fontSize: 17,fontWeight:FontWeight.bold,color: Colors.white),),
                      Row(
                        children: [
                          LanguageIsEnglish?Container(
                            height: 40,
                            color: Colors.black87,
                            child:  RaisedButton(
                              color: Colors.black87,
                              onPressed: (){
                                setState(() {
                                  LanguageIsEnglish=false;
                                  print(LanguageIsEnglish);
                                });
                              },
                              child: Text("عربى",style: TextStyle(color: Colors.white)),
                            ),
                          )
                          :Container(
                            height: 40,
                            color:Colors.deepOrange,
                            child: FlatButton(
                            onPressed: (){
                            },
                            child: Text("عربى",style: TextStyle(color: Colors.white)),
                          ),),
                          LanguageIsEnglish? Container(
                            height: 40,
                            color: Colors.deepOrange,
                            child: FlatButton(
                              onPressed: (){
                              },
                              child: Text("English",style: TextStyle(color: Colors.white)),
                            ),
                          )
                          : Container(
                                height: 40,
                                color:Colors.black87,
                                child: RaisedButton(
                                  color: Colors.black87,
                                         onPressed: (){
                                               setState(() {
                                                  LanguageIsEnglish=true;
                                                  print(LanguageIsEnglish);
                                               });
                           },
                                 child: Text("English",style: TextStyle(color: Colors.white)),
                              ),),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(color: Colors.grey,),
                Row(
                  children: [
                    IconButton(
                        icon:Icon(Icons.exit_to_app,color: Colors.white,),
                       onPressed: (){},
                    ),
                    FlatButton(child: Text("Log Out",style: TextStyle(color: Colors.white)),onPressed: (){}, )
                  ],
                ),
            ],
          ),
      ),
    );
  }
}

