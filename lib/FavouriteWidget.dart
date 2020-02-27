import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavouriteWidget extends StatefulWidget {
  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavouriteWidget> {
  bool _isFavourite = false;
  int _favouriteCount = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (_isFavourite ? Icon(Icons.star) : Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          ),
        ),
        SizedBox(
          width: 18,
          child: Container(
            child: Text('$_favouriteCount'),
          ),
        ),
      ],
    );
  }

  void _toggleFavorite() {

    setState(() {
      if (_isFavourite) {
        _favouriteCount -=1;
        _isFavourite = false;
      }else {
        _favouriteCount +=1;
        _isFavourite = true;
      }
    });

  }
}
