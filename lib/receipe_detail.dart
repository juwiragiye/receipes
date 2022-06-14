import 'package:flutter/material.dart';
import 'package:receipes/receipe.dart';

class ReceipeDetail extends StatefulWidget {
  final Receipe receipe;
  const ReceipeDetail({Key? key, required this.receipe}) : super(key: key);

  @override
  State<ReceipeDetail> createState() => _ReceipeDetailState();
}

class _ReceipeDetailState extends State<ReceipeDetail> {
  int _serVal = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.receipe.label),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 300,
              child: Image.asset(widget.receipe.imageUrl),
            ),
            const SizedBox(height: 10),
            Text(
              widget.receipe.label,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: widget.receipe.ingredients.length,
                itemBuilder: (BuildContext context, int index) {
                  final ingredient = widget.receipe.ingredients[index];
                  return Text('${ingredient.quantity} ${ingredient.name}');
                },
              ),
            ),
            Slider(
              max: 10.0,
              divisions: 10,
              label: '${_serVal * widget.receipe.ingredients.length} servings',
              value: _serVal.toDouble(),
              onChanged: (newValue) {
                setState(() {
                  _serVal = newValue.round();
                });
              },
              activeColor: Colors.green,
              inactiveColor: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
