import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var num1 = 0, num2 = 0, sum = 0;
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();


  void doadd() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void doSub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void doMul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void doDiv() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  void doClear() {
    setState(() {
      t1.text = '0';
      t2.text = '0';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calculator',
          style: TextStyle(fontSize: 25),
          textAlign: TextAlign.center,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              Text(
                "Output: $sum",
                style: const TextStyle(fontSize: 30, color: Colors.deepPurple),
              ),
              const SizedBox(
                height: 40,
              ),
              TextField(
                controller: t1,
                cursorColor: Colors.black,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    prefixIcon: const Icon(Icons.numbers),
                    hintText: 'Enter Number 1',
                    fillColor: Colors.greenAccent,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: t2,
                cursorColor: Colors.black,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    prefixIcon: const Icon(Icons.numbers),
                    hintText: 'Enter Number 2',
                    fillColor: Colors.greenAccent,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MaterialButton(
                    color: Colors.amber[300],
                    onPressed: () {
                      doadd();
                    },
                    child: const Text(
                      '+',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  MaterialButton(
                    color: Colors.amber[300],
                    onPressed: () {
                      doSub();
                    },
                    child: const Text('-', style: TextStyle(fontSize: 30)),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MaterialButton(
                    color: Colors.amber[300],
                    onPressed: () {
                      doMul();
                    },
                    child: const Text('*', style: TextStyle(fontSize: 30)),
                  ),
                  MaterialButton(
                    color: Colors.amber[300],
                    onPressed: () {
                      doDiv();
                    },
                    child: const Text('/', style: TextStyle(fontSize: 30)),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                color: Colors.amber[300],
                onPressed: () {
                  doClear();
                },
                child: const Text(
                  'Clear',
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
