import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:toonflix/widget/button.dart';
import 'package:toonflix/widget/currency_card.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  // int counter = 0;

  List<int> numbers = [];

  void onClicked() {
    setState(() {
      // counter = counter + 1;
      numbers.add(numbers.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: const Color(0xFFF4EDDB),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Click Count',
              style: TextStyle(fontSize: 30),
            ),
            for (var n in numbers) Text('$n'),
            IconButton(
                iconSize: 40,
                onPressed: onClicked,
                icon: const Icon(Icons.add_box_rounded))
          ],
        ),
      ),
    ));
  }
}

// setting.json에 추가
// "editor.codeActionsOnSave": {
//     "source.fixAll": "explicit"
//   },
//   "dart.previewFlutterUiGuides": true,


// ex)
// MaterialApp(
//       home: Scaffold(
//         backgroundColor: const Color(0xFF181818),
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(
//               horizontal: 20,
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const SizedBox(
//                   height: 30,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       children: [
//                         const Text(
//                           'Hey, Selena',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 28,
//                             fontWeight: FontWeight.w800,
//                           ),
//                         ),
//                         Text(
//                           'Welcome back',
//                           style: TextStyle(
//                             color: Colors.white.withOpacity(0.8),
//                             fontSize: 18,
//                           ),
//                         )
//                       ],
//                     )
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 50,
//                 ),
//                 Text(
//                   'Total balance',
//                   style: TextStyle(
//                     fontSize: 20,
//                     color: Colors.white.withOpacity(0.8),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 0,
//                 ),
//                 Text(
//                   '\$5 194 482',
//                   style: TextStyle(
//                     fontSize: 42,
//                     fontWeight: FontWeight.w600,
//                     color: Colors.white.withOpacity(0.8),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 15,
//                 ),
//                 const Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Button(
//                         text: 'Transfer',
//                         bgColor: Color(0xFFF1B33B),
//                         textColor: Colors.black),
//                     Button(
//                         text: 'Request',
//                         bgColor: Color(0xFF1F2123),
//                         textColor: Colors.white),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 40,
//                 ),
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     const Text(
//                       'Wallets',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 36,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                     Text(
//                       'View All',
//                       style: TextStyle(
//                         color: Colors.white.withOpacity(0.8),
//                         fontSize: 18,
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 const CurrencyCard(
//                   name: 'Eruo',
//                   code: 'Eur',
//                   amout: '6 428',
//                   icon: Icons.euro_rounded,
//                   isInverted: false,
//                   order: 1,
//                 ),
//                 Transform.translate(
//                   offset: const Offset(0, -20),
//                   child: const CurrencyCard(
//                     name: 'Bitcoin',
//                     code: 'BTC',
//                     amout: '9 785',
//                     icon: Icons.currency_bitcoin,
//                     isInverted: true,
//                     order: 2,
//                   ),
//                 ),
//                 Transform.translate(
//                   offset: const Offset(0, -40),
//                   child: const CurrencyCard(
//                     name: 'Dollar',
//                     code: 'USD',
//                     amout: '428',
//                     icon: Icons.attach_money_outlined,
//                     isInverted: false,
//                     order: 3,
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );