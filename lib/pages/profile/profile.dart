import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopstag/util/colors.dart';
import 'package:shopstag/util/dimensions.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Container(
        width: double.maxFinite,
        margin: EdgeInsets.all(Dimensions.height15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(90),
                child: Container(
                  height: 180,
                  width: 180,
                  child: Image.asset('assets/images/productDetails.jpg'),
                ),
              ),

              //  Username
              Container(
                margin: EdgeInsets.only(
                  top: Dimensions.height30,
                  right: Dimensions.width30,
                  left: Dimensions.width30,
                ),
                padding: EdgeInsets.only(
                  left: Dimensions.width30,
                  right: Dimensions.width30,
                  top: Dimensions.width15,
                  bottom: Dimensions.width15,
                ),
                child: TextField(
                  maxLines: 1,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Username',
                      prefixIcon: Icon(Icons.person)),
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Dimensions.radius9)),
              ),
              // Email
              Container(
                margin: EdgeInsets.only(
                  top: Dimensions.height15,
                  right: Dimensions.width30,
                  left: Dimensions.width30,
                ),
                padding: EdgeInsets.only(
                  left: Dimensions.width30,
                  right: Dimensions.width30,
                  top: Dimensions.width15,
                  bottom: Dimensions.width15,
                ),
                child: TextField(
                  maxLines: 1,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email',
                      prefixIcon: Icon(Icons.email),
                      prefixIconColor: AppColors.mainColor),
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Dimensions.radius9)),
              ),
              // Phone
              Container(
                margin: EdgeInsets.only(
                  top: Dimensions.height15,
                  right: Dimensions.width30,
                  left: Dimensions.width30,
                ),
                padding: EdgeInsets.only(
                  left: Dimensions.width30,
                  right: Dimensions.width30,
                  top: Dimensions.width15,
                  bottom: Dimensions.width15,
                ),
                child: TextField(
                  maxLines: 1,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Phone',
                      prefixIcon: Icon(Icons.phone),
                      prefixIconColor: AppColors.mainColor),
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Dimensions.radius9)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
