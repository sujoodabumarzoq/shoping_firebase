import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shoping/Features/seller/presentation/widgets/DropdownMenuseller.dart';

class bodyseller extends StatefulWidget {
  const bodyseller({
    super.key,
  });

  @override
  State<bodyseller> createState() => _bodysellerState();
}

class _bodysellerState extends State<bodyseller> {
  File? _image;

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);
//    getImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }


  @override
  Widget build(BuildContext context) {


    return Padding(
      padding: const EdgeInsets.only(left: 13.0, right: 13),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            " Add product",style: TextStyle(
            // color: Colors.black,
              fontSize: 25,
            fontWeight: FontWeight.bold
          ),

          ),
          const SizedBox(
            height: 30,
          ),

          TextFormField(
            // controller: LoginCubit.get(context).email,
            // validator: (val) {
            //   if (val == "") {
            //     return " email not empty";
            //   }
            //   return null;
            // },
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.all(15.0),
              hintText: 'Name product',
              hintStyle: TextStyle(color: Colors.black),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
            ),
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          TextFormField(
            // controller: LoginCubit.get(context).email,
            // validator: (val) {
            //   if (val == "") {
            //     return " email not empty";
            //   }
            //   return null;
            // },
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.all(15.0),
              hintText: 'Price product',
              hintStyle: TextStyle(color: Colors.black),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
            ),
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          const SizedBox(
              width: double.infinity,
              child: DropdownMenuseller()),
          const SizedBox(
            height: 30,
          ),
          _image == null
              ? Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(5))),
                  child: const Center(child: Text('No image has been selected yet')))
              : Image.file(_image!, width: 100, height: 100),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: _pickImage,
            child: const Text('Select an image from the device'),
          ),
          const SizedBox(
            height: 30,
          ),

          ElevatedButton(
            onPressed: (){}, child: const Text(
            " Add product",style: TextStyle(
              // color: Colors.black,
              fontSize: 20
          ),

          ),
          ),

        ],
      ),
    );
  }

}

//name
// price
// hot Deals
// weelktop
// trandy
