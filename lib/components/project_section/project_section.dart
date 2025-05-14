import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test/components/project_section/project_cards.dart';
import 'package:test/constants/constants.dart';
import 'package:test/utils/images.dart';
import 'package:test/utils/router/route_names.dart';

class ProjectsSection extends StatelessWidget {
  final GlobalKey navigationKey;
  const ProjectsSection({super.key, required this.navigationKey});

  @override
  Widget build(BuildContext context) {
    List<ProjectData> projectList = [
      ProjectData(
        imgUrl: ImageNames.adfire,
        name: 'Adfire',
        description: StaticText.adfireDescription,
        link: "https://github.com/mc100p/Adfire",
      ),
      ProjectData(
        imgUrl: ImageNames.rescue,
        name: 'Rescue',
        description: StaticText.rescueDescription,
        link: "https://example.com/project2",
      ),
      ProjectData(
        imgUrl: ImageNames.transport,
        name: 'Transport',
        description: StaticText.transportDescription,
        link: "https://example.com/project3",
      ),
      ProjectData(
        imgUrl: ImageNames.fosterHome,
        name: "Foster's Home Office",
        description: StaticText.fosterHomeDescription,
        link: "https://example.com/project3",
      ),
      ProjectData(
        imgUrl: ImageNames.ncu,
        name: "Northern Caribbean University",
        description: StaticText.ncuDescription,
        link: "https://example.com/project3",
      ),
      ProjectData(
        imgUrl: ImageNames.uluMe,
        name: "UluMe",
        description: StaticText.uluMeDescription,
        link: "https://example.com/project3",
      ),
    ];

    return Container(
      key: navigationKey,
      padding: const EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Projects', style: TextStyle(fontSize: 28, color: Colors.white)),
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
