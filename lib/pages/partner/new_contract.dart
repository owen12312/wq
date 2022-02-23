/*
 * @Description: 
 * @Author: 华松林
 * @Date: 2021-07-06 22:01:51
 * @LastEditors: 华松林
 * @LastEditTime: 2021-07-06 22:14:18
 * @FilePath: \yu_gou_app\lib\pages\demo\index.dart
 */
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:ui';
import 'package:get/get.dart';
import 'package:yu_gou_app/util/yg_colors.dart';
import 'package:yu_gou_app/components/MyField/index.dart';
import 'package:yu_gou_app/components/SubmitDiv/index.dart';
import 'package:image_picker/image_picker.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http_parser/http_parser.dart';  
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:yu_gou_app/components/ImagePicker/index.dart';
// import 'package:yu_gou_app/components/CameraController/index.dart';
// demo页面
class NewContracts extends StatefulWidget {
  const NewContracts({Key? key}) : super(key: key);

  @override
  _NewContractsState createState() => _NewContractsState();
}

class _NewContractsState extends State<NewContracts> {
  final appbarHeight = MediaQueryData.fromWindow(window).padding.top;
  // 
  final TextEditingController _controller = new TextEditingController();
  // 客户名称
  final TextEditingController _clientsNameController = new TextEditingController();
  // 公司税号
  final TextEditingController _taxnumberController = new TextEditingController();
  // 合同金额
  final TextEditingController _amountController = new TextEditingController();
  // 折扣
  final TextEditingController _discountController = new TextEditingController();
  // 合同编号
  final TextEditingController _contractnoController = new TextEditingController();
  // 客户地址
  final TextEditingController _addressController = new TextEditingController();
  // 邮箱
  final TextEditingController _emailController = new TextEditingController();
  // 手机号
  final TextEditingController _phoneController = new TextEditingController();
  // 合同人签字
  final TextEditingController _contractorController = new TextEditingController();

  final Map<String, Map<String, Object>> _formData = {
    'username': {
      'value': '',
      'isMustInput':true,
      'lables':'客户名称', 
      'isEnabled':false,
    },
    'tax_umber': {
      'value': '',
      'isMustInput':true,
      'lables':'公司税号', 
      'isEnabled':true,
    },
    'contract_amount': {
      'value': '',
      'isMustInput':false,
      'lables':'合同金额', 
      'isEnabled':true,
    },
    'discount': {
      'value': '',
      'isMustInput':false,
      'lables':'折扣', 
      'isEnabled':true,
    },
    'contract_no': {
      'value': '',
      'isMustInput':true,
      'lables':'合同编号', 
      'isEnabled':true,
    },
    'customer_address': {
      'value': '',
      'isMustInput':true,
      'lables':'客户地址', 
      'isEnabled':true,
    },
    'contractor_ignature': {
      'value': '',
      'isMustInput':false,
      'lables':'合同人签字', 
      'isEnabled':true,
    },
    'signatory_phonenum': {
      'value': '',
      'isMustInput':false,
      'lables':'签字人手机号', 
      'isEnabled':true,
    },
    'signatory_email': {
      'value': '',
      'isMustInput':false,
      'lables':'签字人邮箱', 
      'isEnabled':true,
    },
  };

