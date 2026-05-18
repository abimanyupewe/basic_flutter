import 'package:basic_flutter/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ScrollDirectionExample extends StatelessWidget {
  const ScrollDirectionExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Vertical Scroll',
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
            color: AppTheme.darkText,
          ),
        ),
        SizedBox(height: 8),
        SizedBox(
          height: 200,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: List.generate(8, (index) {
                final titles = [
                  'Promo Weekend Sale',
                  'New Arrival: Sneakers Edition',
                  'Flash Sale 50%',
                  'Free Shipping Today',
                  'Special Offer: Buy 1 Get 1',
                  'New Collection Available',
                  'Limited Time Deal',
                  'Members Only Sale',
                ];
                final subtitles = [
                  'Diskon hingga 70% untuk semua produk',
                  'Temukan gaya terbarumu hari ini',
                  'Segera sebelum waktu habis',
                  'Belanja tanpa biaya pengiriman',
                  'Nikmati gratisan untuk pembelian pertama',
                  'Koleksi terbaru sudah tersedia',
                  'Tawaran istimewa hanya hari ini',
                  'Eksklusif untuk member terdaftar',
                ];
                final icons = [
                  Icons.local_offer,
                  Icons.shopping_bag,
                  Icons.flash_on,
                  Icons.local_shipping,
                  Icons.card_giftcard,
                  Icons.new_releases,
                  Icons.timer,
                  Icons.star,
                ];
                final colors = [
                  Colors.red,
                  Colors.blue,
                  Colors.orange,
                  Colors.green,
                  Colors.purple,
                  Colors.teal,
                  Colors.amber,
                  Colors.pink,
                ];

                return Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: AppTheme.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: AppTheme.borderColor),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.03),
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          color: colors[index].withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          icons[index],
                          color: colors[index],
                          size: 22,
                        ),
                      ),
                      SizedBox(width: 14),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              titles[index],
                              style: TextStyle(
                                color: AppTheme.darkText,
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 4),
                            Text(
                              subtitles[index],
                              style: TextStyle(
                                color: AppTheme.lightText,
                                fontSize: 12,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: AppTheme.lightText,
                        size: 20,
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ),
        SizedBox(height: 24),
        Text(
          'Horizontal Scroll',
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
            color: AppTheme.darkText,
          ),
        ),
        SizedBox(height: 8),
        SizedBox(
          height: 160,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(8, (index) {
                final categories = [
                  'Fashion',
                  'Elektronik',
                  'Beauty',
                  'Home',
                  'Sports',
                  'Books',
                  'Toys',
                  'Food',
                ];
                final images = [
                  'https://picsum.photos/seed/fashion/200/150',
                  'https://picsum.photos/seed/electronic/200/150',
                  'https://picsum.photos/seed/beauty/200/150',
                  'https://picsum.photos/seed/home/200/150',
                  'https://picsum.photos/seed/sports/200/150',
                  'https://picsum.photos/seed/books/200/150',
                  'https://picsum.photos/seed/toys/200/150',
                  'https://picsum.photos/seed/food/200/150',
                ];
                final icons = [
                  Icons.checkroom,
                  Icons.devices,
                  Icons.face_retouching_natural,
                  Icons.home,
                  Icons.sports_soccer,
                  Icons.menu_book,
                  Icons.toys,
                  Icons.restaurant,
                ];

                return Container(
                  width: 130,
                  margin: EdgeInsets.only(right: 12),
                  decoration: BoxDecoration(
                    color: AppTheme.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: AppTheme.borderColor),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.05),
                        blurRadius: 8,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(5)),
                        child: Image.network(
                          images[index],
                          height: 90,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              height: 90,
                              color: AppTheme.secondaryLight,
                              child: Center(
                                child: Icon(
                                  icons[index],
                                  size: 32,
                                  color: AppTheme.primaryDark.withValues(alpha: 0.5),
                                ),
                              ),
                            );
                          },
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return Container(
                              height: 90,
                              color: AppTheme.secondaryLight,
                              child: Center(
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  color: AppTheme.primaryDark,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              categories[index],
                              style: TextStyle(
                                color: AppTheme.darkText,
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 2),
                            Text(
                              '${(index + 1) * 12} items',
                              style: TextStyle(
                                color: AppTheme.lightText,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}