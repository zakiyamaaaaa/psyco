import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Home extends ConsumerWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 70,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: 
                ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('あなたの最近の心理テスト結果',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                        ),
                        Text('恋愛モード１　おおかみタイプ',
                  style: TextStyle(
                    color: Colors.black,
                    ),
                  ),
                    ],
                  ),
                  
                  ),
              )
            ),
            
            const SizedBox(height: 20),
            ElevatedButton(onPressed: (){}, child: Text('Elevated Button')),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: (){}, child: Text('Elevated Button')),
          ],
        ),
      ),
      // Column(
      //   children: [
      //     ElevatedButton(onPressed: (){

      //     }, child: Text('Elevated Button')),
      //   ],
      // ),
    );
  }

}