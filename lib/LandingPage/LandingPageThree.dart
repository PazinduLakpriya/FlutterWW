import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wonderful_wedding/LandingPageThreeDetails/Constants.dart';
import 'package:wonderful_wedding/LandingPageThreeDetails/Vendors.dart';

class LandingPageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600.0,
      // color: Color(0xFFfedbd0),
      decoration: BoxDecoration(
          color: Color(0xFFfedbd0).withOpacity(1),
          // borderRadius: BorderRadius.circular(16.0),
          border: Border.all(width: 11.5, color: Colors.white)),
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: StaggeredGridView.countBuilder(
                  itemCount: places.length,
                  crossAxisSpacing: 6,
                  mainAxisSpacing: 6,
                  crossAxisCount: 6,
                  itemBuilder: (context, index) {
                    return PlaceContainer(
                      index: index,
                    );
                  },
                  staggeredTileBuilder: (index) {
                    return StaggeredTile.count(2, index.isEven ? 3 : 2);
                  }),
            )
          ]),
    );
  }
}

class PlaceContainer extends StatelessWidget {
  final int index;

  PlaceContainer({this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: kLightGrey,
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: NetworkImage(
              places[index].imgPath,
            ),
            fit: BoxFit.cover,
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            places[index].name,
            style: kPlaceStyle,
          ),
          Spacer(),
        ],
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final Function onPressed;
  final bool isSelected;

  CategoryButton({this.icon, this.color, this.onPressed, this.isSelected});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 0,
      highlightElevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      fillColor: isSelected ? color.withAlpha(100) : kLightGrey,
      constraints: BoxConstraints.tightFor(
        width: 70,
        height: 75,
      ),
      child: Icon(
        icon,
        size: 30,
        color: color,
      ),
    );
  }
}
