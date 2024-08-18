import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.all(5.0),
              child: CustomBookItem(imageUrl: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fsolguruz.com%2Fblog%2Fflutter-app-development-cost-a-complete-guide%2F&psig=AOvVaw0GEbL8gnculxCH4B7nm6S3&ust=1724083879613000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCLCP5Zr3_ocDFQAAAAAdAAAAABAE',),
            );
          }),
    );
  }
}
