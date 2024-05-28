import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomDatePickerFormField extends StatefulWidget {
  final String? label;
  final String? hint;
  final String? errorMessage;
  final Function(DateTime)? onDateChanged;
  final DateTime? initialValue;

  const CustomDatePickerFormField({
    super.key,
    this.label,
    this.hint,
    this.errorMessage,
    this.onDateChanged,
    this.initialValue,
  });

  @override
  _CustomDatePickerFormFieldState createState() => _CustomDatePickerFormFieldState();
}

class _CustomDatePickerFormFieldState extends State<CustomDatePickerFormField> {
  late TextEditingController _controller;
  DateTime? _selectedDate;

  @override
  void initState() {
    super.initState();
    _selectedDate = widget.initialValue;
    _controller = TextEditingController(
      text: _selectedDate != null ? DateFormat.yMd().format(_selectedDate!) : '',
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _controller.text = DateFormat.yMd().format(picked);
        if (widget.onDateChanged != null) {
          widget.onDateChanged!(picked);
        }
      });
    }
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
            controller: _controller,
            readOnly: true,
            onTap: () => _selectDate(context),
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
              fillColor: Colors.white,
              filled: true,
              contentPadding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              border: border,
            ),
          ),
          if (widget.errorMessage != null)
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 20.0),
              child: Text(
                widget.errorMessage!,
                style: const TextStyle(color: Colors.red, fontSize: 12),
              ),
            ),
        ],
      ),
    );
  }
}
