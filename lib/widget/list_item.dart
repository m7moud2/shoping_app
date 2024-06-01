import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:shoping_app/colors/color_app.dart';
import 'package:shoping_app/models/cart_model.dart';

class ListItem extends StatelessWidget {
  ListItem({
    super.key,
    required this.name,
    required this.image,
    required this.money,
  });
  String name;
  String image;
  String money;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(image)),
                borderRadius: BorderRadius.circular(20)),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                name,
                style: const TextStyle(
                    color: Color(0xff999999), fontFamily: 'NunitoSans'),
              ),
              const SizedBox(
                width: 6,
              ),
              Text(
                money,
                style: const TextStyle(
                    fontFamily: 'NunitoSans', fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                width: 23,
              ),
              Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(5),
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        color: AppColor.stroke_divider,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Icon(
                      Icons.add,
                      size: 20,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text('01'),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(5),
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        color: AppColor.stroke_divider,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Icon(
                      Icons.remove,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            child: Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Image.asset('assets/images/Shape.png'),
                )),
          ),
        ],
      ),
    );
  }
}
