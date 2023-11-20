import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:psyco/ui/view/home.dart';
import 'package:psyco/ui/view/history.dart';
import 'package:psyco/ui/view/settings.dart';

final themeModeProvider = StateProvider<ThemeMode>((ref) => ThemeMode.system);
void main() {
  runApp(const ProviderScope (child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);
    return const CupertinoApp(
      theme: CupertinoThemeData(
        brightness: Brightness.light,
      ),
      home: MyHomePage(),
    );
    // return MaterialApp(
    //   title: 'hoge',
    //   theme: ThemeData.light(),
    //   darkTheme: ThemeData.dark(),
    //   themeMode: themeMode,
    //   home: const MyHomePage(),
    // );
  }
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var themeMode = ref.watch(themeModeProvider.notifier);
    return 
    CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.article),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
        tabBuilder: (BuildContext context, int index){
          return CupertinoTabView(
            builder: (BuildContext context) {
              switch (index) {
                case 0:
                  // return const Home();
                  return Home();
                case 1:
                  // return const Settings();
                  return History();
                default:
                  // return const Home();
                  return Settings();
              }
            },
          );
        },
        );
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text('hoge'),
    //     actions: [
    //       Padding(
    //         padding: const EdgeInsets.all(10.0),
    //         child: PopupMenuButton<ThemeMode>(
    //           icon: const Icon(Icons.settings_brightness,),
    //           onSelected: (ThemeMode selectedThemeMode) => themeMode.state = selectedThemeMode,
    //           itemBuilder: (context) => <PopupMenuEntry<ThemeMode>>[
    //             const PopupMenuItem(
    //               value: ThemeMode.system,
    //               child: Text('システム設定に従う'),
    //             ),
    //             const PopupMenuItem(
    //               value: ThemeMode.light, 
    //               child: Text('ライトモード'),
    //             ),
    //             const PopupMenuItem(
    //               value: ThemeMode.dark,
    //               child: Text('ダークモード'),
    //             ),
    //           ],
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
