import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  final String message;
  final String date;
  final bool me;

  Message(
      {Key? key, required this.me, required this.message, required this.date})
      : super(key: key);

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  double _bottom = 0;

  double _opacity = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          widget.me ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              if (_bottom == 0) {
                _bottom = -25;
                _opacity = 1;
              } else {
                _bottom = 0;
                _opacity = 0;
              }
            });
          },
          child: AnimatedContainer(
            margin: EdgeInsets.only(bottom: _bottom == 0 ? 5 : -_bottom),
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
                color: widget.me ? Colors.green : Colors.white30,
                borderRadius: BorderRadius.circular(8)),
            duration: const Duration(milliseconds: 500),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(widget.message),
                  ],
                ),
                AnimatedPositioned(
                  bottom: _bottom,
                  right: 0,
                  duration: const Duration(milliseconds: 500),
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 500),
                    opacity: _opacity,
                    child: Row(
                      children: [
                        Text(
                          widget.date,
                          textScaleFactor: 0.8,
                        ),
                        const SizedBox(width: 4),
                        const Icon(Icons.check_circle_rounded, size: 14)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
