import 'package:ecommerce/screens/navigation_screen.dart';
import 'package:ecommerce/widgets/container_button_model.dart';
import 'package:flutter/material.dart';

class OrderSuccessfulScreen extends StatelessWidget {
  const OrderSuccessfulScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Image.asset("assets/images/success.png"),
              SizedBox(height: 15),
              Text(
                "Success!",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Your Order will be processed and Delivered Soon.",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              Text(
                "Thank You! For Choosing Our App...",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.all(20),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NavigationScreen()),
                );
              },
              child: ContainerButtonModel(
                itext: "Click to Continue Shopping",
                containerWidth: MediaQuery.of(context).size.width,
                bgColor: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
