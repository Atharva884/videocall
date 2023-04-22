import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:videocall/callPage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  static String name="";
  static String userId="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (val){
                name = val;
              },
              decoration: InputDecoration(
                hintText: "Enter your Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    color: Colors.deepOrange.shade400
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    color: Colors.deepOrange.shade400
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    color: Colors.deepOrange.shade400
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    color: Colors.red.shade400
                  ),
                )
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              onChanged: (val){
                userId = val;
              },
              decoration: InputDecoration(
                hintText: "Enter your User Id",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    color: Colors.deepOrange.shade400
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    color: Colors.deepOrange.shade400
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    color: Colors.deepOrange.shade400
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    color: Colors.red.shade400
                  ),
                )
              ),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.push(context, CupertinoPageRoute(builder: (context){
                  return CallPage(callID: "1");
                }));
              },
              child: const Text("Call")
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Share.share("Hello From Atharva");
      })
    );  
  }
}

