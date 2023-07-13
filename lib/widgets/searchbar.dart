import 'package:cobe_task/filtered_list_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Searchbar extends StatelessWidget {
  const Searchbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final searchFilter =
        Provider.of<FilteredListNotifier>(context, listen: false);

    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: TextField(
        style: const TextStyle(color: Colors.grey),
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none),
            hintText: 'Search...',
            hintStyle:
                const TextStyle(color: Colors.grey, fontFamily: 'FilsonPro'),
            prefixIcon: const Icon(Icons.search),
            prefixIconColor: Colors.grey),
        onChanged: (value) {
          searchFilter.onSearchTermChanged(value);
        },
      ),
    );
  }
}
