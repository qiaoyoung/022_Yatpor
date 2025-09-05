import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildTabItem(0, 'assets/images/tab/yatpor_tab_1_nor.png'),
            _buildTabItem(1, 'assets/images/tab/yatpor_tab_2_nor.png'),
            _buildTabItem(2, 'assets/images/tab/yatpor_tab_3_nor.png'),
            _buildTabItem(3, 'assets/images/tab/yatpor_tab_4_nor.png'),
          ],
        ),
      ),
    );
  }

  Widget _buildTabItem(int index, String iconPath) {
    final isSelected = currentIndex == index;
    
    return GestureDetector(
      onTap: () => onTap(index),
      behavior: HitTestBehavior.opaque,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 28,
              height: 28,
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  isSelected ? AppTheme.primaryColor : AppTheme.textSecondaryColor,
                  BlendMode.srcIn,
                ),
                child: Image.asset(
                  iconPath,
                  width: 28,
                  height: 28,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
