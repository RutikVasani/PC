import 'package:flutter/material.dart';
import 'package:pc/pages/CustomersData.dart';

class Search extends SearchDelegate {
  List<String> data = [
    "9937690832",
    "4594876543",
    "7527699832",
    "8141199272",
    "9327197604",
    "5679927334"
  ];

  List<String> recentSearch = [
    "9937690832",
    "4594876543",
    "7527699832",
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return <Widget>[
      IconButton(
        color: Colors.blue,
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      color: Colors.blue,
        icon: Icon(Icons.arrow_back), onPressed: () => Navigator.pop(context));
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query != null && data.contains(query.toLowerCase())) {
      return ListTile(
        title: Text(query),
        trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.blue,
            ),
        onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CustomersData()),
              );
            },
      );
    } else if (query == "") {
      return Text("");
    } else {
      return ListTile(
        title: Text("No results found"),
        onTap: () {},
      );
    }
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView.builder(
        itemCount: recentSearch.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recentSearch[index]),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.blue,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CustomersData()),
              );
            },
          );
        });
  }
}
