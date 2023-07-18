import 'package:cobe_task/user_list_temp.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cobe_task/user.dart';

final usersProvider = StateNotifierProvider<UsersNotifier, List<User>>((ref) {
  return UsersNotifier();
});

class UsersNotifier extends StateNotifier<List<User>> {
  UsersNotifier() : super(UserListTemp.userList);

  String? _searchTerm;
  List<String> _chip = [];

  List<String> get chip => _chip;

  bool isChipSelected(String chip) => _chip.contains(chip);

  final List<User> allUsers = UserListTemp.userList;

  onSearchTermChanged(String searchTerm) {
    _searchTerm = searchTerm;
    filterUsers();
  }

  onChipChanged(List<String> chips) {
    _chip = chips;
    filterUsers();
  }

  filterUsers() {
    state = allUsers.where((user) {
      final isSearchSatisfied = _isSearchTermSatisfied(user);
      return isSearchSatisfied &&
          (_chip.isEmpty ||
              _chip.any((chip) => user.statusList.contains(chip)));
    }).toList();
  }

  bool _isSearchTermSatisfied(User user) {
    if (_searchTerm == null || _searchTerm!.isEmpty) {
      return true;
    }
    return user.name.contains(_searchTerm!);
  }

  addChip(String chip) {
    _chip.add(chip);
    filterUsers();
  }

  removeChip(String chip) {
    _chip.remove(chip);
    filterUsers();
  }
}
