import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:test/components/project_section/project_cards.dart';

class DetailsPage extends StatelessWidget {
  final ProjectData itemList;
  const DetailsPage({super.key, required this.itemList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(itemList.name),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 300,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                enableInfiniteScroll: true,
              ),
              items:
                  itemList.imgUrl.map((imgUrl) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        imgUrl,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    );
                  }).toList(),
            ),
            const SizedBox(height: 20),
            Text(
              itemList.name,
              style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Text(itemList.description, style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 20),
            // ElevatedButton(
            //   style: ElevatedButton.styleFrom(
            //     backgroundColor: Colors.redAccent,
            //   ),
            //   onPressed: () {
            //     print(itemList.link);
            //     _launchURL(context, itemList.link);
            //   },
            //   child: const Text("View Project"),
            // ),
          ],
        ),
      ),
    );
  }

  // void _launchURL(BuildContext context, String url) async {
  //   ScaffoldMessenger.of(
  //     context,
  //   ).showSnackBar(SnackBar(content: Text("Opening: $url")));
  //   launchUrlInBrowser(url);
  // }

  // Future<void> launchUrlInBrowser(String url) async {
  //   final Uri uri = Uri.parse(url);

  //   if (kIsWeb) {
  //     // Web-specific launch
  //     if (!await launchUrl(uri, webOnlyWindowName: '_blank')) {
  //       throw Exception('Could not launch $url');
  //     }
  //   } else {
  //     // Mobile/Desktop
  //     if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
  //       throw Exception('Could not launch $url');
  //     }
  //   }
  // }
}
