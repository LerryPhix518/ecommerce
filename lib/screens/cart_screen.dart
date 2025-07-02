import 'package:ecommerce/screens/payment_method_screen.dart';
import 'package:ecommerce/widgets/container_button_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  List imagesList = [
    "assets/images/sweat_shirts.jpg",
    "assets/images/t_shirts.jpg",
    "assets/images/shirts.jpeg",
    "assets/images/collections_shirts.jpeg",
  ];

  List productTitles = [
    "Warm Zipper",
    "Knitted Wool",
    "Zipper Win",
    "Child Win",
  ];
  List prices = ["\$300", "\$650", "\$50", "\$100"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Text(
          "Cart",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: BackButton(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                child: ListView.builder(
                  itemCount: imagesList.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Checkbox(
                            splashRadius: 20,
                            activeColor: Colors.blue,
                            value: true,
                            onChanged: (val) {},
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              imagesList[index],
                              height: 80,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                productTitles[index],
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Hooded Jacket",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black26,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                prices[index],
                                style: TextStyle(
                                  color: Colors.redAccent,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                CupertinoIcons.minus,
                                color: Colors.redAccent,
                              ),
                              SizedBox(width: 20),
                              Text(
                                "1",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(width: 5),
                              Icon(CupertinoIcons.plus, color: Colors.green),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Select All",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Checkbox(value: false, onChanged: (val) {}),
                ],
              ),
              Divider(height: 20, thickness: 1, color: Colors.black),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Payment",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "\$1100",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: Colors.redAccent,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PaymentMethodScreen(),
                    ),
                  );
                },
                child: ContainerButtonModel(
                  itext: "CheckOut",
                  containerWidth: MediaQuery.of(context).size.width,
                  bgColor: Colors.blue,
                ),
              ),
              // SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
