import 'package:flutter/cupertino.dart';import 'package:flutter/material.dart';import 'home_page.dart';class MyProfilePage extends StatefulWidget {  const MyProfilePage({Key? key}) : super(key: key);  @override  State<MyProfilePage> createState() => _MyProfilePageState();}class _MyProfilePageState extends State<MyProfilePage> {  @override  Widget build(BuildContext context) {    return Scaffold(      appBar: AppBar(        backgroundColor: Colors.white,        title: const Center(            child: Text(          'My Profile',          style: TextStyle(              color: Colors.black,              fontFamily: 'Roboto',              backgroundColor: Colors.white),        )),        leading: IconButton(          icon: const Icon(Icons.backspace_outlined),          color: Colors.black,          onPressed: () {            Navigator.of(context).maybePop();          },        ),        actions: <Widget>[          IconButton(              onPressed: () {                Navigator.push(                    context,                    MaterialPageRoute(                        builder: (context) => const MyHomePage()));              },              icon: const Icon(                Icons.home,                color: Colors.black,              )),          IconButton(              onPressed: () {},              icon: const Icon(                Icons.menu,                color: Colors.black,              ))        ],      ),      backgroundColor: Colors.white,      body: Container(        color: Colors.white,        child: ListView(          children: <Widget>[            Column(              mainAxisAlignment: MainAxisAlignment.spaceAround,              children: [                Padding(                  padding: const EdgeInsets.only(top: 30),                  child: SizedBox(                    height: 300,                    width: 306,                    child: Image.asset('lib/assets/images/peep-sitting-9.png'),                  ),                ),                Padding(                  padding: const EdgeInsets.only(top: 30, right: 15, left: 15),                  child: Container(                    height: 1.0,                    width: 500,                    color: Colors.white,                    child: const Divider(                      color: Colors.black,                      thickness: 2,                    ),                  ),                ),                Padding(                  padding: const EdgeInsets.only(top: 40),                  child: Container(                    width: 297,                    height: 267,                    decoration: BoxDecoration(                      borderRadius: BorderRadius.circular(20),                      color: const Color.fromRGBO(255, 255, 255, 1),                      border: Border.all(color: Colors.black, width: 1),                    ),                    child: Padding(                      padding:                          const EdgeInsets.only(right: 10, left: 20),                      child: Column(                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,                        crossAxisAlignment: CrossAxisAlignment.start,                        children: const [                          Text(                            'Name :',                            style: TextStyle(fontWeight: FontWeight.bold),                          ),                          SizedBox(height: 20,),                          Text(                            'E-mail :',                            style: TextStyle(fontWeight: FontWeight.bold),                          ),                          SizedBox(height: 20,),                          Text(                            'Age :',                            style: TextStyle(fontWeight: FontWeight.bold),                          ),                          SizedBox(height: 20,),                          Text(                            'Phone :',                            style: TextStyle(fontWeight: FontWeight.bold),                          ),                        ],                      ),                    ),                  ),                )              ],            ),          ],        ),      ),    );  }}