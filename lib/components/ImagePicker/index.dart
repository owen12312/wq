import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:yu_gou_app/util/yg_colors.dart';

class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({Key? key}) : super(key: key);

  @override
  _ImagePickerWidgetState createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  final String typeImage = "typeImage";
  double iconSize = 22;
  double imageSize = 50;
  int max = 3;
  List<ImageItem> list = [];
  final picker = ImagePicker();

  Future getImage() async {
    PickedFile? pickedFile = await picker.getImage(source: ImageSource.gallery);// 相册
    if(pickedFile!=null){
      setState(() {
        list.insert(0, ImageItem(typeImage, pickedFile.path));
      });
    }

  }
  @override
  void initState() {
    super.initState();
  }

  Widget renderItem(BuildContext context, int index) {
    ImageItem item = list[index];
    return 
    // Image.file(
    //   File(item.path),
    //   width: imageSize,
    //   height: imageSize,
    //   fit: BoxFit.fitWidth,
    // );
    Container(
      height:110,
      padding: const EdgeInsets.only(right:5),
      child:    
        Stack(
        alignment:Alignment.center ,  
        fit: StackFit.expand,
        clipBehavior: Clip.antiAlias,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(top:10,right:5),
            alignment: Alignment.center,
            child:
            Image.file(
              File(item.path),
              width: 110,
              height: 110,
              fit: BoxFit.fitWidth,
            ),
          ),
          Positioned(
            right: 0,
            top:0,
            child:
            SizedBox(
              width:20,
              height:20,
              child:
              IconButton(
                padding: const EdgeInsets.all(0),
                icon: Image.asset('delete.png'),
                // const ImageIcon(
                //   AssetImage("delete.png"),
                //   size: 20.0,
                // ),
                onPressed:(){
                  setState(() {
                    list.removeAt(index);
                  });
                },
                color: YGColors.color999999,
                
              ),
            )
          ),
        ],
        
      )
    );


  }

  @override
  Widget build(BuildContext context) {
    return 
    Container(
      padding: const EdgeInsets.only(top:10),
      child:
      Column(
        children: [
          Row(
            children: [
              const Padding(padding:EdgeInsets.only(left: 15)),
              GestureDetector(
                child: Image.asset(
                  "poto.png",
                  width: iconSize,
                  height: iconSize,
                  fit: BoxFit.fill,
                ),
                onTap: getImage,
              ),
            ],
          ),
          Container(
            height: 110*max/3,
            margin: const EdgeInsets.only(top: 0),
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 16),
            color: Colors.white,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 100,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1),
              itemBuilder: (BuildContext context, int index) {
                return renderItem(context, index);
              },
              itemCount: list.length,
              shrinkWrap:true,
            ),
          )
        ],
      ),
    );

  }
}

class ImageItem {
  String type;
  String path;

  ImageItem(this.type, this.path);
}