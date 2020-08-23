import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkedin_clone/util/color_palette.dart';
import 'package:linkedin_clone/widgets/custom_icon_button.dart';
import 'package:linkedin_clone/widgets/modifier_bottom_sheet.dart';

class PostPage extends StatefulWidget {
  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  Map<String, dynamic> _selectedModifier;
  List<String> _postText;
  final TextEditingController _postField = TextEditingController();

  final List<Map<String, dynamic>> _postModifiers = [
    {
      'icon': EvaIcons.globe2Outline,
      'name': "Anyone",
      'desc': "Anyone on or off LinkedIn",
    },
    {
      'icon': EvaIcons.personOutline,
      'name': "Connections",
      'desc': "Connections on LinkedIn",
    },
  ];

  final List<Map<String, dynamic>> _postMedias = [
    {
      'icon': EvaIcons.cameraOutline,
      'title': "Take a picture",
    },
    {
      'icon': EvaIcons.imageOutline,
      'title': "Add a photo",
    },
    {
      'icon': EvaIcons.videoOutline,
      'title': "Take a video",
    },
    {
      'icon': EvaIcons.awardOutline,
      'title': "Celebrate an occasion",
    },
    {
      'icon': EvaIcons.file,
      'title': "Add a document",
    },
    {
      'icon': EvaIcons.pieChartOutline,
      'title': "Create a poll",
    },
  ];

  @override
  void initState() {
    _selectedModifier = _postModifiers.elementAt(0);
    _postText = [""];

    super.initState();
  }

  Widget _buildUserInformation() {
    return Container(
      width: double.infinity,
      height: 90,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage("assets/images/profile.jpg"),
          ),
          SizedBox(
            width: 8,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Widiatmoko Rahardiyan",
                style: GoogleFonts.sourceSansPro(
                  color: ColorPalette.dark,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              _buildModifierButton(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildModifierButton() {
    return Material(
      color: Colors.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: () => showModalBottomSheet(
          context: context,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
          backgroundColor: Colors.white,
          builder: (ctx) => _buildModifierBottomSheet(),
        ),
        child: Container(
          width: 125,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: ColorPalette.grey, width: 0.5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Icon(
                _selectedModifier['icon'],
                color: ColorPalette.grey,
                size: 14,
              ),
              Text(
                _selectedModifier['name'],
                style: GoogleFonts.sourceSansPro(
                  color: ColorPalette.grey,
                  fontSize: 14,
                ),
              ),
              Icon(
                EvaIcons.arrowDown,
                color: ColorPalette.grey,
                size: 14,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildModifierBottomSheet() {
    return ModifierBottomSheet(
      modifiers: _postModifiers,
      selectedModifier: _selectedModifier,
      valueChanged: (value) {
        setState(() {
          _selectedModifier = value;
        });
      },
    );
  }

  Widget _buildPostMedias() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Material(
                color: Colors.white,
                child: InkWell(
                  borderRadius: BorderRadius.circular(16),
                  splashColor: Theme.of(context).primaryColor.withOpacity(0.2),
                  onTap: () {
                    _postText.add("#");
                    _postField.text = _postText.join(" ");
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      "# Add hashtag",
                      style: GoogleFonts.sourceSansPro(
                        color: Theme.of(context).primaryColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              _buildTopHashtags([
                "#android",
                "#python",
                "#uiux",
                "#java",
                "#flutter",
                "#front-end",
              ]),
            ],
          ),
          _buildPostMediasButton(),
        ],
      ),
    );
  }

  Widget _buildTopHashtags(List<String> hashtags) {
    return Flexible(
      child: Container(
        height: 35,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: hashtags.length,
          itemBuilder: (ctx, index) => _buildTopHashtagsItem(hashtags[index]),
        ),
      ),
    );
  }

  Widget _buildTopHashtagsItem(String hashtag) {
    return Material(
      color: Colors.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        splashColor: Theme.of(context).primaryColor.withOpacity(0.2),
        onTap: () {
          _postText.add(hashtag);
          _postField.text = _postText.join(" ");
        },
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            hashtag,
            style: GoogleFonts.sourceSansPro(
              color: Theme.of(context).primaryColor,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPostMediasButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Flexible(
          child: Container(
            height: 40,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: _postMedias.length,
              itemBuilder: (ctx,index) => CustomIconButton(
                width: 32,
                height: 40,
                icon: _postMedias[index]['icon'],
                iconColor: ColorPalette.grey,
                iconSize: 18,
                color: Colors.transparent,
                onPressed: () {},
              ),
            ),
          ),
        ),
        CustomIconButton(
          width: 32,
          height: 40,
          icon: Icons.alternate_email,
          iconColor: ColorPalette.grey,
          iconSize: 18,
          color: Colors.transparent,
          onPressed: () {},
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            EvaIcons.close,
            color: ColorPalette.dark,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          "Create a post",
          style: GoogleFonts.sourceSansPro(
            color: ColorPalette.dark,
            fontSize: 20,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          _buildUserInformation(),
          Flexible(
            child: TextField(
              maxLines: null,
              minLines: null,
              expands: true,
              controller: _postField,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Have any idea ?",
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          _buildPostMedias(),
        ],
      ),
    );
  }
}
