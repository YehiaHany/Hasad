import 'package:flutter/material.dart';

class CustomTextArea extends StatefulWidget {
  final Function(String)? onChanged;

  const CustomTextArea({Key? key, this.onChanged}) : super(key: key);

  @override
  _CustomTextAreaState createState() => _CustomTextAreaState();
}

class _CustomTextAreaState extends State<CustomTextArea> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      maxLines: null, // Allow multiline input
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Enter text',
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
