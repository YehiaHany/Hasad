import 'package:flutter/material.dart';
import 'ifnocontainer.dart';

class InfoRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: InfoContainer(
            icon: Icons.shopping_cart,
            label: 'المشتريات الحالية',
          ),
        ),
        SizedBox(width: 8),
        Expanded(
          child: InfoContainer(
            icon: Icons.history,
            label: 'المشتريات القديمة',
          ),
        ),
        SizedBox(width: 8),
        Expanded(
          child: InfoContainer(
            icon: Icons.store,
            label: 'البائعون',
          ),
        ),
        SizedBox(width: 8),
        Expanded(
          child: InfoContainer(
            icon: Icons.person,
            label: 'المشترين',
          ),
        ),
      ],
    );
  }
}