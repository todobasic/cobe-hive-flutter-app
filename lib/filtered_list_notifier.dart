import 'package:cobe_task/user.dart';
import 'package:flutter/material.dart';
import 'package:cobe_task/user_list_temp.dart';

class FilteredListNotifier extends ChangeNotifier {
  final List<User> allUsers;

  FilteredListNotifier(this.allUsers);

  List<User> _filteredUsers = UserListTemp.userList;

  String? _searchTerm;
  List<String> _chip = [];

  List<User> get filteredUsers => _filteredUsers;
  List<String> get chip => _chip;

  bool isChipSelected(String chip) => _chip.contains(chip);

  onSearchTermChanged(String searchTerm) {
    _searchTerm = searchTerm;
    filterUsers();
    notifyListeners();
  }

  onChipChanged(List<String> chips) {
    _chip = chips;
    filterUsers();
    notifyListeners();
  }

  filterUsers() {
    _filteredUsers = allUsers.where((user) {
      final isSearchSatisfied = _isSerchTermSatisfied(user);
      return isSearchSatisfied &&
          (_chip.isEmpty ||
              _chip.any((chip) => user.statusList.contains(chip)));
    }).toList();
  }

  bool _isSerchTermSatisfied(User user) {
    if (_searchTerm == null) {
      return true;
    }
    if (_searchTerm!.isEmpty) {
      return true;
    }
    return user.name.contains(_searchTerm!);
  }

  bool _isChipSatisfied(User user) {
    return user.statusList.contains(_chip);
  }
}
