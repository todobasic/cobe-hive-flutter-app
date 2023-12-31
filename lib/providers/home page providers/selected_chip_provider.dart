import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectedChipsNotifierProvider =
    StateNotifierProvider<SelectedChipsNotifier, List<String>>(
  (_) => SelectedChipsNotifier(),
);

class SelectedChipsNotifier extends StateNotifier<List<String>> {
  SelectedChipsNotifier() : super([]);

  void toggleChip(String chip) {
    if (state.contains(chip)) {
      state = List.from(state)..remove(chip);
    } else {
      state = List.from(state)..add(chip);
    }
  }
}
