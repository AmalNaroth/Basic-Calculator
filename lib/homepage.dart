import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  var sum = 0;
  int num1 =0;
  int num2 =0;

  void additionFunction() {
    num1 = int.tryParse(t1.text) ?? 0;
    num2 = int.tryParse(t2.text) ?? 0;
    setState(() {
      sum = num1 + num2;
      t1.clear();
      t2.clear();
    });
  }

  void subtractionFunction() {
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);
    setState(() {
      sum = num1 - num2;
      t1.clear();
      t2.clear();
    });
  }

  void multiplicationFunction() {
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);
    setState(() {
      sum = num1 * num2;
      t1.clear();
      t2.clear();
    });
  }

  void devisionFunction() {
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);
    setState(() {
      sum = num1 ~/ num2;
      t1.clear();
      t2.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
      ),
      body: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Output : $sum",
              style: const TextStyle(
                  color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),
            ),
            TextField(
              decoration: const InputDecoration(border: OutlineInputBorder()),
              keyboardType: TextInputType.number,
              controller: t1,
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              decoration: const InputDecoration(border: OutlineInputBorder()),
              keyboardType: TextInputType.number,
              controller: t2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  color: Colors.green,
                  onPressed: additionFunction,
                  child: const Text("Addition"),
                ),
                MaterialButton(
                    color: Colors.blue,
                    onPressed: subtractionFunction,
                    child: const Text("Sbtraction")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                    color: Colors.orange,
                    onPressed: multiplicationFunction,
                    child: const Text("Multiplication")),
                MaterialButton(
                    color: Colors.red,
                    onPressed: devisionFunction,
                    child: const Text("Devision"))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
