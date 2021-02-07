// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget { //단순 화면표시 UI컴포넌트

  @override
  Widget build(BuildContext context) {
    Widget titleSection= Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1 Expanded widger 안에 컬럼을 넣으면 Row의 남은 공간을 모두채움*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2 컨테이너 내 첫번째 row텍스트= 패딩설정 가능. 컬럼의 두번째 자식은 글자색이 회색인 텍스트*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Material Art Fitness',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  '위치: 인천광역시 서구 검암동',
                   style: TextStyle(
                     color: Colors.grey[500],
                    ),
                ),
              ],
            ),
          ),
          /*3 타이틀 가로의 남은 2개의 아이템*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text('41'),
        ],

      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.call, '회원가입'),
          _buildButtonColumn(color, Icons.near_me, '로그인'),
          _buildButtonColumn(color, Icons.share, '인증하기'),
        ],
      ),
    );
    return MaterialApp(
      title: 'M.A.Fitness Management Application',
      home: Scaffold(
        appBar: AppBar(
          title: Text('M.A.Fitness Management'),
        ),
        body: Column(
          children: [
            titleSection,
            buttonSection,],
        ),
      ),
    );
  }
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}//class



