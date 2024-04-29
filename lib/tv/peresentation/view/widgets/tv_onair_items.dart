import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class TvOnAirItems extends StatelessWidget {
  const TvOnAirItems({super.key, required this.text, required this.image});
  final String text;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
            aspectRatio: 1.5,
            child: CachedNetworkImage(
              imageUrl: 'https://image.tmdb.org/t/p/w500$image',
              fit: BoxFit.fill,
            )),
        const Positioned(
          bottom: 70,
          left: 160,
          child:Row(
            children: [
              Icon(Icons.circle,
              color: Colors.red,),
              SizedBox(width: 3,),
               Text(
            'Now Playing',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w900, color: Colors.white),
          ),
            ],
          )
        ),
        const SizedBox(
          height: 50,
        ),
        Positioned(
          bottom: 30,
          left: 180,
          child: Text(
            text,
            style: const TextStyle(
                fontSize: 24, fontWeight: FontWeight.w900, color: Colors.white),
          ),
        )
      ],
    );
  }
}
