import 'package:flutter/material.dart';
import 'package:luxe_nail/screens/dashboard_screen.dart';
import 'package:luxe_nail/screens/gallery_screen.dart';
import 'package:luxe_nail/screens/profile_screen.dart';

import 'login_screen.dart';

class JenisTreatmentScreen extends StatelessWidget {
  JenisTreatmentScreen({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    const figmaW = 412;
    const figmaH = 917;

    final sW = w / figmaW;
    final sH = h / figmaH;

    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: const Color(0xFFFFEAEE),

      // ================= DRAWER =================
      drawer: Drawer(
        backgroundColor: const Color(0xFFFFF8F9),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Color(0xFFAF7C85)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30 * sW,
                    backgroundColor: const Color(0xFFFFEAEE),
                    child: Icon(
                      Icons.person,
                      size: 40 * sW,
                      color: const Color(0xFF451A2B),
                    ),
                  ),
                  SizedBox(height: 10 * sH),
                  const Text(
                    'Welcome Nailist!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home, color: Color(0xFF451A2B)),
              title: const Text(
                'Home',
                style: TextStyle(
                  color: Color(0xFF451A2B),
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.brush, color: Color(0xFF451A2B)),
              title: const Text(
                'Jenis Treatment',
                style: TextStyle(
                  color: Color(0xFF451A2B),
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(color: Color(0xFFAF7C85)),
            ListTile(
              leading: const Icon(Icons.logout, color: Color(0xFF451A2B)),
              title: const Text(
                'Logout',
                style: TextStyle(
                  color: Color(0xFF451A2B),
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                  (route) => false,
                );
              },
            ),
          ],
        ),
      ),

      // ================= BODY =================
      body: Stack(
        children: [
          // ================= HEADER =================
          Positioned(
            left: 26 * sW,
            top: 60 * sH,
            child: SizedBox(
              width: 351 * sW,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      _scaffoldKey.currentState!.openDrawer();
                    },
                    child: Icon(
                      Icons.menu,
                      size: 32 * sW,
                      color: const Color(0xFF451A2B),
                    ),
                  ),
                  Text(
                    'LUXE NAIL',
                    style: TextStyle(
                      color: const Color(0xFF975B73),
                      fontSize: 20 * sW,
                      fontFamily: 'Georgia',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // ================= MAIN CONTAINER =================
          Positioned(
            left: 13 * sW,
            top: 140 * sH,
            child: Container(
              width: 386 * sW,
              height: 720 * sH,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30 * sW),
                    topRight: Radius.circular(30 * sW),
                  ),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: -10 * sW,
                    top: -10 * sH,
                    child: Opacity(
                      opacity: 0.9,
                      child: Image.asset(
                        "assets/images/Splas1-HAND.png",
                        width: 386 * sW,
                        height: 720 * sH,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // ================= BANNER IMAGE DI BAWAH HEADER =================
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 386 * sW,
                      height: 200 * sH,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/jenis treatment-Vektor Tangan.png",
                          ),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 215 * sH,
                    left: 50 * sW,
                    child: SizedBox(
                      width: 280 * sW,
                      child: Text(
                        "What would you like to get done today?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0xFF451A2B),
                          fontSize: 20 * sW,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  // ================= CARDS =================
                  Positioned(
                    top: 300 * sH,
                    left: 20 * sW,
                    child: Row(
                      children: [
                        // ================= CARD 1 =================
                        Container(
                          width: 168 * sW,
                          height: 300 * sH, // lebih kecil karena tanpa Cancel
                          padding: EdgeInsets.symmetric(
                            horizontal: 8 * sW,
                            vertical: 11 * sH,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFAF7C85),
                            borderRadius: BorderRadius.circular(12 * sW),
                          ),
                          child: Column(
                            children: [
                              // INNER BOX
                              Container(
                                width: 150 * sW,
                                height: 230 * sH,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 6 * sW,
                                  vertical: 7 * sH,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFFEAEE),
                                  borderRadius: BorderRadius.circular(5 * sW),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      width: 148 * sW,
                                      height: 189 * sH,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            "assets/images/jenis treatment-Nail Exten.png",
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 7 * sH),
                                    Text(
                                      'Nail Extention',
                                      style: TextStyle(
                                        color: const Color(0xFF451A2B),
                                        fontSize: 12 * sW,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(height: 12 * sH),

                              // BUTTON CONFIRM (SAJA)
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10 * sW,
                                  vertical: 6 * sH,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF451A2B),
                                  borderRadius: BorderRadius.circular(14 * sW),
                                ),
                                child: Text(
                                  'Confirm',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15 * sW,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(width: 12 * sW),

                        // ================= CARD 2 =================
                        Container(
                          width: 168 * sW,
                          height: 300 * sH,
                          padding: EdgeInsets.symmetric(
                            horizontal: 8 * sW,
                            vertical: 11 * sH,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFAF7C85),
                            borderRadius: BorderRadius.circular(12 * sW),
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: 150 * sW,
                                height: 230 * sH,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 6 * sW,
                                  vertical: 7 * sH,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFFEAEE),
                                  borderRadius: BorderRadius.circular(5 * sW),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      width: 94 * sW,
                                      height: 190 * sH,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            "assets/images/jenis tretment-Nail art.png",
                                          ),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 7 * sH),
                                    Text(
                                      'Nail Art',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12 * sW,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(height: 12 * sH),

                              // BUTTON CONFIRM
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10 * sW,
                                  vertical: 6 * sH,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF451A2B),
                                  borderRadius: BorderRadius.circular(14 * sW),
                                ),
                                child: Text(
                                  'Confirm',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15 * sW,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // ================= BOTTOM NAVBAR =================
          Positioned(
            left: 0,
            top: 800 * sH,
            child: Container(
              width: 412 * sW,
              height: 120 * sH,
              padding: EdgeInsets.only(
                top: 24 * sH,
                left: 46 * sW,
                right: 46 * sW,
                bottom: 30 * sH,
              ),
              decoration: ShapeDecoration(
                color: const Color(0xFFFFF8F9),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(27 * sW),
                    topRight: Radius.circular(27 * sW),
                  ),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 9,
                    offset: Offset(5, -4),
                    spreadRadius: -1,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _bottomNavItem(
                    label: "Back",
                    icon: Icons.arrow_back,
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  _bottomNavItem(
                    label: "Design",
                    icon: Icons.brush,
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => JenisTreatmentScreen(),
                        ),
                        (route) => false,
                      );
                    },
                  ),
                  _bottomNavItem(
                    label: "Home",
                    icon: Icons.home,
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DashboardScreen(),
                        ),
                        (route) => false,
                      );
                    },
                  ),

                  _bottomNavItem(
                    label: "Gallery",
                    icon: Icons.photo_album,
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GalleryScreen(),
                        ),
                        (route) => false,
                      );
                    },
                  ),
                  _bottomNavItem(
                    label: "Profile",
                    icon: Icons.person,
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfileScreen(),
                        ),
                        (route) => false,
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ================= BOTTOM NAV ITEM =================
  Widget _bottomNavItem({
    required String label,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: const Color(0xFF975B73), size: 32),
          const SizedBox(height: 5),
          Text(
            label,
            style: const TextStyle(
              color: Color(0xFFCEA8BC),
              fontSize: 11,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
