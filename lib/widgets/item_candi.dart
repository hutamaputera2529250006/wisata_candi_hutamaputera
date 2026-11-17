import 'package:flutter/material.dart';
import 'package:wisata_candi/models/candi.dart';

class ItemCard extends StatelessWidget {
  // TODO 1 : buat variable yang dibutuhkan
  final Candi candi;
  const new({super.key, required this.candi});

  @override
  Widget build(BuildContext context) {
    // TODO 6 : implementasi routing ke DetailScreen
    return Card(
      // TODO 2 : set parameter shape, margin, dan elevation
      shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(15)),
      margin: EdgeInsets.all(4),
      elevation: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // TODO 3 : buat image sebagai anak column
            Expanded(
              // TODO 7 : implementasi Hero animation
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(15),
                child: Image.asset(
                  candi.imageAsset,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          // TODO 4 : buat text nama sebagai anak column
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 8),
            child: Text(
              candi.name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // TODO 5 : buat text tipe sebagai anak column
          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 8),
            child: Text(
              candi.type,
              style: TextStyle(
                fontSize: 12,
              ),
              ),
          ),
        ],
      ),
    );
  }
}
