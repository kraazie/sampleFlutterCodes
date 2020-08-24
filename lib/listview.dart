import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expandable List View'),
      ),
      body: expandableListView(context),
    );
  }

  Widget expandableListView(BuildContext context) {
    final list = new List.generate(2, (index) => "Item ${index + 1}");
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return ExpansionTile(
            title: new Text("Header ${index + 1}"),
            initiallyExpanded: true,
            children: list
                .map((val) => Card(
                      child: ListTile(
                        leading: FlutterLogo(),
                        title: Text('One-line with both widgets'),
                        subtitle: Text('A strong animal'),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        dense: true,
                        onTap: (){
                          print("${list[index]}");
                        },
                      ),
                    ))
                .toList(),
          );
        },
        itemCount: 5,
      ),
    );
  }
}
