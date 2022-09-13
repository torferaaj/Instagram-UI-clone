import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram/explorerPage/categoryBar.dart';
import 'package:instagram/explorerPage/exploreTile.dart';
import 'persistentHeader.dart';
import 'customExplorerAppBar.dart';

class Explorer extends StatelessWidget {
  const Explorer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: CustomScrollView(
          slivers: [
            CustomExploreAppBar(),
            SliverPersistentHeader(
                delegate: PersistentHeader(
                  child: CategoryBar(
                    categories: [
                      "Original names",
                      "wildlife",
                      "programming",
                      "laugh",
                      "entertainment",
                    ],
                  ),
                ),
            ),
            SliverStaggeredGrid.countBuilder(
                mainAxisSpacing: 1,
                crossAxisSpacing: 1,
                crossAxisCount: 3,
                staggeredTileBuilder: (int index) {
                  int modedIndex = index % 20;
                  int eXcellCount = modedIndex == 11 ? 2 : 1;

                  double mXcellCount = 1;
                  if(modedIndex == 2 || modedIndex == 11) {
                    mXcellCount = 2;
                  }
                  return StaggeredTile.count(eXcellCount, mXcellCount);
                },
                itemBuilder: (BuildContext context, int index) {
                  return ExploreTile();
                },
                itemCount: 40)
          ],
        ),
      ),
    );

  }
}



