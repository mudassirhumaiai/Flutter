import 'package:flutter/material.dart';
import '../constants.dart';
import 'hupply_logo.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedNavIndex = 0;

  void _selectNavItem(int index) {
    setState(() {
      _selectedNavIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final bool isSmallScreen = screenWidth < 800;

    return Container(
      height: 90, // Fixed height for the navbar
      decoration: BoxDecoration(
        color: AppColors.background,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ],
        border: Border(
          bottom: BorderSide(color: AppColors.border, width: 0.5),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Row(
        children: [
          // Logo
          const HupplyLogoWidget(height: 90),

          const Spacer(),

          // Navigation items - only show on larger screens
          if (!isSmallScreen) ...[
            NavItem(
              title: 'Home',
              isSelected: _selectedNavIndex == 0,
              onTap: () => _selectNavItem(0),
            ),
            const SizedBox(width: 65),
            NavItem(
              title: 'RFQ\'s',
              hasDropdown: true,
              isSelected: _selectedNavIndex == 1,
              onTap: () => _selectNavItem(1),
            ),
            const SizedBox(width: 65),
            NavItem(
              title: 'Chat History',
              isSelected: _selectedNavIndex == 2,
              onTap: () => _selectNavItem(2),
            ),
            const SizedBox(width: 65),
            NavItem(
              title: 'Supplier Management',
              isSelected: _selectedNavIndex == 3,
              onTap: () => _selectNavItem(3),
            ),
            const SizedBox(width: 65),
          ],

          // Profile icon or menu icon based on screen size
          isSmallScreen
              ? IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                )
              : const Icon(
                  Icons.person_outline,
                  size: 30,
                  color: Colors.black87,
                ),
        ],
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  final String title;
  final bool isSelected;
  final bool hasDropdown;
  final VoidCallback? onTap;

  const NavItem({
    super.key,
    required this.title,
    this.isSelected = false,
    this.hasDropdown = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(4),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 4.0),
        child: Row(
          children: [
            Text(
              title,
              style: isSelected ? AppStyles.navItemSelected : AppStyles.navItem,
            ),
            if (hasDropdown) const Icon(Icons.keyboard_arrow_down, size: 16),
          ],
        ),
      ),
    );
  }
}
