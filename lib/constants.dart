import 'package:flutter/material.dart';

const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  filled: true,
fillColor: Colors.white,

  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',hintStyle: TextStyle(fontSize: 15.0, color: Colors.black),
enabledBorder: OutlineInputBorder(

    borderRadius: BorderRadius.all(Radius.circular(32.0)),
),





  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    // top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
);