  @override
  Widget build(BuildContext context) {
     List<Map> _filesList = [];
    void _goBack() {
      Get.back();
    }
    void  _handleTextFieldChanged(String formKey, String value) {
      setState(() {
        _formData[formKey]?['value'] = value;
      });
    }
    void _updateAuditResults() {
      Get.back();
    }
    void _handleClear(String formKey) {
      setState(() {
        _formData[formKey]?['value'] = '';
      });
    }
    _handleVideo() {

    }
    _handleImage() {

    }
    _handleError() {
      
    }
    void _openGallery () async {
      File _image;
      final picker = ImagePicker();
      const bool kIsWeb = identical(0, 0.0);
      Future getImage() async {
        final pickedFile = await picker.getImage(source: ImageSource.camera);
        // final bytes = await pickedFile!.readAsBytes();
        // setState(() {
        //   if (pickedFile != null) {
        //     if (kIsWeb) {
        //       _image = Image.network(pickedFile.path);
        //     } else {
        //       _image = Image.file(File(pickedFile.path));
        //     }
        //     _image = File(pickedFile.path);
        //   } else {
        //     print('No image selected.');
        //   }
        // });
        // return pickedFile;
      }
      Future<void> retrieveLostData() async {
        final LostData response =
            await picker.getLostData();
        if (response.isEmpty) {
          return;
        }
        if (response.file != null) {
          setState(() {
            if (response.type == RetrieveType.video) {
              // _handleVideo(response.file);
            } else {
              // _handleImage(response.file);
            }
          });
        } else {
          // _handleError(response.exception);
        }
      }
      // var imageUrl = await ImagePicker.pickImage(source: ImageSource.gallery, maxHeight: 150.0, maxWidth:150.0);
      setState(() {
        //将获取到的图片路径赋给_image，上传
        _filesList.add({
          'filename':'',
          'path':'',
        });
      });
      //上传开始
    }


    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          "新增合同",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: YGColors.color51,
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
          ),
          ),
        centerTitle: true,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const ImageIcon(AssetImage("back_icon.png")),
              onPressed: () {_goBack();},
              color: YGColors.color51,
            );
          },
        ),
        elevation: 0, //去掉底部阴影
        backgroundColor: YGColors.colorFFFFFF,
      ),
      body:Container(
        child: 
          ListView(
            children: <Widget>[
              FormUtil.textField( 
                'username',
                _formData['username']!['value'] as String, 
                isMustInput: true,
                controller: _clientsNameController,
                lables:'客户名称' ,
                hintText: '兰芙嘉贞股份有限公司',
                onChanged: _handleTextFieldChanged,
                isEnabled:true,
                onClear: _handleClear,
              ),
              FormUtil.textField( 
                'tax_umber',
                _formData['tax_umber']!['value'] as String, 
                isMustInput:false,
                controller: _taxnumberController,
                lables:'公司税号',
                hintText: '请输入统一社会信用代码',
                onChanged: _handleTextFieldChanged,
                isEnabled:true,
                onClear: _handleClear,
              ),
              FormUtil.textField( 
                'contract_amount',
                _formData['contract_amount']!['value'] as String, 
                isMustInput:true,
                controller: _amountController,
                lables:'合同金额',
                hintText: '￥',
                onChanged: _handleTextFieldChanged,
                isEnabled:true,
                onClear: _handleClear,
              ),
              FormUtil.textField( 
                'discount',
                _formData['discount']!['value'] as String, 
                isMustInput:true,
                controller: _formData['discount']!['controller'],
                lables:'折扣',
                hintText: '8.5折',
                onChanged: _handleTextFieldChanged,
                isEnabled:true,
                onClear: _handleClear,
              ),
              FormUtil.textField( 
                'contract_no',
                _formData['contract_no']!['value'] as String, 
                isMustInput:true,
                controller: _formData['contract_no']!['controller'],
                lables:'合同编号',
                hintText: '请出入合同编号',
                onChanged: _handleTextFieldChanged,
                isEnabled:true,
                onClear: _handleClear,
              ),
              FormUtil.textField( 
                'customer_address',
                _formData['customer_address']!['value'] as String, 
                isMustInput:true,
                controller: _formData['customer_address']!['controller'],
                lables:'公司地址',
                hintText: '请输入客户公司详细地址',
                onChanged: _handleTextFieldChanged,
                isEnabled:true,
                onClear: _handleClear,
              ),
              FormUtil.textField( 
                'contractor_ignature',
                _formData['contractor_ignature']!['value'] as String, 
                isMustInput: false,
                controller: _formData['contractor_ignature']!['controller'],
                lables:'合同人签字',
                hintText: '请输入姓名',
                onChanged: _handleTextFieldChanged,
                isEnabled:true,
                onClear: _handleClear,
              ),
              FormUtil.textField( 
                'signatory_phonenum',
                _formData['signatory_phonenum']!['value'] as String, 
                isMustInput:false,
                controller: _formData['signatory_phonenum']!['controller'],
                lables:'合同人手机号',
                hintText: '请输入手机号',
                onChanged: _handleTextFieldChanged,
                isEnabled:true,
                onClear: _handleClear,
              ),
              FormUtil.textField( 
                'signatory_email',
                _formData['signatory_email']!['value'] as String, 
                isMustInput:false,
                controller: _formData['signatory_email']!['controller'],
                lables:'合同人邮箱',
                hintText: '请输入邮箱',
                onChanged: _handleTextFieldChanged,
                isEnabled: true,
                onClear: _handleClear,
              ),
              Container(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '营业执照副本复印件(需盖章)',
                          style: TextStyle(
                            color: YGColors.color333333,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.w),
                          child: Text(
                            '*',
                            style: TextStyle(
                              fontSize: 15.sp,
                              color: YGColors.colorE60012,
                            ),
                          )
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const ImagePickerWidget(),
              // Flex(
              //   direction: Axis.horizontal,
              //   children: <Widget>[
              //     Padding(padding: EdgeInsets.only(left: 10.w)),
              //     Container(
              //       width: 65.w,
              //       height: 80.w,
              //       decoration: const BoxDecoration(
              //         image: DecorationImage(
              //           image: NetworkImage('https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg')
              //         )
              //       )
              //     ) ,
              //     Padding(padding: EdgeInsets.only(right: 10.w)),
              //     Container(
              //       width: 65.w,
              //       height: 80.w,
              //       decoration: const BoxDecoration(
              //         image: DecorationImage(
              //           image: NetworkImage('https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg')
              //         )
              //       )
              //     ) 
              //   ],
              // ),
              Container(
                padding: EdgeInsets.only(top: 15.w,left: 15.w,right: 15.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '合同图片',
                          style: TextStyle(
                            color: YGColors.color333333,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const ImagePickerWidget(),
              // Container(
              //     padding: EdgeInsets.only(left: 2.w,right: 15.w),
              //     child:               
              //     Row(
              //     children: [
              //       IconButton(
              //         icon: const ImageIcon(AssetImage("back_icon.png")),
              //         onPressed: () {
              //           // ignore: avoid_print
              //           print("1111111111111111111111");
              //           _openGallery();
              //         },
              //         color: YGColors.color333333,
              //       ),
              //     ],
              //   ),
              // ),
              // Container(
              //   padding: EdgeInsets.only(left: 15.w,right: 15.w),
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.spaceAround,
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.start,
              //         crossAxisAlignment: CrossAxisAlignment.center,
              //         children: [
              //           Padding(
              //             padding: EdgeInsets.zero,
              //             child: 
              //               Image(
              //                   image: const NetworkImage("https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg"),
              //                   width: 50.w,
              //                   height: 70.w,
              //               ),
              //           ),
              //           Padding(
              //             padding: EdgeInsets.only(left: 10.w),
              //             child: 
              //               Image(
              //                   image: const NetworkImage("https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg"),
              //                   width: 50.w,
              //                   height: 70.w,
              //               ),
              //           ),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),
              Padding(
                padding: EdgeInsets.only(top: 15.w,bottom: 20.w),
                child:
                  SubmitDivWidget(
                    title:const Text('提交',style: TextStyle(color: Colors.white),),
                    onTap:()=>{
                      _updateAuditResults()
                    }
                  )
              )
            ],
          ),
        decoration:  BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(color:YGColors.color220,width: 1.w )
          )
        )
      )
    );
  }
  
}




