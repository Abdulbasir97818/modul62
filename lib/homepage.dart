

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body:  Stack(
        children: [
          Center(
            child: const Text("str_hello_uzbekistan").tr(),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Expanded(
                        child: MaterialButton(
                          color: Colors.green,
                          onPressed: () {
                            context.setLocale(const Locale('en', 'US'));
                          },
                          child: const Text("str_english").tr(),
                        )
                    ),
                    const SizedBox(width: 5,),
                    Expanded(
                        child: MaterialButton(
                          color: Colors.red,
                          onPressed: () {
                            context.setLocale(const Locale('ru', 'RU'));
                          },
                          child: const Text("str_russian").tr(),
                        )
                    ),
                    const SizedBox(width: 5,),
                    Expanded(
                        child: MaterialButton(
                          color: Colors.blue,
                          onPressed: () {
                            context.setLocale(const Locale('uz', 'UZ'));
                          },
                          child: const Text("str_uzbek").tr(),
                        )
                    ),
                    const SizedBox(width: 5,),
                    Expanded(
                        child: MaterialButton(
                          color: Colors.orange,
                          onPressed: () {
                            context.setLocale(const Locale('fr', 'FR'));
                          },
                          child: const Text("str_french").tr(),
                        )
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
