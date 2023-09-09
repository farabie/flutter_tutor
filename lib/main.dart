import 'package:flutter/material.dart';
import 'package:flutter_tutor/Textfield_widget_flut.dart';
import 'package:flutter_tutor/animated_container.dart';
import 'package:flutter_tutor/animated_paddingflut.dart';
import 'package:flutter_tutor/anonymous_flutter.dart';
import 'package:flutter_tutor/appbar_gradasi.dart';
import 'package:flutter_tutor/appbarcusheight_flut.dart';
import 'package:flutter_tutor/card_flut.dart';
import 'package:flutter_tutor/clip_pathflut.dart';
import 'package:flutter_tutor/container_flutter.dart';
import 'package:flutter_tutor/customtabbar_flut.dart';
import 'package:flutter_tutor/dragable_flut.dart';
import 'package:flutter_tutor/first_flutter.dart';
import 'package:flutter_tutor/flexible_widget.dart';
import 'package:flutter_tutor/font_features.dart';
import 'package:flutter_tutor/getapimethod_flut.dart';
import 'package:flutter_tutor/getlistapi_flut.dart';
import 'package:flutter_tutor/gradient_opacity.dart';
import 'package:flutter_tutor/hero_cliprect.dart';
import 'package:flutter_tutor/image_flut.dart';
import 'package:flutter_tutor/inkwell_flut.dart';
import 'package:flutter_tutor/list_listview_flutter.dart';
import 'package:flutter_tutor/mediaquery_flut.dart';
import 'package:flutter_tutor/navigation_multi.dart';
import 'package:flutter_tutor/opacity_custom.dart';
import 'package:flutter_tutor/posthttp_flut.dart';
import 'package:flutter_tutor/postioned_floatingaction.dart';
import 'package:flutter_tutor/qrcode_flut.dart';
import 'package:flutter_tutor/readqr_code_flut.dart';
import 'package:flutter_tutor/row_column.dart';
import 'package:flutter_tutor/sound_play.dart';
import 'package:flutter_tutor/spacer_flut.dart';
import 'package:flutter_tutor/stack_flut.dart';
import 'package:flutter_tutor/stateless_statfull_flutter.dart';
import 'package:flutter_tutor/switch_animatedswitcherflut.dart';
import 'package:flutter_tutor/tabbar_flut.dart';
import 'package:flutter_tutor/text_widget.dart';
import 'package:flutter_tutor/textstyle_flut.dart';
import 'package:flutter_tutor/textwidgetdecord_flut.dart';
import 'package:flutter_tutor/transorm_belahketupat.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tutorial Flutter Pemula'),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          menuBelajar(
            '01. Aplikasi Flutter Pertama',
            '02. Text Widget',
            FirstFlutter(),
            TextWidgetFlut(),
            context: context,
          ),
          menuBelajar(
            '03. Row dan Column ',
            '04. Container',
            RowColumnTutor(),
            ContainerLatihan(),
            context: context,
          ),
          menuBelajar(
            '05. Stateles & Stateful Widget ',
            '06. Anonymous Method',
            StaelessFull(),
            AnonymousFlut(),
            context: context,
          ),
          menuBelajar(
            '07. TextStyle',
            '08. List & ListView',
            TextStyleFlut(),
            ListViewFlut(),
            context: context,
          ),
          menuBelajar(
            '09. AnimatedContainer & Gesture Detector',
            '10. Flexible Widget',
            AnimatedContainerFlut(),
            FlexibleFlut(),
            context: context,
          ),
          menuBelajar(
            '11. Stack & Align Widget',
            '12. Image Widget',
            StackFlut(),
            ImageFlut(),
            context: context,
          ),
          menuBelajar(
            '13. Spacer Widget',
            '14. Draggable, DragTarget, SizedBox, Material',
            SpacerFlut(),
            DragableFlut(),
            context: context,
          ),
          menuBelajar(
            '15. Navigasi Multi Page',
            '16. Appbar Gradasi',
            NavigationMultFlut(),
            AppBarGradasiFlut(),
            context: context,
          ),
          menuBelajar(
            '17. Card Widget',
            '18. TextField Widget',
            CardFlut(),
            TextFieldFlut(),
            context: context,
          ),
          menuBelajar(
            '19. TextField(Decoration)',
            '20. MediaQuery',
            TextWidgetDecFlut(),
            MediaQueryFlut(),
            context: context,
          ),
          menuBelajar(
            '21. Ink Well',
            '22. Opacity (Custom Card)',
            InkWellFlut(),
            OpacityCardCustom(),
            context: context,
          ),
          menuBelajar(
            '23. Positoned, FloatingActionButton',
            '24. Hero & ClipRRect Widget',
            PositionedFloatingFlut(),
            HeroClipFlut(),
            context: context,
          ),
          menuBelajar(
            '25. AppBar Custom Height',
            '26. TabBar',
            AppBarCustomHeight(),
            TabBarFlut(),
            context: context,
          ),
          menuBelajar(
            '27. Mengubah Tampilan TabBar',
            '28. QR Code',
            CustomTabBarFlut(),
            QrCodeFlut(),
            context: context,
          ),
          menuBelajar(
            '29. Transform(Button Belah Ketupat)',
            '30. Gradient Opacity(Transparansi Bergradasi)',
            TransformFlut(),
            GradientOpacityFlut(),
            context: context,
          ),
          menuBelajar(
            '31. Musik/Sound',
            '32. Read QR Code',
            SoundPlayFlut(),
            ReadQrCodeFLut(),
            context: context,
          ),
          menuBelajar(
            '33. Font Features',
            '34. ClipPath',
            FontFeaturesFlut(),
            ClipPathFlut(),
            context: context,
          ),
          menuBelajar(
            '35. Post Method(Http Request)',
            '36. Get Method(Http Request)',
            PostHttpFlut(),
            GetHttpFlut(),
            context: context,
          ),
          menuBelajar(
            '37. Kumpulan Data(Http Request)',
            '38. Switch & AnimatedSwitcher',
            GetListApiFlut(),
            SwitchFlut(),
            context: context,
          ),
          menuBelajar(
            '39. Animated Padding',
            '40. Shared Preferences & Double Mark Operator',
            AnimatedPaddingFlut(),
            OpacityCardCustom(),
            context: context,
          ),
        ],
      ),
    );
  }
}

Row menuBelajar(
    String name, String name2, Widget menuBelajar, Widget menuBelajar2,
    {BuildContext context}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(
        color: Colors.blue,
        width: 150,
        height: 150,
        margin: const EdgeInsets.fromLTRB(5, 10, 5, 10),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return menuBelajar;
            }));
          },
          child: Center(
            child: Text(
              name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
      Container(
        color: Colors.blue,
        width: 150,
        height: 150,
        margin: const EdgeInsets.fromLTRB(5, 10, 5, 10),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return menuBelajar2;
            }));
          },
          child: Center(
            child: Text(
              name2,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    ],
  );
}
