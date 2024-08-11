// import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

import 'package:flutter/material.dart';
import 'package:project/theme.dart';
import 'package:project/data.dart';
import 'dart:async';

void main() {
  runApp(MaterialApp(
    home: const MyApp(),
    theme: appTheme,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late List<String> _letters;

  late final ScrollController _scrollController;
  late final TextEditingController _textEditingController;
  late final FocusNode _textFieldFocusNode;

  int _maxRange = 0;

  bool _isTyping = false;

  int _counter = 0;

  double _fill = 0;

  int _letterCount = 0;

  double _offsetForScrolling = 15;

  int _spaceCount = 0;

  @override
  void initState() {
    super.initState();
    _letters = breakDownToLetters();
    _scrollController = ScrollController();
    _textEditingController = TextEditingController();
    _textFieldFocusNode = FocusNode();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _textEditingController.dispose();
    _textFieldFocusNode.dispose();
    super.dispose();
  }

  void _startTyping() {
    FocusScope.of(context).requestFocus(_textFieldFocusNode);

    _scrollController.animateTo(0,
        duration: const Duration(seconds: 1), curve: Curves.easeInOut);

    _isTyping = true;
    _spaceCount = 0;

    Timer.periodic(const Duration(milliseconds: 1), (timer) {
      if (_counter == 60000) {
        timer.cancel();
        _stopTyping();
      } else {
        setState(() {
          _fill += 0.00613;
          _counter++;
        });
      }
    });
  }

  void _stopTyping() {
    _textFieldFocusNode.unfocus();
    _maxRange = 0;
    _counter = 0;
    _fill = 0;
    _offsetForScrolling = 15;
    _isTyping = false;
  }

  void _onInputChange(text) {
    if (text == _letters[_maxRange]) {
      if (text == " ") {
        _spaceCount++;
      }
      setState(() {
        _maxRange++;
      });
    }

    _textEditingController.text = "";
    _letterCount++;

    if (_letterCount == 15) {
      _scrollController.animateTo(_offsetForScrolling,
          duration: const Duration(seconds: 5), curve: Curves.easeInOut);
      _letterCount = 0;
      _offsetForScrolling += 15;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorDark,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("WPM Calculator",
            style: Theme.of(context).textTheme.titleLarge),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 50, right: 20, left: 20, bottom: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (_isTyping)
                //Timer animation
                Container(
                  height: 15,
                  width: 372,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.circular(10)),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 13,
                      width: _fill,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),

              const SizedBox(
                height: 10,
              ),

              // Container for showing the words
              Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColorLight,
                    borderRadius: BorderRadius.circular(10)),
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                height: 300,
                child: SingleChildScrollView(
                  controller: _scrollController,
                  child: RichText(
                    text: TextSpan(
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            height: 1.5,
                            wordSpacing: 5,
                            letterSpacing: 3),
                        children: [
                          for (int index = 0; index < _letters.length; index++)
                            if (index < _maxRange)
                              TextSpan(
                                  text: _letters[index],
                                  style: const TextStyle(color: Colors.white))
                            else
                              TextSpan(text: _letters[index])
                        ]),
                  ),
                ),
              ),

              if (!_isTyping)
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          _letters = breakDownToLetters();
                        });
                      },
                      color: Theme.of(context).primaryColorLight,
                      child: Text(
                        "Regenerate words",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                  ],
                ),

              const SizedBox(
                height: 30,
              ),

              //Hidden text field to accept input from the user and match it against the words
              Offstage(
                child: TextField(
                    focusNode: _textFieldFocusNode,
                    controller: _textEditingController,
                    onChanged: _onInputChange),
              ),

              //Button for starting the round
              if (!_isTyping)
                MaterialButton(
                  onPressed: _startTyping,
                  color: Theme.of(context).primaryColorLight,
                  child: Text(
                    "Start Typing",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontSize: 25),
                  ),
                ),

              //Button for stopping the round

              if (_isTyping)
                MaterialButton(
                  onPressed: _stopTyping,
                  color: Theme.of(context).primaryColorLight,
                  child: Text(
                    "Stop",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),

              const SizedBox(
                height: 40,
              ),

              Column(
                children: [
                  Text(
                    "Your result was",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text("${_spaceCount.toString()} WPM",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontSize: 60))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
