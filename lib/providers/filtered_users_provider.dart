// ignore_for_file: avoid_print

import 'package:cobe_task/providers/search_term_provider.dart';
import 'package:cobe_task/providers/selected_chip_provider.dart';
import 'package:cobe_task/providers/users_provider.dart';
import 'package:cobe_task/user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final filteredUsersProvider = Provider<List<User>>((ref) {
  final searchTerm = ref.watch(searchTermProvider);
  final selectedChips = ref.watch(selectedChipsNotifierProvider);
  final allUsers = ref.read(allUsersProvider);

  final List<User> filteredUsers = [];

  print('Search term: $searchTerm');
  print('Selected chips: $selectedChips');
  print('All users: $allUsers');

  for (var user in allUsers) {
    if (_isSearchTermSatisfied(searchTerm, user) &&
        _isChipSatisfied(selectedChips, user.statusList)) {
      filteredUsers.add(user);
    }
  }

  return filteredUsers;
});

bool _isChipSatisfied(List<String> selectedChips, List<String> statusList) {
  if (selectedChips.isEmpty) {
    return true;
  }
  for (var element in selectedChips) {
    if (statusList.contains(element)) {
      return true;
    }
  }
  return false;
}

bool _isSearchTermSatisfied(String? searchTerm, User user) {
  if (searchTerm == null) {
    return true;
  }

  return user.name.toLowerCase().contains(searchTerm.toLowerCase());
}
