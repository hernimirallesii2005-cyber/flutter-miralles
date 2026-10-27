import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int selectedTab = 0;

  static const Color facebookBlue = Color(0xFF0866FF);
  static const Color lightGrey = Color(0xFFE4E6EB);
  static const Color darkGrey = Color(0xFF65676B);

  void showMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), duration: const Duration(seconds: 2)),
    );
  }

  Widget _buildDetailRow({required IconData icon, required String text, bool isBold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: Row(
        children: [
          Icon(icon, size: 22, color: darkGrey),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: isBold ? FontWeight.w600 : FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabButton(String title, int index) {
    final bool isSelected = selectedTab == index;
    return GestureDetector(
      onTap: () => setState(() => selectedTab = index),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFE7F3FF) : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: isSelected ? facebookBlue : darkGrey,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () => showMessage('Back pressed'),
          icon: const Icon(Icons.arrow_back, color: Colors.black),
        ),
        title: const Text(
          'John Doe',
          style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.normal),
        ),
        actions: [
          IconButton(
            onPressed: () => showMessage('Search tapped'),
            icon: const Icon(Icons.search, color: Colors.black),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Area (Cover + Avatar Stack)
            SizedBox(
              height: 250,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  // Cover Image
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    height: 200,
                    child: GestureDetector(
                      onTap: () => showMessage('Cover photo viewed'),
                      child: Image.network(
                        'https://unsplash.com',
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(color: const Color(0xFF26364A));
                        },
                      ),
                    ),
                  ),
                  // Cover Edit Button
                  Positioned(
                    right: 12,
                    top: 156,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 18,
                      child: IconButton(
                        icon: const Icon(Icons.camera_alt, size: 18, color: Colors.black),
                        onPressed: () => showMessage('Edit cover photo'),
                      ),
                    ),
                  ),
                  // Profile Avatar
                  Positioned(
                    bottom: 0,
                    left: 16,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 4),
                          ),
                          child: const CircleAvatar(
                            radius: 64,
                            backgroundColor: lightGrey,
                            backgroundImage: NetworkImage(
                              'https://unsplash.com',
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: CircleAvatar(
                            backgroundColor: lightGrey,
                            radius: 18,
                            child: CircleAvatar(
                              backgroundColor: lightGrey,
                              radius: 16,
                              child: IconButton(
                                padding: EdgeInsets.zero,
                                icon: const Icon(Icons.camera_alt, size: 18, color: Colors.black),
                                onPressed: () => showMessage('Edit profile picture'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Identity Metadata Block
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'John Doe',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Building smooth mobile interfaces 🚀',
                    style: TextStyle(fontSize: 15, color: darkGrey),
                  ),
                ],
              ),
            ),

            // Functional Action Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 38,
                      child: ElevatedButton.icon(
                        onPressed: () => showMessage('Add to story tapped'),
                        icon: const Icon(Icons.add, size: 18),
                        label: const Text('Add to story'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: facebookBlue,
                          foregroundColor: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: SizedBox(
                      height: 38,
                      child: ElevatedButton.icon(
                        onPressed: () => showMessage('Edit profile tapped'),
                        icon: const Icon(Icons.edit, size: 18),
                        label: const Text('Edit profile'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: lightGrey,
                          foregroundColor: Colors.black,
                          elevation: 0,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    height: 38,
                    width: 48,
                    decoration: BoxDecoration(
                      color: lightGrey,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.more_horiz, color: Colors.black),
                      onPressed: () => showMessage('More profile options'),
                    ),
                  ),
                ],
              ),
            ),

            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Divider(thickness: 1, color: lightGrey),
            ),

            // Structured Details Panel
            _buildDetailRow(icon: Icons.work_outline, text: 'IT', isBold: true),
            _buildDetailRow(icon: Icons.home_outlined, text: 'Lives in Iloilo City, Philippines'),
            
            _buildDetailRow(icon: Icons.access_time, text: 'Joined November 2015'),

            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Divider(thickness: 1, color: lightGrey),
            ),

            // Profile Filtering Tabs
            Padding(padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
child: SingleChildScrollView(
scrollDirection: Axis.horizontal,
child: Row(
children: [
_buildTabButton('Posts', 0),
_buildTabButton('Photos', 1),
_buildTabButton('Videos', 2),
_buildTabButton('About', 3),
],
),
),
),
const SizedBox(height: 16),
],
),
),
);
}
}
