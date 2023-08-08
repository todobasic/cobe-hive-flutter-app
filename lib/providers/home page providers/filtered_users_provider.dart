// ignore_for_file: avoid_print
import 'package:cobe_task/providers/home%20page%20providers/search_term_provider.dart';
import 'package:cobe_task/providers/home%20page%20providers/selected_chip_provider.dart';
import 'package:cobe_task/networking/users_provider.dart';
import 'package:cobe_task/user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final filteredUsersProvider = Provider<List<UserModel>>((ref) {
  final searchTerm = ref.watch(searchTermProvider);
  final selectedChips = ref.watch(selectedChipsNotifierProvider);
  final allUsersAsyncValue = ref.watch(allUsersProvider);

  //final List<UserModel> filteredUsers = [];

  print('Search term: $searchTerm');
  print('Selected chips: $selectedChips');
  print('All users: $allUsersAsyncValue');

  final List<UserModel> filteredUsers = allUsersAsyncValue.when(
    data: (data) {
      final allUsers = data;
      // Print allUsers to check the received user data from the API
      print('All users: $allUsers');

      return allUsers
          .where((user) =>
              _isSearchTermSatisfied(searchTerm, user) &&
              _isChipSatisfied(selectedChips, user.statusList))
          .toList();
    },
    loading: () => [], // Return an empty list while loading
    error: (error, stackTrace) => [], // Return an empty list on error
  );
  return filteredUsers;
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
