// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {

  TextEditingController _carpriceCtrl = TextEditingController(text: '');
  TextEditingController _interestCtrl = TextEditingController(text: '');
  String? _downPay = "10";
  String? _selectYearPay = "1";

  List<DropdownMenuItem<String>> get _dropdownItemsYearPay {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(
        value: "1",
        child: Text("12 งวด (1 ปี)"),
      ),
      DropdownMenuItem(
        value: "2",
        child: Text("24 งวด (2 ปี)"),
      ),
      DropdownMenuItem(
        value: "3",
        child: Text("36 งวด (3 ปี)"),
      ),
      DropdownMenuItem(
        value: "4",
        child: Text("48 งวด (4 ปี)"),
      ),
      DropdownMenuItem(
        value: "5",
        child: Text("60 งวด (5 ปี)"),
      ),
      DropdownMenuItem(
        value: "6",
        child: Text("72 งวด (6 ปี)"),
      ),
      DropdownMenuItem(
        value: "7",
        child: Text("84 งวด (7 ปี)"),
      ),
    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[100],
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          'คำนวณค่างวดรถ',
          style: GoogleFonts.kanit(),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.1,
              ),
              CircleAvatar(
                backgroundColor: Colors.deepOrange,
                radius: MediaQuery.of(context).size.width * 0.21,
                child: CircleAvatar(
                  backgroundColor: Colors.deepOrange[50],
                  radius: MediaQuery.of(context).size.width * 0.19,
                  child: CircleAvatar(
                    radius: MediaQuery.of(context).size.width * 0.18,
                    backgroundImage: AssetImage(
                      'assets/images/car.jpg',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.1,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.15,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'ราคารถ (บาท)',
                    style: GoogleFonts.kanit(
                      color: Colors.deepOrange,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.15,
                  right: MediaQuery.of(context).size.width * 0.15,
                ),
                child: TextField(
                  controller: _carpriceCtrl,
                  keyboardType: TextInputType.number,
                  style: GoogleFonts.kanit(
                    color: Colors.grey[700],
                  ),
                  decoration: InputDecoration(
                    hintText: '0.00',
                    hintStyle: GoogleFonts.kanit(),
                    suffixText: 'บาท',
                    suffixStyle: GoogleFonts.kanit(
                      color: Colors.deepOrange,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.deepOrange,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.deepOrange,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.02,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.15,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'เงินดาวน์ (%)',
                    style: GoogleFonts.kanit(
                      color: Colors.deepOrange,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Radio(
                    onChanged: (data) {
                      setState(() {
                        _downPay = data;
                      });
                    },
                    value: "10",
                    groupValue: _downPay,
                    activeColor: Colors.deepOrange,
                  ),
                  Text(
                    "10%",
                  ),
                  Radio(
                    onChanged: (data) {
                      setState(() {
                        _downPay = data;
                      });
                    },
                    value: "20",
                    groupValue: _downPay,
                    activeColor: Colors.deepOrange,
                  ),
                  Text(
                    "20%",
                  ),
                  Radio(
                    onChanged: (data) {
                      setState(() {
                        _downPay = data;
                      });
                    },
                    value: "25",
                    groupValue: _downPay,
                    activeColor: Colors.deepOrange,
                  ),
                  Text(
                    "25%",
                  ),
                  Radio(
                    onChanged: (data) {
                      setState(() {
                        _downPay = data;
                      });
                    },
                    value: "30",
                    groupValue: _downPay,
                    activeColor: Colors.deepOrange,
                  ),
                  Text(
                    "30%",
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.04,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.15,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'จำนวนปีที่ผ่อน',
                    style: GoogleFonts.kanit(
                      color: Colors.deepOrange,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.15,
                  right: MediaQuery.of(context).size.width * 0.15,
                ),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      items: _dropdownItemsYearPay,
                      value: _selectYearPay,
                      onChanged: (String? value) {
                        setState(() {
                          _selectYearPay = value;
                        });
                      },
                      style: GoogleFonts.kanit(
                        color: Colors.grey[700],
                      ),
                      iconEnabledColor: Colors.grey[700],
                      dropdownColor: Colors.deepOrange[50],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.03,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.15,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'ดอกเบี้ย(%) ต่อปี',
                    style: GoogleFonts.kanit(
                      color: Colors.deepOrange,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.15,
                  right: MediaQuery.of(context).size.width * 0.15,
                ),
                child: TextField(
                  controller: _interestCtrl,
                  keyboardType: TextInputType.number,
                  style: GoogleFonts.kanit(
                    color: Colors.grey[700],
                  ),
                  decoration: InputDecoration(
                    hintText: '0.00',
                    hintStyle: GoogleFonts.kanit(),
                    suffixText: 'บาท',
                    suffixStyle: GoogleFonts.kanit(
                      color: Colors.deepOrange,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.deepOrange,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.deepOrange,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.03,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "คำนวณค่างวดรถ",
                  style: GoogleFonts.kanit(),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(
                    MediaQuery.of(context).size.width * 0.7,
                    MediaQuery.of(context).size.width * 0.15,
                  ),
                  backgroundColor: Colors.deepOrange,
                ),
              ),
              SizedBox(
                    height: MediaQuery.of(context).size.width * 0.1,
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
