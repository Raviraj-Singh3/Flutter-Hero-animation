import 'package:flutter/material.dart';

class PhotoHero extends StatefulWidget {
  const PhotoHero({
    super.key,
    required this.photo,
    this.onTap,
    required this.width,
  });

  final String photo;
  final VoidCallback? onTap;
  final double width;

  @override
  State<PhotoHero> createState() => _PhotoHeroState();
}

class _PhotoHeroState extends State<PhotoHero>
    with SingleTickerProviderStateMixin {
  late AnimationController _animation;
  void initState() {
    _animation = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    _animation.forward();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // _animation.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      child: AnimatedBuilder(
        animation: _animation,
        child: Hero(
          tag: widget.photo,
          placeholderBuilder: (context, heroSize, child) {
            return Opacity(opacity: 0.2, child: child);
          },
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: widget.onTap,
              child: Image.asset(
                widget.photo,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        builder: (context, child) {
          return SlideTransition(
            position:
                Tween(begin: const Offset(0, 0.9), end: const Offset(0, 0))
                    .animate(CurvedAnimation(
                        parent: _animation, curve: Curves.easeOutBack)),
            child: child,
          );
        },
      ),
    );
  }
}
