import 'package:cobe_task/providers/home%20page%20providers/selected_chip_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final List<String> statusFilter = [
  'Offline',
  'Online',
  'Parental',
  'Sick',
  'Vacation',
  'Away',
];

class FiltersList extends ConsumerWidget {
  const FiltersList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ('FiltersList build called');
    final selectedFilters = ref.watch(selectedChipsNotifierProvider);
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
          child: Row(
            children: [
              Wrap(
                spacing: 8.0,
                children: statusFilter.map((filter) {
                  final isSelected = selectedFilters.contains(filter);
                  return FilterChip(
                    label: Text(
                      filter,
                      style: TextStyle(
                        color: isSelected
                            ? const Color.fromRGBO(255, 255, 255, 1)
                            : const Color.fromRGBO(188, 196, 220, 1),
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    backgroundColor: const Color(0x00f2f7ff),
                    shape: StadiumBorder(
                      side: BorderSide(
                          color: isSelected
                              ? const Color.fromRGBO(0, 255, 0, 1)
                              : const Color.fromRGBO(188, 196, 220, 1),
                          width: 1),
                    ),
                    selectedColor: const Color.fromRGBO(0, 186, 136, 1),
                    elevation: isSelected ? 4 : 0,
                    selectedShadowColor: const Color.fromRGBO(0, 186, 136, 0.3),
                    showCheckmark: false,
                    selected: isSelected,
                    onSelected: (_) {
                      ref
                          .read(selectedChipsNotifierProvider.notifier)
                          .toggleChip(filter);
                      debugPrint('$selectedFilters');
                    },
                  );
                }).toList(),
              ),
            ],
          )),
    );
  }
}
