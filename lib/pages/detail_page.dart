import 'package:flutter/material.dart';
import 'package:teste_dan/core/filme.dart';
import 'package:teste_dan/pages/main_page.dart';

// class MovieDetail extends StatefulWidget {
//   const MovieDetail({Key? key, required this.filme}) : super(key: key);
//
//   static const routeName = '/movieDetail';
//   final List filme;
//
//   @override
//   State<MovieDetail> createState() => _MovieDetailState();
// }
//
// class _MovieDetailState extends State<MovieDetail> {
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(filme['original_title'].toString()),
//       ),
//     );
//   }
// }

class MovieDetail extends StatelessWidget {
  const MovieDetail({Key? key, required this.filme}) : super(key: key);
  final List filme;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(filme[5].toString()),
      ),
    );
  }
}
