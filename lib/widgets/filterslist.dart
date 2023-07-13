import 'package:cobe_task/filtered_list_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FiltersList extends StatefulWidget {
  const FiltersList({super.key});

  @override
  State<FiltersList> createState() => _FiltersListState();
}

class _FiltersListState extends State<FiltersList> {
  final List<String> filterOptions = [
    'Offline',
    'Online',
    'Parental',
    'Sick',
    'Vacation',
    'Away',
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<FilteredListNotifier>(
      builder: (context, filteredListNotifier, _) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
            child: Row(
              children: [
                Wrap(
                  spacing: 8.0,
                  children: filterOptions.map((filter) {
                    final isSelected =
                        filteredListNotifier.isChipSelected(filter);

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
                      selectedShadowColor:
                          const Color.fromRGBO(0, 186, 136, 0.3),
                      showCheckmark: false,
                      selected: isSelected,
                      onSelected: (selected) {
                        final selectedFilters = filteredListNotifier.chip;
                        if (selected) {
                          selectedFilters.add(filter);
                        } else {
                          selectedFilters.remove(filter);
                        }
                        filteredListNotifier.onChipChanged(selectedFilters);
                      },
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
