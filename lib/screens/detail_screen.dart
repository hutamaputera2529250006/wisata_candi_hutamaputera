import 'package:flutter/material.dart';
import 'package:wisata_candi/models/candi.dart';

class DetailScreen extends StatelessWidget {
  final Candi candi;
  const DetailScreen({super.key, required this.candi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Detail header
          Stack(
            children: [
              // image utama
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    candi.imageAsset,
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // tombol back
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 32,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple.withAlpha(225),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
            ],
          ),
          // Detail info

          // Detail galeri
        ],
      ),
    );
  }
}