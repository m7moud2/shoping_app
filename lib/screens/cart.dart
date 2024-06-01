import 'package:flutter/material.dart';
import 'package:shoping_app/colors/color_app.dart';
import 'package:shoping_app/models/cart_model.dart';
import 'package:shoping_app/widget/custom_elevated_button.dart';
import 'package:shoping_app/widget/list_item.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<CartModel> cartModel = [
    CartModel(
        name: 'Minimal Stand',
        image: 'assets/images/Minimal_Stand.png',
        money: '25.00'),
    CartModel(
        name: 'Coffee Table',
        image: 'assets/images/Coffee_Table.png',
        money: '20.00'),
    CartModel(
        name: 'Minimal Desk',
        image: 'assets/images/Minimal_Desk.png',
        money: '50.00'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back_ios),
          title: const Text(
            'My Cart',
            style: TextStyle(fontSize: 16, fontFamily: 'Merriweather'),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return ListItem(
                      name: cartModel[index].name,
                      image: cartModel[index].image,
                      money: cartModel[index].money,
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Divider(
                      endIndent: 20,
                      indent: 20,
                    );
                  },
                  itemCount: cartModel.length),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: AppColor.disabledField,
                              focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              enabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: AppColor.primary),
                        width: 50,
                        height: 50,
                        child: const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'ToTal:',
                        style: TextStyle(
                            color: AppColor.textSecondary,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      Text(
                        '95.00',
                        style: TextStyle(
                            color: AppColor.primary,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomElevatedButton(text: 'Check out', onPressed: () {})
                ],
              ),
            ),
          ],
        ));
  }
}
