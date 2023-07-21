import 'package:flutter/material.dart';

class Searchbar extends StatelessWidget {
  const Searchbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
      ),
    );
  }
}
