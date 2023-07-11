import 'package:flutter/material.dart';

class FiltersList extends StatefulWidget {
  const FiltersList({super.key});

  @override
  State<FiltersList> createState() => _FiltersListState();
}

class _FiltersListState extends State<FiltersList> {
  final List<String> statusFilter = [
    'Offline',
    'Online',
    'Parental',
    'Sick',
    'Vacation',
    'Away',
  ];

  Set<String> selectedFilters = <String>{};

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
      scrollDirection: Axis.horizontal,
      itemCount: statusFilter.length,
      separatorBuilder: (context, index) => const SizedBox(width: 10),
      itemBuilder: (BuildContext context, int index) {
        final isSelected = selectedFilters.contains(statusFilter[index]);
        return FilterChip(
          onSelected: (bool selected) => setState(
            () {
              selected
                  ? selectedFilters.add(statusFilter[index])
                  : selectedFilters.remove(statusFilter[index]);
            },
          ),
          selected: isSelected,
          label: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7.0, vertical: 6.0),
            child: Text(
              statusFilter[index],
              style: TextStyle(
                color: isSelected
                    ? const Color.fromRGBO(255, 255, 255, 1)
                    : const Color.fromRGBO(188, 196, 220, 1),
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
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
        );
      },
    );
  }
}
