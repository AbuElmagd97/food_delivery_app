import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/services/auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_button/sign_button.dart';
import 'package:social_media_buttons/social_media_buttons.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  GoogleSignInAccount _currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _currentUser!=null?Container(
        color: Colors.black87,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: GoogleUserCircleAvatar(
              placeholderPhotoUrl: _currentUser.photoUrl,
              ),
              title: Text(_currentUser.displayName ?? '',
                style: TextStyle(color: Colors.white),),
              subtitle: Text(_currentUser.email ?? '',
                style: TextStyle(color: Colors.white),),
            ),
            /*Row(
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundColor: Colors.transparent,
                  child: Icon(Icons.account_circle_outlined,size: 80,color: Colors.white,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("User Name",
                        style: TextStyle(color: Colors.white),),
                      Text("Email@Example.com",
                        style: TextStyle(color: Colors.white),)
                    ],
                  ),
                ),
              ],
            ),*/
            Divider(color: Colors.grey,),
            ListTile(
              leading: Icon(Icons.shopping_cart_outlined,color: Colors.deepOrange,),
              title: Text("My Order",
                style: TextStyle(color: Colors.white),),
              trailing: Icon(Icons.arrow_forward_ios,color: Colors.deepOrange,),
            ),
            Divider(color: Colors.grey,),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.35,
            ),
            Text(
              "    Have Something Thriii Feh?",
              style: TextStyle(color: Colors.white70),
            ),
            Row(
              children: [
                SocialMediaButton.whatsapp(
                  onTap: () {
                    print('or just use onTap callback');
                  },
                  size: 35,
                  color: Colors.green,
                ),
                Text(
                  " Chat with us on whatsapp",
                  style: TextStyle(color: Colors.green),
                )
              ],
            )
          ],
        ),
      )





          :Container(
        color: Colors.black87,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Text(
                "Discover Places",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              Text(
                "Around you",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15, left: 30, top: 30),
                child: SignInButton(
                    buttonType: ButtonType.google,
                    buttonSize: ButtonSize.large,
                    onPressed: () async{
                      await signInwithGoogle();
                      print(_currentUser);
                    }),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15, left: 30),
                child: SignInButton(
                    buttonType: ButtonType.facebook,
                    buttonSize: ButtonSize.large,
                    onPressed: () async{
                      await signOut();
                      print(_currentUser);
                    }),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.25,
              ),
              Text(
                "    Have Something Thriii Feh?",
                style: TextStyle(color: Colors.white70),
              ),
              Row(
                children: [
                  SocialMediaButton.whatsapp(
                    onTap: () {
                      print('or just use onTap callback');
                    },
                    size: 35,
                    color: Colors.green,
                  ),
                  Text(
                    " Chat with us on whatsapp",
                    style: TextStyle(color: Colors.green),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

