// ignore_for_file: avoid_print
import 'package:cobe_task/networking/user_list_provider.dart';
import 'package:cobe_task/providers/home%20page%20providers/search_term_provider.dart';
import 'package:cobe_task/providers/home%20page%20providers/selected_chip_provider.dart';
import 'package:cobe_task/user_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final filteredUsersProvider = FutureProvider<List<UserModel>>((ref) async {
  final searchTerm = ref.watch(searchTermProvider);
  final selectedChips = ref.watch(selectedChipsNotifierProvider);
  final userList = ref.watch(userListProvider);

  print('Search term: $searchTerm');
  print('Selected chips: $selectedChips');
  print('All users: $userList');

  return userList.when(
      initial: () => [],
      loading: ((dataMaybe) {
        return [];
      }),
      success: ((data) {
        final List<UserModel> filteredUsers = [];

        for (var user in data) {
          if (_isSearchTermSatisfied(searchTerm, user) &&
              _isChipSatisfied(selectedChips, user.statusList)) {
            filteredUsers.add(user);
          }
        }
        return filteredUsers;
      }),
      error: (error) {
        return [];
      });
});

bool _isChipSatisfied(List<String> selectedChips, List<String> statusList) {
  if (selectedChips.isEmpty) {
    return true;
  }
  for (var element in selectedChips) {
    if (statusList.contains(element.toLowerCase())) {
      return true;
    }
  }
  return false;
}

bool _isSearchTermSatisfied(String? searchTerm, UserModel user) {
  if (searchTerm == null) {
    return true;
  }

  return user.name!.toLowerCase().contains(searchTerm.toLowerCase());
}
