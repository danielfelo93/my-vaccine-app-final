import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final String? label;
  final String? hint;
  final String? errorMessage;
  final bool obscureText;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  final String? Function(String?)? validator;
  final String? description;

  const CustomTextFormField({
    Key? key,
    this.label,
    this.hint,
    this.errorMessage,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.onChanged,
    this.onFieldSubmitted,
    this.validator,
    this.description,
  }) : super(key: key);

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final border = OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40),
    );

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15),
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            onChanged: widget.onChanged,
            validator: widget.validator,
            onFieldSubmitted: widget.onFieldSubmitted,
            obscureText: _obscureText,
            keyboardType: widget.keyboardType,
            style: const TextStyle(fontSize: 20, color: Colors.black54),
            decoration: InputDecoration(
              floatingLabelStyle: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              enabledBorder: border,
              focusedBorder: border,
              errorBorder: border.copyWith(
                borderSide: const BorderSide(color: Colors.transparent),
              ),
              focusedErrorBorder: border.copyWith(
                borderSide: const BorderSide(color: Colors.transparent),
              ),
              isDense: true,
              labelText: widget.label,
              hintText: widget.hint,
              errorText: widget.errorMessage,
              suffixIcon: widget.obscureText
                  ? IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    )
                  : null,
              fillColor: Colors.white,
              filled: true,
              contentPadding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              border: border,
            ),
          ),
          // if (widget.description != null)
          //   Padding(
          //     padding: const EdgeInsets.only(top: 8.0, left: 20.0),
          //     child: Text(
          //       widget.description!,
          //       style: TextStyle(color: colors.primary, fontSize: 12),
          //     ),
          //   ),
          // if (widget.errorMessage != null)
          //   Padding(
          //     padding: const EdgeInsets.only(top: 8.0, left: 20.0),
          //     child: Text(
          //       widget.errorMessage!,
          //       style: const TextStyle(color: Colors.red, fontSize: 12),
          //     ),
          //   ),
        ],
      ),
    );
  }
}
