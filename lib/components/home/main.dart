// import 'package:jaspr/jaspr.dart';

// class CustomSection extends StatelessComponent {
//   const CustomSection({super.key});

//   @override
//   Iterable<Component> build(BuildContext context) sync* {

    
//     yield section(classes: 'mt-20 p-4', [ // Add margin-top and padding
//       div(classes: 'flex flex-col md:flex-row items-center', [
//         div(classes: 'flex-1', [
//           h1(classes: 'text-4xl font-bold text-shadow-lg', [ // Increase text size and add shadow
//             text('Building Digital Solutions, Solving Real Problems')
//           ]),
//           p(classes: 'text-xl text-shadow-md mt-4 italic', [ // Increase text size, add shadow, and margin-top
//             text('At Bainary Globe, we are dedicated to crafting innovative digital solutions that effectively tackle real-world challenges, empowering individuals and businesses to thrive in an ever-evolving landscape')
//           ]),
//         ]),
//         img(src: 'images/logo.png', classes: 'w-4/5 md:w-3/10 mt-4 md:mt-0'), // Responsive width classes and margin-top for mobile
//       ]),
//     ]);
//   }
// }







import 'package:bainaryglobeweb/components/home/text.dart';
import 'package:jaspr/jaspr.dart';

class CustomSection extends StatelessComponent {
  const CustomSection({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield section(classes: 'mt-20 p-4', [
      div(classes: 'flex flex-col md:flex-row items-center md:items-start', [
        div(classes: 'flex-1 md:w-1/2', [


          h1(classes: 'text-6xl font-bold text-shadow-lg font-space-grotesk', [
            text('Turning challenges into innovative solutions')
          ]),

          const TitleText(),
          
// h1(classes: 'text-6xl font-bold', styles: 'text-shadow: 1px 1px 2px #000, 2px 2px 4px #000, 3px 3px 6px #000;', [
//   text('Building Digital Solutions, Solving Real Problems').
// ]),

          // p(classes: 'text-2xl text-shadow-md mt-4 italic font-space-grotesk', [
          //   text('At Bainary Globe, we are dedicated to crafting innovative digital solutions that effectively tackle real-world challenges, empowering individuals and businesses to thrive in an ever-evolving landscape')
          // ]),

          // button(classes: 'bg-black ',
          // [
          //   text('Explore'),
          
          // ]

          // ),
// br(),

// button(
//   classes: 'bg-black text-white rounded-lg shadow-lg font-space-grotesk transition-colors duration-200 hover:bg-purple-700 px-6 py-3',
//   [
//     text('Explore'),
//   ]
// )



        ]),
        img(src: 'images/o1.png', classes: 'w-full md:w-1/3 mt-4 md:mt-0 md:ml-4'), // Adjust width and margin for responsiveness

        // script()

      ]),
    ]);
  }
}





      // div(classes: 'h-24', [
      //   p([text('yo!')])
      // ]
      
      // )

        // @css
  // static final styles = [
  //   // Define any additional styles here if needed
  // ];


