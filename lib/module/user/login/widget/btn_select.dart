import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BtnSelect extends StatefulWidget {
  BtnSelect({
    required this.title,
    this.active,
    Key? key,
  }) : super(key: key);
  final String title;
  final bool? active;

  @override
  State<BtnSelect> createState() => _BtnSelectState();
}

class _BtnSelectState extends State<BtnSelect> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      height: 50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.title,
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
          ),
          (widget.active!)
              ? Container(
                  width: 120,
                  height: 5,
                  decoration: BoxDecoration(color: Colors.black),
                )
              : Container()
        ],
      ),
    );
  }
}
