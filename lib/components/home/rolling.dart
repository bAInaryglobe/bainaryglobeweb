// import 'dart:async';
// import 'package:jaspr/jaspr.dart';

// class RollingImage extends StatefulComponent {
//   final String imageUrl;

//   const RollingImage({required this.imageUrl, super.key});

//   @override
//   State<StatefulComponent> createState() => _RollingImageState();
// }

// late final String imageUrl;

// class _RollingImageState extends State<RollingImage> {
//   double _angle = 0.0;
//   Timer? _timer;

//   @override
//   void initState() {
//     super.initState();
//     _startRolling();
//   }

//   void _startRolling() {
//     _timer = Timer.periodic(Duration(milliseconds: 100), (timer) {
//       setState(() {
//         _angle -= 5; // Rotate 5 degrees anticlockwise every 100ms
//       });
//     });
//   }

//   @override
//   void dispose() {
//     _timer?.cancel();
//     super.dispose();
//   }

//   @override
//   Iterable<Component> build(BuildContext context) sync* {
//     yield div(classes: 'flex justify-center items-center h-screen', [
//       div(classes: 'transform transition-transform duration-100', [
//         img(
//           attributes: {
//             // 'src': this.imageUrl, // Use the imageUrl parameter
//             'alt': 'Rolling Image',
//             'style': 'transform: rotate(${_angle}deg);',
//           },
//           classes: 'w-32 h-32', src: imageUrl,
//         ),
//       ]),
//     ]);
//   }
// }














// import 'dart:async';
// import 'package:jaspr/jaspr.dart';

// class RollingImage extends StatefulComponent {
//   final String imageUrl;

//   const RollingImage({required this.imageUrl, super.key});

//   @override
//   State<StatefulComponent> createState() => _RollingImageState();
// }

// class _RollingImageState extends State<RollingImage> {
//   double _angle = 0.0;
//   Timer? _timer;

//   @override
//   void initState() {
//     super.initState();
//     _startRolling();
//   }

//   void _startRolling() {
//     _timer = Timer.periodic(Duration(milliseconds: 100), (timer) {
//       setState(() {
//         _angle -= 5; // Rotate 5 degrees anticlockwise every 100ms
//       });
//     });
//   }

//   @override
//   void dispose() {
//     _timer?.cancel();
//     super.dispose();
//   }

//   @override
//   Iterable<Component> build(BuildContext context) sync* {
//     yield div(classes: 'flex justify-center items-center h-screen', [
//       div(classes: 'transform transition-transform duration-100', [
//         img(
//           src: this.imageUrl, // Use the imageUrl parameter
//           alt: 'Rolling Image',
//           classes: 'w-32 h-32',
//           attributes: {
//             'style': 'transform: rotate(${_angle}deg);',
//           },
//         ),
//       ]),
//     ]);
//   }
// }














import 'dart:async';
import 'package:jaspr/jaspr.dart';

class RollingImage extends StatefulComponent {
  final String imageUrl;

  const RollingImage({required this.imageUrl, super.key});

  @override
  State<StatefulComponent> createState() => _RollingImageState();
}

class _RollingImageState extends State<RollingImage> {
  double _angle = 0.0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startRolling();
  }

  void _startRolling() {
    _timer = Timer.periodic(Duration(milliseconds: 100), (timer) {
      setState(() {
        _angle -= 5; // Rotate 5 degrees anticlockwise every 100ms
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'flex justify-center items-center h-screen', [
      div(classes: 'transform transition-transform duration-100', [
        img(
          src: this.imageUrl, // Use the imageUrl parameter directly
          alt: 'Rolling Image',
          classes: 'w-32 h-32',
          attributes: {
            'style': 'transform: rotate(${_angle}deg);',
          },
        ),
      ]),
    ]);
  }
}
















// import 'dart:async';
// import 'package:jaspr/jaspr.dart';

// class RollingImage extends StatefulComponent {
//   const RollingImage({super.key});

//   @override
//   State<StatefulComponent> createState() => _RollingImageState();
// }

// class _RollingImageState extends State<RollingImage> {
//   double _angle = 0.0;
//   Timer? _timer;

//   @override
//   void initState() {
//     super.initState();
//     _startRolling();
//   }

//   void _startRolling() {
//     _timer = Timer.periodic(Duration(milliseconds: 100), (timer) {
//       setState(() {
//         _angle -= 5; // Rotate 5 degrees anticlockwise every 100ms
//       });
//     });
//   }

//   @override
//   void dispose() {
//     _timer?.cancel();
//     super.dispose();
//   }

//   @override
//   Iterable<Component> build(BuildContext context) sync* {
//     yield div(classes: 'flex justify-center items-center h-screen', [
//       div(classes: 'transform transition-transform duration-100', [
//         img(
//           attributes: {
//             'src': 'path_to_your_image.png', // Replace with your image path
//             'alt': 'Rolling Image',
//             'style': 'transform: rotate(${_angle}deg);',
//           },
//           classes: 'w-32 h-32', src: '/images/01.png',
//         ),
//       ]),
//     ]);
//   }
// }