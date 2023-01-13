import 'package:flutter/material.dart';

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({Key? key}) : super(key: key);

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  bool iconButton = true;
  int dropDownValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            IconButton(
              icon: Icon(iconButton ? Icons.camera_alt : Icons.qr_code_2_rounded),
              disabledColor: Colors.redAccent,
              isSelected: true,
              selectedIcon: const Icon(Icons.adb_rounded),
              splashColor: Colors.red,
              splashRadius: 20,
              iconSize: 20,
              padding: const EdgeInsets.all(20),
              onPressed: () {
                iconButton = !iconButton;
                setState(() {});
              },
            ),
            DropdownButton(
              hint: const Text("Dropdown Button", style: TextStyle(fontSize: 16)),
              value: dropDownValue,
              isDense: true,
              underline: Container(),
              onChanged: (value) {
                debugPrint("Selected Value ---------->> $value");
                dropDownValue = value!;
                setState(() {});
              },
              items: const [
                DropdownMenuItem(
                  value: 1,
                  child: Text("Value 1", style: TextStyle(fontSize: 16)),
                ),
                DropdownMenuItem(
                  value: 2,
                  child: Text("Value 2", style: TextStyle(fontSize: 16)),
                ),
                DropdownMenuItem(
                  value: 3,
                  child: Text("Value 3", style: TextStyle(fontSize: 16)),
                ),
              ],
            ),
            InkWell(
              splashColor: Colors.blue,
              focusColor: Colors.deepOrange,
              child: const Icon(Icons.accessibility_sharp),
              onTap: () {},
            ),
            PopupMenuButton(
              elevation: 40,
              color: Colors.white,
              onSelected: (value) {},
              itemBuilder: (context) {
                return List.of(
                  [
                    const CheckedPopupMenuItem(
                      mouseCursor: SystemMouseCursors.alias,
                      value: 1,
                      child: Icon(Icons.wifi),
                    ),
                    const CheckedPopupMenuItem(
                      mouseCursor: SystemMouseCursors.alias,
                      value: 2,
                      child: Icon(Icons.bluetooth),
                    ),
                    const CheckedPopupMenuItem(
                      mouseCursor: SystemMouseCursors.alias,
                      value: 3,
                      child: Icon(Icons.network_cell),
                    ),
                  ],
                );
              },
            ),
            OutlinedButton(
              style: const ButtonStyle(),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    color: Colors.deepOrange,
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            ButtonBar(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Container(
                    width: 20,
                    height: 20,
                    color: Colors.deepPurple,
                  ),
                ),
                RawMaterialButton(
                  shape: const StadiumBorder(
                    side: BorderSide(
                      color: Colors.black,
                      width: 3,
                      style: BorderStyle.solid,
                    ),
                  ),
                  focusColor: Colors.yellowAccent,
                  fillColor: Colors.teal,
                  onPressed: () {},
                ),
                BackButton(
                  color: Colors.black,
                  onPressed: () {},
                ),
                CloseButton(
                  color: Colors.black,
                  onPressed: () {},
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}