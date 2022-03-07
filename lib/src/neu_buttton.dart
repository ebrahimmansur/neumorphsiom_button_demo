import 'package:flutter/material.dart';

class NeuButton extends StatefulWidget {
  const NeuButton({Key? key}) : super(key: key);

  @override
  State<NeuButton> createState() => _NeuButtonState();
}

class _NeuButtonState extends State<NeuButton> {
  bool _isPressed = false;

  void _onPresssed() {
    setState(() {
      _isPressed = !_isPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onPresssed,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        width: 160,
        height: 160,
        child: Icon(
          Icons.filter_b_and_w,
          color: _isPressed ? Colors.green[200] : Colors.green[400],
          size: 50,
        ),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(12),
          boxShadow: _isPressed
              ? []
              : [
                  BoxShadow(
                    color: Colors.grey.shade500,
                    offset: Offset(6, 6),
                    blurRadius: 15,
                    spreadRadius: 1,
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-6, -6),
                    blurRadius: 15,
                    spreadRadius: 1,
                  )
                ],
        ),
      ),
    );
  }
}
