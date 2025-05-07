import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test/components/project_section/project_cards.dart';
import 'package:test/utils/images.dart';
import 'package:test/utils/router/route_names.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<ProjectData> projectList = [
      ProjectData(
        imgUrl: [ImageNames.adfire],
        name: 'Adfire',
        description:
            "An advertisement mobile application. This app was designed to be used in Bahamas as requested to promote and advertise Ads such as jobs, properties for sale or rent, sales and trending news. This App was built using: Flutter, MongoDb ,Node Js(Typescript), One signal push notifications, Google storage bucket, Amazon Web Services (AWS) Key technologies used in this app were: Push notifications for both Platforms, Deep linking for both platforms, WebSocket, File Storage and Access, Custom API with Advanced Querying, Responsive clean UI etc.",
        link: "https://github.com/mc100p/Adfire",
      ),
      ProjectData(
        imgUrl: [],
        name: 'Rescue',
        description: 'Description of project 2.',
        link: "https://example.com/project2",
      ),
      ProjectData(
        imgUrl: [],
        name: 'Transport',
        description: 'Description of project 3.',
        link: "https://example.com/project3",
      ),
      ProjectData(
        imgUrl: [],
        name: "Foster's Home Office",
        description: 'Description of project 3.',
        link: "https://example.com/project3",
      ),
      ProjectData(
        imgUrl: [],
        name: "Northern Caribbean University",
        description: 'Description of project 3.',
        link: "https://example.com/project3",
      ),
      ProjectData(
        imgUrl: [],
        name: "UluMe",
        description: 'Description of project 3.',
        link: "https://example.com/project3",
      ),
      ProjectData(
        imgUrl: [],
        name: "Learn on the go Caribbean",
        description: 'Description of project 3.',
        link: "https://example.com/project3",
      ),
      ProjectData(
        imgUrl: [],
        name: "Wol'Dem",
        description: 'Description of project 3.',
        link: "https://example.com/project3",
      ),
    ];

    return Container(
      padding: const EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Projects',
            style: TextStyle(fontSize: 28, color: Colors.red),
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children:
                projectList
                    .asMap()
                    .entries
                    .map(
                      (entry) => InkWell(
                        onTap:
                            () => context.pushNamed(
                              RouteNames.detailPage.name,
                              extra: entry.value,
                            ),
                        child: ProjectCard(
                          project: entry.value,
                          index: entry.key,
                        ),
                      ),
                    )
                    .toList(),
          ),
        ],
      ),
    );
  }
}
