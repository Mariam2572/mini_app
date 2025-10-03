// plan_container.dart
import 'package:flutter/material.dart';
import 'package:mini_app/core/utils/app_assets.dart';
import 'package:mini_app/helper/helper_extention.dart';

class PlanContainer extends StatelessWidget {
  final bool isSelected;
  final String title;
  final String price;
  final VoidCallback onTap;

  const PlanContainer({
    super.key,
    required this.isSelected,
    required this.title,
    required this.price,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xff2A2A3C) : Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: isSelected ? const Color(0xff5D5FEF) : Colors.transparent,
            width: 2,
          ),
        ),
        child: Row(
          children: [
            Image.asset(
              AppAssets.files,
              width: 48,
              height: 48,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: isSelected ? Colors.white : Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    price,
                    style: context.textTheme.bodySmall?.copyWith(
                      color: isSelected ? Colors.white70 : const Color(0xff6B6B6B),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Include Family Sharing',
                    style: context.textTheme.bodySmall?.copyWith(
                      color: isSelected ? Colors.white60 : const Color(0xffAEADB5),
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected ? const Color(0xff5D5FEF) : const Color(0xffE0E0E0),
                  width: 2,
                ),
                color: isSelected ? const Color(0xff5D5FEF) : Colors.transparent,
              ),
              child: isSelected
                  ? const Icon(
                      Icons.check,
                      size: 16,
                      color: Colors.white,
                    )
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}