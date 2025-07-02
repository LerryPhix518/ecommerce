import 'package:ecommerce/screens/verify_otp_screen.dart';
import 'package:flutter/material.dart';

class OtpVerifyScreen extends StatefulWidget {
  const OtpVerifyScreen({super.key});
  @override
  State<OtpVerifyScreen> createState() => _OtpVerifyScreenState();
}

class _OtpVerifyScreenState extends State<OtpVerifyScreen> {
  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Theme.of(context).primaryColor),
      borderRadius: BorderRadius.circular(10.0),
    );
  }

  TextEditingController textEditingController = new TextEditingController(
    text: "",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(height: 10),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Enter OTP",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 150),
              Text(
                "Please check your message and Enter the OTP code sent to you here to verify.",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: 50),

              // TextFieldPin(
              //   textController: textEditingController,
              //   autoFocus: false,
              //   codeLength: 6,
              //   alignment: MainAxisAlignment.center,
              //   defaultBoxSize: 40.0,
              //   margin: 10,
              //   selectedBoxSize: 40.0,
              //   textStyle: TextStyle(fontSize: 16),
              //   defaultDecoration: _pinPutDecoration.copyWith(
              //     border: Border.all(color: Colors.grey),
              //   ),
              //   selectedDecoration: _pinPutDecoration,
              //   onChange: (code) {
              //     setState(() {});
              //   },
              // ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => VerifyOtpScreen()),
                  );
                },
                child: Text(
                  "Verify",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size.fromHeight(55),
                  backgroundColor: Colors.blueAccent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
