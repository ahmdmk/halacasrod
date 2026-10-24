import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../utils/app_theme.dart';

class SearchBarWidget extends HookWidget {
  final Function(String) onSearch;
  final VoidCallback? onFilter;

  const SearchBarWidget({
    super.key,
    required this.onSearch,
    this.onFilter,
  });

  @override
  Widget build(BuildContext context) {
    final searchController = useTextEditingController();

    return Container(
      decoration: BoxDecoration(
        color: AppTheme.cardBackground,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: TextField(
        controller: searchController,
        onChanged: onSearch,
        decoration: InputDecoration(
          hintText: 'Search members...',
          prefixIcon: const Icon(Icons.search, color: AppTheme.textGray),
          suffixIcon: onFilter != null
              ? IconButton(
                  icon: const Icon(Icons.filter_list, color: AppTheme.textGray),
                  onPressed: onFilter,
                )
              : null,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
      ),
    );
  }
}