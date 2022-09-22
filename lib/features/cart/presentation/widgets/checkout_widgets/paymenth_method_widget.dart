import 'package:flutter/material.dart';

import '../../../../../core/font_icon/icon_broken.dart';
import '../../../../../core/localization/get_translate.dart';

class Payment {
  final String name;
  final String numberCart;
  final IconData icon;

  Payment({required this.name, required this.numberCart, required this.icon});
}

List<Payment> paymentMethods = [
  Payment(name: "Apple Pay", numberCart: "*********563", icon: Icons.apple),
  Payment(name: "Master Pay", numberCart: "*********763", icon: Icons.payment),
  Payment(name: "Visa Pay", numberCart: "*********083", icon: Icons.payments),
];

class PaymenthMethodWidget extends StatelessWidget {
  const PaymenthMethodWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(getTranslated(
            context, "PaymenthMethodWidget_page_text_PaymenthMethod_key")),
        const SizedBox(
          height: 15,
        ),
      SizedBox(
      height: MediaQuery.of(context).size.height*0.3,
      child: ListView.separated(
          itemBuilder: (context, index) =>
              itemPayment(context, paymentMethods[index]),
          separatorBuilder: (context, index) => const SizedBox(
            height: 20,
          ),
          itemCount: paymentMethods.length),
    ),
      ],
    );
  }

  Widget itemPayment(BuildContext context, Payment payment) {
    return   Row(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: const BorderRadius.all(Radius.circular(13)),
          ),
          child: Icon(payment.icon),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(payment.name),
            Text(
              payment.numberCart,
              style: const TextStyle(color: Colors.grey),
            ),
          ],
        ),
        const Spacer(),
        const Icon(
          Icons.check_circle_outline,
          color: Colors.grey,
        ),
      ],
    );
  }
}
