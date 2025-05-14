import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Balance Card
              Container(
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xFF6750A4),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Balance',
                      style: TextStyle(color: Colors.white70),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Rp12.500,00',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        _ActionItem(icon: Icons.add, label: 'Top up'),
                        _ActionItem(
                          icon: Icons.account_balance_wallet,
                          label: 'Wallet',
                        ),
                        _ActionItem(
                          icon: Icons.qr_code_scanner,
                          label: 'QR Scan',
                        ),
                        _ActionItem(icon: Icons.qr_code, label: 'My QR'),
                      ],
                    ),
                  ],
                ),
              ),

              // Send Again
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: const [
                    Text(
                      'Send Again',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  children: const [
                    _ProfileItem(name: 'Nayla'),
                    _ProfileItem(name: 'Fajar'),
                    _ProfileItem(name: 'Arman'),
                    _ProfileItem(name: 'Awalin'),
                    _ProfileItem(name: 'Yusuf'),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              // Payment List
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: const [
                    Text(
                      'Payment List',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Wrap(
                  spacing: 20,
                  runSpacing: 16,
                  children: const [
                    _PaymentItem(icon: Icons.flash_on, label: 'Electricity'),
                    _PaymentItem(icon: Icons.wifi, label: 'Internet'),
                    _PaymentItem(icon: Icons.shield, label: 'Insurance'),
                    _PaymentItem(icon: Icons.local_hospital, label: 'Medical'),
                    _PaymentItem(icon: Icons.store, label: 'Market'),
                    _PaymentItem(icon: Icons.bolt, label: 'Electric bill'),
                    _PaymentItem(icon: Icons.tv, label: 'Television'),
                    _PaymentItem(icon: Icons.opacity, label: 'Waterbill'),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Trading History
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: const [
                    Text(
                      'Trading History',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.orange.shade100,
                  child: const Icon(Icons.bolt, color: Colors.orange),
                ),
                title: const Text('Electric bill'),
                subtitle: const Text('Sent'),
                trailing: const Text(
                  '-Rp40.000',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xFF6750A4),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Activity',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

class _ActionItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const _ActionItem({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(icon, color: const Color(0xFF6750A4)),
        ),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(color: Colors.white)),
      ],
    );
  }
}

class _ProfileItem extends StatelessWidget {
  final String name;

  const _ProfileItem({required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Column(
        children: [
          const CircleAvatar(radius: 24, backgroundColor: Colors.grey),
          const SizedBox(height: 4),
          Text(name, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}

class _PaymentItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const _PaymentItem({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 24,
          child: Icon(icon, color: Colors.black),
        ),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}
