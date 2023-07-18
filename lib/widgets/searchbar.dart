import 'package:cobe_task/providers/users_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Searchbar extends ConsumerWidget {
  const Searchbar({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
            ref.read(usersProvider.notifier).onSearchTermChanged(value);
          }),
    );
  }
}
