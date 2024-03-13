import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 46,
      decoration:const BoxDecoration(
        borderRadius: BorderRadiusDirectional.all(Radius.circular(16),),
        color: Color.fromARGB(195, 59, 59, 59),
      ),
      child: Center(
        child: IconButton(
          onPressed: () {},
          icon: Icon(icon,color: Colors.white,size: 28,),
        ),
      ),
    );
  }
}
