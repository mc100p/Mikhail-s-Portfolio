import 'package:flutter/material.dart';

class ProjectData {
  final List<String> imgUrl;
  final String name;
  final String description;
  final String link;

  ProjectData({
    required this.imgUrl,
    required this.name,
    required this.description,
    required this.link,
  });
}

class ProjectCard extends StatelessWidget {
  final ProjectData project;
  final int index;

  const ProjectCard({required this.project, required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 280,
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).primaryColor),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            color: Colors.grey[900],
            child: Center(
              child:
                  project.imgUrl.isNotEmpty
                      ? Image.network(
                        project.imgUrl.first,
                        fit: BoxFit.cover,
                        errorBuilder:
                            (context, error, stackTrace) => Icon(
                              Icons.image,
                              color: Theme.of(context).primaryColor,
                            ),
                      )
                      : Icon(
                        Icons.image,
                        color: Theme.of(context).primaryColor,
                      ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            project.name,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          // Text(project.description, style: const TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}
