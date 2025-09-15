import 'package:calculator/utils/data.dart';
import 'package:calculator/utils/text_style.dart';
import 'package:flutter/material.dart';

class ShoppingListScree extends StatefulWidget {
  ShoppingListScree({super.key});

  @override
  State<ShoppingListScree> createState() => _ShoppingListScreeState();
}

class _ShoppingListScreeState extends State<ShoppingListScree> {
  late List<FoodItem> filteredList;

  // Assuming foodList is defined in data.dart
  TextEditingController nameController = TextEditingController();
  TextEditingController foodNameController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    print("initState call");

    print("ShoppingListScree initState called");
    filteredList = foodList; // Initialize filteredList with the full list
    print("Initial filteredList: $filteredList");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("build call");

    return Scaffold(
      body: Column(
        children: [
          //header
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.amber,
            child: Form(
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 6,
                        children: [
                          Text(
                            "Discover",
                            style: getBFStyle(color: Colors.white),
                          ),
                          Text(
                            "Search on your go !!!",
                            style: getRFStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  buildTextFormField(
                    controller: nameController,
                    onChanged: (value) {
                      print(value);
                      setState(() {
                        filteredList = filterList(value);
                        print(filteredList.toList());
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          //Main List
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children:
                  filteredList.map((item) {
                    return Card(
                      child: ListTile(
                        title: Text(item.name, style: getMFStyle()),
                        subtitle: Text(
                          "Count: ${item.count}",
                          style: getRFStyle(),
                        ),
                        trailing: Text(
                          "Total Price: \$${item.totalPrize}",
                          style: getBFStyle(),
                        ),
                      ),
                    );
                  }).toList(),
            ),
          ),

          //Footer
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.amber,
            child: Column(
              children: [
                buildTextFormField(
                  controller: foodNameController,
                  hintText: "food name",
                ),
                SizedBox(height: 10),

                ElevatedButton(
                  onPressed: () {
                    foodList.add(
                      FoodItem(
                        name: foodNameController.text,
                        count: 1,
                        unitPrize: 100,
                      ),
                    );
                    setState(() {});
                  },
                  child: Text("Add Item"),
                ),
                SizedBox(height: 10),
                Text(
                  "Total Items: ${filteredList.length}",
                  style: getEBFStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  TextFormField buildTextFormField({
    TextEditingController? controller,
    Function(String)? onChanged,
    String? hintText,
  }) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: Icon(Icons.search),
        hintText: hintText ?? "Search your item in list",
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
        border: OutlineInputBorder(),
      ),
      onChanged: onChanged,
    );
  }



  List<FoodItem> filterList(String query) {
    return foodList.where((item) {
      return item.name.toLowerCase().contains(query.toLowerCase());
    }).toList();
  }


  @override
  void didChangeDependencies() {
    print("didChangeDependencies call");
  }


  @override
  void didUpdateWidget( oldWidget) {
    print("didUpdateWidget call");

  }

  @override
  void dispose() {
    print("dispose call");

  }
}
