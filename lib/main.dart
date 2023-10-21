import 'package:flutter/material.dart';
import 'package:flutter_tutor/ui/page/Textfield_widget_flut.dart';
import 'package:flutter_tutor/ui/page/accesbility_semanticflut.dart';
import 'package:flutter_tutor/ui/page/animated_container.dart';
import 'package:flutter_tutor/ui/page/animated_paddingflut.dart';
import 'package:flutter_tutor/ui/page/anonymous_flutter.dart';
import 'package:flutter_tutor/ui/page/appbar_gradasi.dart';
import 'package:flutter_tutor/ui/page/appbarcusheight_flut.dart';
import 'package:flutter_tutor/ui/page/blcostreamflut.dart';
import 'package:flutter_tutor/ui/page/bloc_library_flut.dart';
import 'package:flutter_tutor/ui/page/card_flut.dart';
import 'package:flutter_tutor/ui/page/clip_pathflut.dart';
import 'package:flutter_tutor/ui/page/container_flutter.dart';
import 'package:flutter_tutor/ui/page/custom_progress.dart';
import 'package:flutter_tutor/ui/page/customproductcard_flut.dart';
import 'package:flutter_tutor/ui/page/customtabbar_flut.dart';
import 'package:flutter_tutor/ui/page/dart_snipet_flut.dart';
import 'package:flutter_tutor/ui/page/division_flut.dart';
import 'package:flutter_tutor/ui/page/doc_flut.dart';
import 'package:flutter_tutor/ui/page/dragable_flut.dart';
import 'package:flutter_tutor/ui/page/dropdown_flut.dart';
import 'package:flutter_tutor/ui/page/equatableflut.dart';
import 'package:flutter_tutor/ui/page/extensionflut.dart';
import 'package:flutter_tutor/ui/page/firebase_authanonymous.dart';
import 'package:flutter_tutor/ui/page/firebase_authemailpass.dart';
import 'package:flutter_tutor/ui/page/firebase_cloudfirestore.dart';
import 'package:flutter_tutor/ui/page/firebase_storageimagepick.dart';
import 'package:flutter_tutor/ui/page/first_flutter.dart';
import 'package:flutter_tutor/ui/page/flexible_widget.dart';
import 'package:flutter_tutor/ui/page/flutterblocflut1.dart';
import 'package:flutter_tutor/ui/page/font_features.dart';
import 'package:flutter_tutor/ui/page/getapimethod_flut.dart';
import 'package:flutter_tutor/ui/page/getlistapi_flut.dart';
import 'package:flutter_tutor/ui/page/google_fontsflut.dart';
import 'package:flutter_tutor/ui/page/gradient_opacity.dart';
import 'package:flutter_tutor/ui/page/hero_cliprect.dart';
import 'package:flutter_tutor/ui/page/hiveflut.dart';
import 'package:flutter_tutor/ui/page/hydrated_blocflut.dart';
import 'package:flutter_tutor/ui/page/image_flut.dart';
import 'package:flutter_tutor/ui/page/infinite_bloc.dart';
import 'package:flutter_tutor/ui/page/inkwell_flut.dart';
import 'package:flutter_tutor/ui/page/list_listview_flutter.dart';
import 'package:flutter_tutor/ui/page/listview_builderflut.dart';
import 'package:flutter_tutor/ui/page/mediaquery_flut.dart';
import 'package:flutter_tutor/ui/page/mobstateflut.dart';
import 'package:flutter_tutor/ui/page/mockitoflut.dart';
import 'package:flutter_tutor/ui/page/multibloc_multipage/multiblo_multipageflut.dart';
import 'package:flutter_tutor/ui/page/mvvm_flut.dart';
import 'package:flutter_tutor/ui/page/navigation_multi.dart';
import 'package:flutter_tutor/ui/page/opacity_custom.dart';
import 'package:flutter_tutor/ui/page/posthttp_flut.dart';
import 'package:flutter_tutor/ui/page/postioned_floatingaction.dart';
import 'package:flutter_tutor/ui/page/providersmultiflut.dart';
import 'package:flutter_tutor/ui/page/providsingleflut.dart';
import 'package:flutter_tutor/ui/page/qrcode_flut.dart';
import 'package:flutter_tutor/ui/page/readqr_code_flut.dart';
import 'package:flutter_tutor/ui/page/rive_flut.dart';
import 'package:flutter_tutor/ui/page/row_column.dart';
import 'package:flutter_tutor/ui/page/select_toogle_flut.dart';
import 'package:flutter_tutor/ui/page/sharedprefrence_dmflut.dart';
import 'package:flutter_tutor/ui/page/shimmer_flut.dart';
import 'package:flutter_tutor/ui/page/simulasi_httpflut.dart';
import 'package:flutter_tutor/ui/page/sound_play.dart';
import 'package:flutter_tutor/ui/page/spacer_flut.dart';
import 'package:flutter_tutor/ui/page/stack_flut.dart';
import 'package:flutter_tutor/ui/page/stateless_statfull_flutter.dart';
import 'package:flutter_tutor/ui/page/switch_animatedswitcherflut.dart';
import 'package:flutter_tutor/ui/page/tabbar_flut.dart';
import 'package:flutter_tutor/ui/page/text_widget.dart';
import 'package:flutter_tutor/ui/page/textstyle_flut.dart';
import 'package:flutter_tutor/ui/page/textwidgetdecord_flut.dart';
import 'package:flutter_tutor/ui/page/timerflut.dart';
import 'package:flutter_tutor/ui/page/transorm_belahketupat.dart';
import 'package:flutter_tutor/ui/page/unit_testingflut.dart';
import 'package:flutter_tutor/ui/page/widget_slidersflut.dart';
import 'package:flutter_tutor/ui/page/widget_sliderstransitionflut.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

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
            const FirstFlutter(),
            const TextWidgetFlut(),
            context: context,
          ),
          menuBelajar(
            '03. Row dan Column ',
            '04. Container',
            const RowColumnTutor(),
            const ContainerLatihan(),
            context: context,
          ),
          menuBelajar(
            '05. Stateles & Stateful Widget ',
            '06. Anonymous Method',
            const StaelessFull(),
            const AnonymousFlut(),
            context: context,
          ),
          menuBelajar(
            '07. TextStyle',
            '08. List & ListView',
            const TextStyleFlut(),
            const ListViewFlut(),
            context: context,
          ),
          menuBelajar(
            '09. AnimatedContainer & Gesture Detector',
            '10. Flexible Widget',
            const AnimatedContainerFlut(),
            const FlexibleFlut(),
            context: context,
          ),
          menuBelajar(
            '11. Stack & Align Widget',
            '12. Image Widget',
            const StackFlut(),
            const ImageFlut(),
            context: context,
          ),
          menuBelajar(
            '13. Spacer Widget',
            '14. Draggable, DragTarget, SizedBox, Material',
            const SpacerFlut(),
            const DragableFlut(),
            context: context,
          ),
          menuBelajar(
            '15. Navigasi Multi Page',
            '16. Appbar Gradasi',
            const NavigationMultFlut(),
            const AppBarGradasiFlut(),
            context: context,
          ),
          menuBelajar(
            '17. Card Widget',
            '18. TextField Widget',
            const CardFlut(),
            const TextFieldFlut(),
            context: context,
          ),
          menuBelajar(
            '19. TextField(Decoration)',
            '20. MediaQuery',
            const TextWidgetDecFlut(),
            const MediaQueryFlut(),
            context: context,
          ),
          menuBelajar(
            '21. Ink Well',
            '22. Opacity (Custom Card)',
            const InkWellFlut(),
            const OpacityCardCustom(),
            context: context,
          ),
          menuBelajar(
            '23. Positoned, FloatingActionButton',
            '24. Hero & ClipRRect Widget',
            const PositionedFloatingFlut(),
            const HeroClipFlut(),
            context: context,
          ),
          menuBelajar(
            '25. AppBar Custom Height',
            '26. TabBar',
            const AppBarCustomHeight(),
            const TabBarFlut(),
            context: context,
          ),
          menuBelajar(
            '27. Mengubah Tampilan TabBar',
            '28. QR Code',
            const CustomTabBarFlut(),
            const QrCodeFlut(),
            context: context,
          ),
          menuBelajar(
            '29. Transform(Button Belah Ketupat)',
            '30. Gradient Opacity(Transparansi Bergradasi)',
            const TransformFlut(),
            const GradientOpacityFlut(),
            context: context,
          ),
          menuBelajar(
            '31. Musik/Sound',
            '32. Read QR Code',
            const SoundPlayFlut(),
            const ReadQrCodeFLut(),
            context: context,
          ),
          menuBelajar(
            '33. Font Features',
            '34. ClipPath',
            const FontFeaturesFlut(),
            const ClipPathFlut(),
            context: context,
          ),
          menuBelajar(
            '35. Post Method(Http Request)',
            '36. Get Method(Http Request)',
            const PostHttpFlut(),
            const GetHttpFlut(),
            context: context,
          ),
          menuBelajar(
            '37. Kumpulan Data(Http Request)',
            '38. Switch & AnimatedSwitcher',
            const GetListApiFlut(),
            const SwitchFlut(),
            context: context,
          ),
          menuBelajar(
            '39. Animated Padding',
            '40. Shared Preferences & Double Mark Operator',
            const AnimatedPaddingFlut(),
            const SharedPreferencesDmFLut(),
            context: context,
          ),
          menuBelajar(
            '41. Provider State Management',
            '42. Provider State Management (Multi Provider)',
            const ProviderSingleFlut(),
            const ProviderMultiFLut(),
            context: context,
          ),
          menuBelajar(
            '43. Bloc State Management(Stream Controller & Stream Builder)',
            '44. Bloc State Management(Flutter_Bloc)',
            const BlocStreamFlut(),
            const BlocLibraryFLut(),
            context: context,
          ),
          menuBelajar(
            '45. Doc Comment',
            '46. Timer',
            DocFlut(),
            const TimerFlut(),
            context: context,
          ),
          menuBelajar(
            '47. Custom Progress Bar(Timer + Provider)',
            '48. Product Card(BoxShadow, RoundedRectangleBorder)',
            const CustomProgress(),
            const CustomProductCard(),
            context: context,
          ),
          menuBelajar(
            '49. Selectable Text, ToggleButtons, CollorFiltered(Flutter 1.9)',
            '50. Hydrated Bloc State Management',
            const SelectToogleColorFiltered(),
            const HydratedBlocFlut(),
            context: context,
          ),
          menuBelajar(
            '51. ListView Builder + BLoc',
            '52. MVVM Architecture',
            const ListViewBuilderFlut(),
            const MvvmFlut(),
            context: context,
          ),
          menuBelajar(
            '53. Multi Bloc In MultiPage App',
            '54. How to Make Dart Snippet',
            const MultiBlocMultiPageFlut(),
            const DartSnippetFlut(),
            context: context,
          ),
          menuBelajar(
            '55. Drop Down Button',
            '56. Hive-Database in Pure Dart',
            const DropDownFlut(),
            const HiveFlut(),
            context: context,
          ),
          menuBelajar(
            '57. Infinite (Auto Loading) List With Bloc',
            '58. Flutter Bloc Ver 1.0 & Bloc Visiual',
            const InifiniteBloc(),
            const FlutterBlocV1(),
            context: context,
          ),
          menuBelajar(
            '59. Extension',
            '60. MOBX State Management',
            const ExtensionFlut(),
            const MobStatexFlut(),
            context: context,
          ),
          menuBelajar(
            '61. Division(Styling Widget Inspired by CSS)',
            '62. Widget Slider Using Page View',
            const WidgetSlidersFlut(),
            const WidgetSlidersFlut(),
            context: context,
          ),
          menuBelajar(
            '63. Widget Slider With Transition',
            '64. Rive + Flutter(Flutter Intereact 19)',
            const WidgetSlidersTransitionFlut(),
            const RiveFlut(),
            context: context,
          ),
          menuBelajar(
            '65. Accessibility-Semantic Widget',
            '66. Unit Testing',
            const AccesbilitySemantic(),
            const UnitTestingFlut(),
            context: context,
          ),
          menuBelajar(
            '67. Membuat Class Tiruan dengan MockKito',
            '68. Equatable',
            const MockKitoFlut(),
            const EquatableFlut(),
            context: context,
          ),
          menuBelajar(
            '69. Simulasi HTTP Request dengan Mockito',
            '70. Bloc Test Bagian 1',
            const SimulasiHtttpFlut(),
            const MobStatexFlut(),
            context: context,
          ),
          menuBelajar(
            '71. Bloc Test Bagian 2',
            '72. Google Fonts',
            const SimulasiHtttpFlut(),
            const GoogleFontsFlut(),
            context: context,
          ),
          menuBelajar(
            '73. Firebase Authentication(Anonymous Account)',
            '74. Firebase Authentication (Email & Password)',
            const FirebaseAnonymous(),
            const FirebaseAuthEmail(),
            context: context,
          ),
          menuBelajar(
            '75. Cloud Firestore',
            '76. Firebase Storage & Image Picker',
            const FirebaseCloudFirestore(),
            const FirebaseStorageImagePicker(),
            context: context,
          ),
          menuBelajar(
            '77. Shimmer Effect',
            '78. One Signal Notification',
            const ShimmerFlut(),
            const MobStatexFlut(),
            context: context,
          ),
          menuBelajar(
            '79. Animasi Dasar',
            '80. Animated Widget & Animated Builder',
            const SimulasiHtttpFlut(),
            const MobStatexFlut(),
            context: context,
          ),
        ],
      ),
    );
  }
}

Row menuBelajar(
    String name, String name2, Widget menuBelajar, Widget menuBelajar2,
    {BuildContext? context}) {
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
            Navigator.push(context!, MaterialPageRoute(builder: (context) {
              return menuBelajar;
            }));
          },
          child: Center(
            child: Text(
              name,
              style: const TextStyle(
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
            Navigator.push(context!, MaterialPageRoute(builder: (context) {
              return menuBelajar2;
            }));
          },
          child: Center(
            child: Text(
              name2,
              style: const TextStyle(
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
