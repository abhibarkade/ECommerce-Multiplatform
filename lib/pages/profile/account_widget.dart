import 'package:flutter/material.dart';
import 'package:shopstag/util/dimensions.dart';

class AccountWidget extends StatelessWidget {
  const AccountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: Dimensions.width10,
        top: Dimensions.width10,
        bottom: Dimensions.width10,
      ),
    );
  }
}
