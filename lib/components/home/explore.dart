import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

class Explore extends StatefulComponent {
  const Explore({super.key});

  @override
  State<Explore> createState() => _HeaderState();
}

class _HeaderState extends State<Explore> {
  bool isMenuOpen = false;

  void toggleMenu() {
    setState(() {
      isMenuOpen = !isMenuOpen;
    });
  }

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield nav(classes: 'flex items-center justify-center p-4 ', [
 
      button(
        classes: 'bg-gradient-to-r from-black to-purple-600 text-white font-medium py-2 px-4 rounded-full',
        [text('Explore Now')],
      ),
    ]);
  }
}

// void main() {
//   runApp(const Header());
// }




