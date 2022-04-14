import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'pizza.dart';

class PizzaDialogWidget extends StatefulWidget {
  final pizzaToppingTextField;

  final sizeSelected;


  const PizzaDialogWidget({
    Key key, this.pizzaToppingTextField, this.sizeSelected,


}) : super(key: key);

  // final String topping;
  // final double price;
  // final int size;
  // final String strSize;
  // final String description;

  @override
  State<StatefulWidget> createState() => _PizzaDialogWidgetState();

}

class _PizzaDialogWidgetState extends State<PizzaDialogWidget> {
  get pizzaToppingTextField => null;

  get sizeSelected => sizeSelected;

  get pizzasInOrder => null;

  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: SizedBox(
          height: 200,
          child:  Column(
            children: <Widget>[
              Text(
                'Toppings:',
                style: Theme.of(context).textTheme.headline4,
              ),
              TextField(
                controller: pizzaToppingTextField,
                style: Theme.of(context).textTheme.headline4,
              ),
              DropdownButton(
                  style: Theme.of(context).textTheme.headline4,
                  value: sizeSelected,
                  items:[
                    DropdownMenuItem(child: Text("Small"), value: 0),
                    DropdownMenuItem(child: Text("Medium"), value: 1),
                    DropdownMenuItem(child: Text("Large"), value: 2),
                    DropdownMenuItem(child: Text("X-Lareg"), value: 3)
                  ],
                  onChanged: (value) {
                    setState(() {
                      //sizeSelected = value;
                    });
                  }),
              ElevatedButton(
                child: Text('Add Pizza'),
                onPressed: () {
                  print("Adding a pizza");
                  setState(() {
                    Pizza newPizza = new Pizza(pizzaToppingTextField.text, sizeSelected);
                    pizzasInOrder.add(newPizza);
                    Navigator.pop(context);
                  });
                },
              ),
            ],
          ),
        )
    );

  }

}