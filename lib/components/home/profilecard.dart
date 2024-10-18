import 'package:jaspr/jaspr.dart';

class ProfileCard extends StatelessComponent {
  const ProfileCard({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'flex items-center justify-center min-h-screen bg-gray-100', [
      div(classes: 'bg-white rounded-lg shadow-lg p-6 max-w-sm text-center relative', [
        div(classes: 'absolute top-4 right-4', [
          i([], classes: 'fab fa-linkedin-in text-black'),
        ]),
        div(classes: 'flex justify-center mb-4', [
          div(classes: 'relative', [
            div(classes: 'w-16 h-16 bg-purple-200 rounded-full flex items-center justify-center', [
              img(
                src: 'https://storage.googleapis.com/a1aa/image/e3zzv79Vr11VcC3KKDof5GtbVpa1ZLzjJL4J1JQiX4MSflNnA.jpg',
                alt: 'Profile picture of Dereal Fortune',
                classes: 'rounded-full',
                width: 64,
                height: 64,
              ),
            ]),
          ]),
        ]),
        
        h2(classes: 'text-lg font-semibold', [
          text('Dereal Fortune'),
        ]),
        p(classes: 'text-gray-600', [
          text('Motion Graphics'),
        ]),
        hr(classes: 'my-4'),
        p(classes: 'text-gray-700', [
          text('3+ years of experience in paid search advertising. Skilled in campaign management and performance analysis'),
        ]),
      ]),
    ]);
  }
}