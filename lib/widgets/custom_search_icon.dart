import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

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
          icon:const Icon(Icons.search,color: Colors.white,size: 28,),
        ),
      ),
    );
  }
}
