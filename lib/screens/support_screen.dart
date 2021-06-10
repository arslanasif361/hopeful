import 'package:flutter/material.dart';
import 'package:hopeful/Components/textfield_with_label.dart';
import 'package:hopeful/Components/button_with_label.dart';
import 'package:hopeful/screens/submission_screen.dart';

class SupportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/Kraft_background.png'),
                fit: BoxFit.cover)),
        child: Padding(
          padding: EdgeInsets.only(top: 90.0),
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: TextfieldWithLabel(
                  horizontalPadding: 45.0,
                  label: 'SUBJECT',
                  hintText: 'i.e. product support',

                ),
              ),
              SizedBox(
                height: 25,
              ),

              Container(
                  child: Column(
                children: [
                  TextfieldWithLabel(
                    horizontalPadding: 45.0,
                    label: 'YOUR MESSAGE',
                    hintText: 'Please Enter your message here',
                    maxLines: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Image.asset("images/icons/Attachement.png",height: 40,width: 40,),
                    SizedBox(width: 5,),
                    Padding(
                      padding: const EdgeInsets.only(right: 60),
                      child: Text("Click here to attach a file",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 16,wordSpacing: 2,letterSpacing: 0.5),),
                    ),
                  ],)
                  // ListTile(leading: Image.asset("images/icons/Attachement.png",height: 40,width: 40,),title: Text("Click here to attach a file",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),),),
                ],
              )),
              Padding(
                padding: EdgeInsets.only(
                    top: 80, bottom: 50.0, left: 110, right: 110.0),
                child: ButtonWithLabel(
                  label: 'Submit Request',
                  onPress: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SubmissionScreen()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
