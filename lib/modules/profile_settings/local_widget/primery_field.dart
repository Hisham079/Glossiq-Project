import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sample_glossiq/const/app_const.dart';

class PrimeryFieldDropDown extends StatelessWidget {
  PrimeryFieldDropDown(
      {super.key, required this.labelText, required this.initialValue});
  String labelText;
  String initialValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 8),
      decoration: const BoxDecoration(
          color: Color(0xFFF4F4F4),
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Row(
        children: [
          Flexible(
            flex: 4,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      labelText,
                      style:TextStyle(
                          color: textGrey,
                          fontFamily: 'IBM Plex Sans, Regular',
                        //  fontWeight: FontWeight.bold,
                          fontSize: 12),
                    )),
                TextFormField(
                  initialValue: initialValue,
                  style: headStyleNormal.copyWith(
                      fontWeight: FontWeight.w600,
                      color: fieldTextGrey,
                      fontSize: 18),
                 
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: const EdgeInsets.fromLTRB(0, 5, 10, 10),
                    
                    labelStyle: const TextStyle(
                        color: Color(0xFFbdbcbc),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),

                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    fillColor: const Color(0xFFF4F4F4),
                    filled: true,
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.expand_more,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}

class PrimeryField extends StatelessWidget {
  PrimeryField(
      {super.key, required this.labelText, required this.initialValue});
  String labelText;
  String initialValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 77,
      padding: const EdgeInsets.only(top: 5, left: 2, right: 8),
      decoration:  BoxDecoration(
          color:  Color(0xFFF4F4F4),
          borderRadius:BorderRadius.circular(8)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 8),
            decoration:  BoxDecoration(
                color: Color(0xFFF4F4F4),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8))),
            child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  labelText,
                  style:TextStyle(
                          color: textGrey,
                          fontFamily: 'IBM Plex Sans, Regular',
                        //  fontWeight: FontWeight.bold,
                          fontSize: 12),
                )),
          ),
          TextFormField(
            initialValue: initialValue,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            style: headStyleNormal.copyWith(
                fontWeight: FontWeight.w600,
                color: fieldTextGrey,
                fontSize: 16),
            
            decoration: const InputDecoration(
              // isDense: true,
              contentPadding: EdgeInsets.fromLTRB(10, 5, 10, 10),

              labelStyle: TextStyle(
                  color: Color(0xFFbdbcbc),
                  fontSize: 16,
                  fontWeight: FontWeight.w500),

              enabledBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              fillColor: Color(0xFFF4F4F4),
              filled: true,
            ),
          ),
          
        ],
      ),
    );
  }
}
