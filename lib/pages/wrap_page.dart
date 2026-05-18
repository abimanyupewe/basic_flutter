import 'package:flutter/material.dart';

class WrapPage extends StatelessWidget {
  const WrapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Container(
          height: 40,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(8),
          ),
          child: const TextField(
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              hintText: 'Cari iPhone 15 Pro, Kemeja...',
              hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
              prefixIcon: Icon(Icons.search, color: Colors.grey, size: 20),
              border: InputBorder.none,
              contentPadding: EdgeInsets.zero,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Pencarian Terakhir',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  'Hapus',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      _searchChip('Sepatu Sneakers Pria'),
                      const SizedBox(width: 8),
                      _searchChip('Tas Ransel'),
                    ],
                  ),
                  const SizedBox(height: 8),
                  _searchChip('Jam Tangan Digital Modern'),
                  const SizedBox(height: 8),
                  _searchChip('Kemeja Flanel Kotak'),
                ],
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Kategori Populer',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 20,
              runSpacing: 10,
              children: [
                _categoryChip(Icons.checkroom, 'Pakaian Pria', Colors.blue),
                _categoryChip(Icons.phone_android, 'Handphone', Colors.purple),
                _categoryChip(
                  Icons.sports_esports,
                  'Gaming Aksesoris',
                  Colors.orange,
                ),
                _categoryChip(Icons.shopping_bag, 'Tas Fashion', Colors.green),
                _categoryChip(Icons.watch, 'Jam Tangan', Colors.teal),
                _categoryChip(Icons.home, 'Perlengkapan Rumah', Colors.red),
                _categoryChip(Icons.directions_bike, 'Olahraga', Colors.indigo),
                _categoryChip(Icons.computer, 'Laptop & PC', Colors.blueGrey),
              ],
            ),
            const SizedBox(height: 24),
            const Text(
              'Tersedia Pilihan Ukuran',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                _sizeChip('S', false),
                _sizeChip('M', false),
                _sizeChip('L', true),
                _sizeChip('XL', false),
                _sizeChip('XXL', false),
                _sizeChip('XXXL', false),
                _sizeChip('4XL', false),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _searchChip(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(text, style: TextStyle(color: Colors.grey[800], fontSize: 13)),
          const SizedBox(width: 4),
          Icon(Icons.close, size: 14, color: Colors.grey[500]),
        ],
      ),
    );
  }

  Widget _categoryChip(IconData icon, String label, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withOpacity(0.3)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 18, color: color),
          const SizedBox(width: 8),
          Text(
            label,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.bold,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }

  Widget _sizeChip(String size, bool isSelected) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: isSelected ? Colors.indigo : Colors.white,
        border: Border.all(
          color: isSelected ? Colors.indigo : Colors.grey[300]!,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        size,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.black87,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
