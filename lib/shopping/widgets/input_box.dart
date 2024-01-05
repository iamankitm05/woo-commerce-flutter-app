import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InputBox extends StatefulWidget {
  final String? hintText;
  final Widget? prefixIcon;
  final TextEditingController? controller;

  const InputBox({
    super.key,
    this.hintText,
    this.prefixIcon,
    this.controller,
  });

  @override
  State<InputBox> createState() => _InputBoxState();
}

class _InputBoxState extends State<InputBox> {
  TextEditingController _controller = TextEditingController();
  bool hideCross = true;

  @override
  void initState() {
    if (widget.controller != null) {
      _controller = widget.controller!;
    }
    _controller.addListener(() {
      hideCross = _controller.text.isEmpty ? true : false;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
        fillColor: Colors.grey[100],
        filled: true,
        hintText: widget.hintText,
        hintStyle: const TextStyle(
          color: Colors.grey,
        ),
        prefixIcon: widget.prefixIcon,
        suffixIcon: !hideCross
            ? InkWell(
                onTap: () => _controller.clear(),
                child: SvgPicture.asset('assets/icons/clear.svg'),
              )
            : null,
        prefixIconConstraints: BoxConstraints.tight(const Size(36, 20)),
        suffixIconConstraints: BoxConstraints.tight(const Size(36, 20)),
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        border: const OutlineInputBorder(),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xffdee2e7),
          ),
        ),
      ),
      style: const TextStyle(
        color: Color(0xff1c1c1c),
      ),
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
    );
  }
}
