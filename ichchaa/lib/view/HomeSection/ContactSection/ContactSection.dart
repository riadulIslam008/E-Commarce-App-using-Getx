import 'package:flutter/material.dart';
import 'package:ichchaa/Utils/TextWidget.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {

  final TextEditingController subjectText = TextEditingController();

  final TextEditingController messageText = TextEditingController();

  final String email = "riadulislam088@gmail.com";

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      children: [
        TextWidget(
            text: "To,", color: Colors.black, fontWeight: FontWeight.bold),
        SizedBox(height: 5),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.grey,
            border: Border.all(
              color: Colors.black,
              width: 1,
            ),
          ),
          child: TextWidget(
            text: email,
            color: Colors.black,
            fontWeight: FontWeight.normal,
          ),
        ),
        SizedBox(height: 20),
        TextWidget(
            text: "My Subject",
            color: Colors.black,
            fontWeight: FontWeight.bold),
        SizedBox(height: 5),
        customeTextField(
          controller: subjectText,
          hintText: "Subject",
          keyBoardType: TextInputType.text,
        ),
        SizedBox(height: 20),
        TextWidget(
            text: "Message", color: Colors.black, fontWeight: FontWeight.bold),
        SizedBox(height: 5),
        customeTextField(
          controller: messageText,
          hintText: "Write Something",
          keyBoardType: TextInputType.text,
          maxLine: 8,
        ),
        SizedBox(height: 30),
        ElevatedButton(
          onPressed: () {
            launchEmail(
              toEmail: email,
              subject: subjectText.text,
              message: messageText.text,
            );
          },
          child: Text("SEND"),
        ),
      ],
    );
  }

  TextField customeTextField({controller, keyBoardType, maxLine, hintText}) {
    return TextField(
      controller: controller,
      keyboardType: keyBoardType,
      maxLines: maxLine,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey.shade300,
        ),
      ),
    );
  }

  Future launchEmail({String toEmail, String subject, String message}) async {
    final url =
        "mailto:$toEmail?subject=${Uri.encodeFull(subject)}&body=${Uri.encodeFull(message)}";

    if (await canLaunch(url)) {
      await launch(url);
    }
  }
}
