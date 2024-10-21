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
//           src: this.imageUrl, // Use the imageUrl parameter directly
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











// import 'package:jaspr/jaspr.dart';

// class RotatingImageCard extends StatelessComponent {
//   const RotatingImageCard({
//     required this.imageUrl,
//     required this.altText,
//   });

//   final String imageUrl;
//   final String altText;

//   @override
//   Iterable<Component> build(BuildContext context) sync* {
//     yield div(classes: 'w-full max-w-full p-4 flex justify-center items-center', [
//       div(classes: 'relative rounded-xl shadow-2xl overflow-hidden animate-spin-slow', [
//         img(classes: 'w-full h-auto', src: imageUrl, alt: altText),
//       ]),
//     ]);
//   }

  
// }

import 'package:jaspr/jaspr.dart';

class RotatingImageCard extends StatelessComponent {
  const RotatingImageCard({
    required this.imageUrl,
    required this.altText,
  });

  final String imageUrl;
  final String altText;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'w-full h-auto bg-transparent', [
      DomComponent(tag: 'style', children: [
        text(
          '''
          @keyframes spin-slow {
            from {
              transform: rotate(0deg);
            }
            to {
              transform: rotate(-360deg);
            }
          }
          .animate-spin-slow {
            animation: spin-slow 10s linear infinite;
          }
          .container {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 100%;
            height: 100%;
            background-color: transparent;
          }
          .image-wrapper {
            position: relative;
            border-radius: 12px;
            overflow: hidden;
            background-color: transparent;
            height: 50%; /* Set the height to 50% to show only the upper half */
          }
          .image-wrapper img {
            width: 100%;
            height: 200%; /* Double the height to ensure the image rolls fully */
            transform: translateY(-25%); /* Shift the image up to show the upper half */
            background-color: transparent;
          }
          '''
        ),
      ]),
      div(classes: 'container bg-transparent', [
        div(classes: 'image-wrapper animate-spin-slow bg-transparent', [
          img(src: imageUrl, alt: altText),
        ]),
      ]),
    ]);
  }
}
// Add the following CSS to your main CSS file or a style block in your HTML file:

/*
@keyframes spin-slow {
  from {
    transform: rotate(0deg);
  }
  to {
    transform: rotate(-360deg);
  }
}

.animate-spin-slow {
  animation: spin-slow 10s linear infinite;
}
*/












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