// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselGojek extends StatefulWidget {
  const CarouselGojek({Key? key}) : super(key: key);

  @override
  State<CarouselGojek> createState() => _CarouselGojekState();
}

class _CarouselGojekState extends State<CarouselGojek> {
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      List images = [
        "https://media.istockphoto.com/id/1447131862/id/foto/kurir-mengantarkan-makanan-cepat-saji-ke-pelanggan.jpg?s=612x612&w=0&k=20&c=8CUNanrsk9br5zO8mM4gIY8-py6iBH2TMYS8NSdVWno=",
        "https://media.istockphoto.com/id/1493950504/id/foto/pengiriman-3d-skuter-hijau-dan-kotak-makanan-dengan-pin-bendera-terisolasi-pada-latar-belakang.jpg?s=612x612&w=0&k=20&c=A_OM6H5PoT9TSfI3ljMMM4fCA_5nv5HqrrAHuCoGu6w=",
        "https://media.istockphoto.com/id/1409387561/id/foto/konsep-transportasi-dan-logistik-manajer-dan-insinyur-memeriksa-dan-mengontrol-distribusi.jpg?s=612x612&w=0&k=20&c=3_q0Go28VUpoaWTyjY-t6NlSWjJAf5hCiwpeoDVbPeA=",
        "https://media.istockphoto.com/id/848475436/id/foto/pria-kiriman-muda-asia-tersenyum-sambil-memegang-kiriman-kotak-kardus-kepada-pelanggannya.jpg?s=612x612&w=0&k=20&c=56JLfhQkfQGfNy8Ru6mGhcSmwoid32Z-xUbmz7iicqo=",
        "https://media.istockphoto.com/id/1425938223/id/foto/kurir-pengantar-obat-dengan-masker-dan-sarung-tangan-dengan-pembelian-pil-medis-selama.jpg?s=612x612&w=0&k=20&c=jNe_pW_kIxWxNrAvkMphs75y3QC0kvUe2mItaoDBrgY=",
      ];

      return CarouselSlider(
        options: CarouselOptions(
          height: 140.0,
          autoPlay: false,
          viewportFraction: 0.9,
          enlargeCenterPage: false,
          enableInfiniteScroll: false,
        ),
        items: images.map((imageUrl) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(6.0),
                  ),
                  image: DecorationImage(
                    image: NetworkImage(
                      imageUrl,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          );
        }).toList(),
      );
    });
  }
}
