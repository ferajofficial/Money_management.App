import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class OperationCard extends StatefulWidget {
  final String operation;
  final String selectedIcon;
  final String unselectedIcon;
  final bool isSelected;
  
 
  const OperationCard(
      {super.key,
      required this.isSelected,
      required this.operation,
      required this.selectedIcon,
      required this.unselectedIcon});

  @override
  State<OperationCard> createState() => _OperationCardState();
}

class _OperationCardState extends State<OperationCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 123,
      width: 123,
      decoration: BoxDecoration(
       boxShadow: const [
        BoxShadow(
          color: Colors.black,
          blurRadius: 10,
          spreadRadius: 5,
          offset: Offset(8.0,8.0),
        ),
       ],
       borderRadius: BorderRadius.circular(15),
       color: widget.isSelected ? Colors.blue[900] :Colors.white,
      ),
      child: Column(
        children: [
          SvgPicture.asset("assets/dollar.svg"),
          Text(
            widget.operation,
            textAlign:TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: widget.isSelected?Colors.white:Colors.blue[900], ),)
        ],
      ),
    );
  }
}
