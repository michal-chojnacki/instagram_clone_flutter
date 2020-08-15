import 'package:flutter/material.dart';

class AnimatedFavIcon extends StatefulWidget {
  final bool Function() state;

  AnimatedFavIcon({@required this.state});

  @override
  _AnimatedFavIconState createState() => _AnimatedFavIconState();
}

class _AnimatedFavIconState extends State<AnimatedFavIcon>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _scale;
  bool _state;
  IconData _iconData;

  @override
  void initState() {
    _controller = AnimationController(
        duration: const Duration(milliseconds: 150), vsync: this);
    _scale = Tween<double>(
      begin: 1.0,
      end: 0.2,
    ).animate(
        CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var newState = widget.state();
    if (_state == null) {
      _iconData = _getIconData(newState);
    }
    if (_state != null && newState != _state) {
      _playAnimation(newState);
    }
    _state = newState;
    return ScaleTransition(
        scale: _scale,
        child: Icon(
          _iconData,
          color: Colors.red[800],
        ));
  }

  Future<void> _playAnimation(bool newState) async {
    await _controller.forward().orCancel;
    setState(() {
      _iconData = _getIconData(newState);
    });
    await _controller.reverse().orCancel;
  }

  IconData _getIconData(bool state) =>
      state ? Icons.favorite : Icons.favorite_border;
}
