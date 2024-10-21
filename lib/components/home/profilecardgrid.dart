import 'package:jaspr/jaspr.dart';


class Profile {
  final String name;
  final String title;
  final String description;
  final String imageUrl;

  Profile({
    required this.name,
    required this.title,
    required this.description,
    required this.imageUrl,
  });
}


// class ProfileCardGrid extends StatelessComponent {
//   const ProfileCardGrid({super.key});

//   @override
//   Iterable<Component> build(BuildContext context) sync* {
//     yield div(classes: 'container mx-auto p-4', [
//       div(classes: 'grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4', [
//         const ProfileCard(),
//         const ProfileCard(),
//         const ProfileCard(),
//         const ProfileCard(),
//         const ProfileCard(),
//         const ProfileCard(),
//       ]),
//     ]);
//   }
// }


// import 'package:jaspr/jaspr.dart';

class ProfileCardGrid extends StatelessComponent {
  const ProfileCardGrid({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    // Example list of profiles
    final profiles = [
      Profile(
        name: 'Ben Lucky',
        title: 'CEO',
        description: '3+ years of experience in paid search advertising. Skilled in campaign management and performance analysis',
        imageUrl: 'https://storage.googleapis.com/a1aa/image/e3zzv79Vr11VcC3KKDof5GtbVpa1ZLzjJL4J1JQiX4MSflNnA.jpg',
      ),
      Profile(
        name: 'Emmanuel Eyitayo',
        title: 'UI/UX Designer',
        description: '5+ years of experience in software development. Expert in Flutter and Dart.',
        imageUrl: 'https://storage.googleapis.com/a1aa/image/e3zzv79Vr11VcC3KKDof5GtbVpa1ZLzjJL4J1JQiX4MSflNnA.jpg',
      ),
      Profile(
        name: 'Dereal Fortune',
        title: 'Motion Graphics',
        description: '4+ years of experience in data science. Skilled in machine learning and AI.',
        imageUrl: 'https://storage.googleapis.com/a1aa/image/e3zzv79Vr11VcC3KKDof5GtbVpa1ZLzjJL4J1JQiX4MSflNnA.jpg',
      ),

          Profile(
        name: 'David Uche',
        title: 'Backend Engineer',
        description: '4+ years of experience in data science. Skilled in machine learning and AI.',
        imageUrl: 'https://storage.googleapis.com/a1aa/image/e3zzv79Vr11VcC3KKDof5GtbVpa1ZLzjJL4J1JQiX4MSflNnA.jpg',
      ),

          Profile(
        name: 'Nathaniel Favour',
        title: 'Devops Engineer',
        description: '4+ years of experience in data science. Skilled in machine learning and AI.',
        imageUrl: 'https://storage.googleapis.com/a1aa/image/e3zzv79Vr11VcC3KKDof5GtbVpa1ZLzjJL4J1JQiX4MSflNnA.jpg',
      ),

          Profile(
        name: 'Wisdom Wisdom',
        title: 'Frontend Engineer',
        description: '4+ years of experience in data science. Skilled in machine learning and AI.',
        imageUrl: 'https://storage.googleapis.com/a1aa/image/e3zzv79Vr11VcC3KKDof5GtbVpa1ZLzjJL4J1JQiX4MSflNnA.jpg',
      ),
      // Add more profiles as needed
    ];

    yield div(classes: 'container mx-auto p-4', [
      div(classes: 'grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4', [
        for (var profile in profiles) ProfileCard(profile: profile),
      ]),
    ]);
  }
}


// class ProfileCard extends StatelessComponent {
//   const ProfileCard({super.key});

//   @override
//   Iterable<Component> build(BuildContext context) sync* {
//     yield div(classes: 'bg-white rounded-lg shadow-lg p-6 max-w-sm text-center relative', [
//       div(classes: 'absolute top-4 right-4', [
//         i(classes: 'fab fa-linkedin-in text-black', []),
//       ]),
//       div(classes: 'flex justify-center mb-4', [
//         div(classes: 'relative', [
//           div(classes: 'w-16 h-16 bg-purple-200 rounded-full flex items-center justify-center', [
//             img(
//               src: 'https://storage.googleapis.com/a1aa/image/e3zzv79Vr11VcC3KKDof5GtbVpa1ZLzjJL4J1JQiX4MSflNnA.jpg',
//               alt: 'Profile picture of Dereal Fortune',
//               classes: 'rounded-full',
//               width: 64,
//               height: 64,
//             ),
//           ]),
//         ]),
//       ]),
//       h2(classes: 'text-lg font-semibold', [
//         text('Dereal Fortune'),
//       ]),
//       p(classes: 'text-gray-600', [
//         text('Motion Graphics'),
//       ]),
//       hr(classes: 'my-4'),
//       p(classes: 'text-gray-700', [
//         text('3+ years of experience in paid search advertising. Skilled in campaign management and performance analysis'),
//       ]),
//     ]);
//   }
// }




// import 'package:jaspr/jaspr.dart';

class ProfileCard extends StatelessComponent {
  const ProfileCard({
    required this.profile,
    super.key,
  });

  final Profile profile;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'bg-purple-500 rounded-lg shadow-lg p-6 max-w-sm text-center relative', [
      div(classes: 'absolute top-4 right-4', [
        i(classes: 'fab fa-linkedin-in text-black', []),
      ]),
      div(classes: 'flex justify-center mb-4', [
        div(classes: 'relative', [
          div(classes: 'w-16 h-16 bg-purple-200 rounded-full flex items-center justify-center', [
            img(
              src: profile.imageUrl,
              alt: 'Profile picture of ${profile.name}',
              classes: 'rounded-full',
              width: 64,
              height: 64,
            ),
          ]),
        ]),
      ]),
      h2(classes: 'text-lg font-semibold', [
        text(profile.name),
      ]),
      p(classes: 'text-gray-600', [
        text(profile.title),
      ]),
      hr(classes: 'my-4'),
      p(classes: 'text-gray-700', [
        text(profile.description),
      ]),
    ]);
  }
}






// class ProfileCard extends StatelessComponent {
//   const ProfileCard({super.key});

//   @override
//   Iterable<Component> build(BuildContext context) sync* {
//     yield div(classes: 'flex items-center justify-center min-h-screen bg-gray-100', [
//       div(classes: 'bg-white rounded-lg shadow-lg p-6 max-w-sm text-center relative', [
//         div(classes: 'absolute top-4 right-4', [
//           i(classes: 'fab fa-linkedin-in text-black', []),
//         ]),
//         div(classes: 'flex justify-center mb-4', [
//           div(classes: 'relative', [
//             div(classes: 'w-16 h-16 bg-purple-200 rounded-full flex items-center justify-center', [
//               img(
//                 src: 'https://storage.googleapis.com/a1aa/image/e3zzv79Vr11VcC3KKDof5GtbVpa1ZLzjJL4J1JQiX4MSflNnA.jpg',
//                 alt: 'Profile picture of Dereal Fortune',
//                 classes: 'rounded-full',
//                 width: 64,
//                 height: 64,
//               ),
//             ]),
//           ]),
//         ]),
//         h2(classes: 'text-lg font-semibold', [
//           text('Dereal Fortune'),
//         ]),
//         p(classes: 'text-gray-600', [
//           text('Motion Graphics'),
//         ]),
//         hr(classes: 'my-4'),
//         p(classes: 'text-gray-700', [
//           text('3+ years of experience in paid search advertising. Skilled in campaign management and performance analysis'),
//         ]),
//       ]),
//     ]);
//   }
// }


// import 'package:jaspr/jaspr.dart';
