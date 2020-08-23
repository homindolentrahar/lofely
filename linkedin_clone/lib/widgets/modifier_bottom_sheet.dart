import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkedin_clone/util/color_palette.dart';

class ModifierBottomSheet extends StatefulWidget {
  final List<Map<String, dynamic>> modifiers;
  final Map<String, dynamic> selectedModifier;
  final ValueChanged valueChanged;

  ModifierBottomSheet(
      {@required this.modifiers,
      @required this.selectedModifier,
      @required this.valueChanged,});

  @override
  _ModifierBottomSheetState createState() => _ModifierBottomSheetState();
}

class _ModifierBottomSheetState extends State<ModifierBottomSheet> {
  Map<String, dynamic> _selectedModifier;

  @override
  void initState() {
    _selectedModifier = widget.selectedModifier;

    super.initState();
  }

  Widget _buildBottomSheetIndicator() {
    return Center(
      child: Container(
        width: 120,
        height: 4,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }

  Widget _buildModifierTile(
      int index, IconData icon, String name, String desc) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Icon(
          icon,
          color: ColorPalette.grey,
        ),
        SizedBox(
          width: 8,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                name,
                style: GoogleFonts.sourceSansPro(
                  color: ColorPalette.dark,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                desc,
                style: GoogleFonts.sourceSansPro(
                  color: ColorPalette.grey,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        Radio(
          value: widget.modifiers[index],
          groupValue: _selectedModifier,
          materialTapTargetSize: MaterialTapTargetSize.padded,
          activeColor: Theme.of(context).primaryColor,
          onChanged: (value) {
            setState(() {
              _selectedModifier = value;
              widget.valueChanged(value);
            });
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildBottomSheetIndicator(),
          SizedBox(
            height: 16,
          ),
          Text(
            "Who can see this post ?",
            style: GoogleFonts.sourceSansPro(
              color: ColorPalette.dark,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            "Your post will be visible on feed, on your profile and in search results",
            style: GoogleFonts.sourceSansPro(
              color: ColorPalette.grey,
              fontSize: 12,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Column(
            children: List.generate(
              widget.modifiers.length,
              (index) => _buildModifierTile(
                index,
                widget.modifiers[index]['icon'],
                widget.modifiers[index]['name'],
                widget.modifiers[index]['desc'],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(
                EvaIcons.settings2Outline,
                color: ColorPalette.grey,
              ),
              SizedBox(
                width: 8,
              ),
              Expanded(
                child: Text(
                  "Advanced Settings",
                  style: GoogleFonts.sourceSansPro(
                    color: ColorPalette.dark,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  EvaIcons.chevronDown,
                  color: ColorPalette.grey,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
