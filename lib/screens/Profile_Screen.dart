import 'package:flutter/material.dart';
import 'package:sign_button/sign_button.dart';
import 'package:social_media_buttons/social_media_buttons.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                    onPressed: () {
                      print('click');
                    }),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15, left: 30),
                child: SignInButton(
                    buttonType: ButtonType.facebook,
                    buttonSize: ButtonSize.large,
                    onPressed: () {
                      print('click');
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
