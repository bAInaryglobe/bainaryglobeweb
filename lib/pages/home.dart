import 'package:bainaryglobeweb/components/cards/simpleCard.dart';
import 'package:bainaryglobeweb/components/home/flatcard.dart' as Rest;
import 'package:bainaryglobeweb/components/home/flatcardmultiple.dart';
import 'package:bainaryglobeweb/components/home/main.dart';
import 'package:bainaryglobeweb/components/home/profilecard.dart' as Prof;
import 'package:bainaryglobeweb/components/home/profilecardgrid.dart';
import 'package:bainaryglobeweb/components/home/text.dart';
import 'package:bainaryglobeweb/components/home/text2.dart';
import 'package:bainaryglobeweb/components/home/text3.dart';
import 'package:jaspr/jaspr.dart';

import '../components/counter.dart';

@client
class Home extends StatefulComponent {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {

  @override
  void initState() {
    super.initState();
    // Run code depending on the rendering environment.
    if (kIsWeb) {
      print("Hello client");
    } else {
      print("Hello server");
    }
  }

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'p-4', id: 'background-div', [


      const CustomSection(),

      // const SimpleCard(title: "title", message: "message"),

      const ResponsiveImageCard(imageUrl: '/images/flatcard.png', altText: 'Bainaryglobe'),


      const TitleText(),

      const Rest.ResponsiveImageCard(imageUrl: '/images/n2.png', altText: 'Bainaryglobe'),


      const ResponsiveImageCardGrid(),

      // const ResponsiveImageCard(imageUrl: '/images/flatcard.png', altText: 'Bainaryglobe'),

      const Rest.ResponsiveImageCard(imageUrl: '/images/n7.png', altText: 'Bainaryglobe'),

      const TitleText2(),

      const TitleText3(),

      // const Prof.ProfileCard(),

      const ProfileCardGrid(),


    ]);
  }


}




  // @css
  // final styles = [
  //   // Define any styles here if needed
  // ];

      // const FlatFour(),
      // const Culture(),
      // const FlatCard(),
      // const FlatCardFour(),
      // const History(),
      // const BoardMembers(),
      // const CodeOfConduct(),

      // Components of the home page.







      // Uncomment the SimpleCard component if you want to use it
      // const SimpleCard(title: "test", message: "message"),





    // yield section([


    //   div(classes: 'flex flex-col md:flex-row items-center', [
    //     div(classes: 'flex-1', [
    //       h1(classes: 'text-2xl font-bold', [text
    //       ('Building Digital Solutions, Solving Real Problems')
    //       ]),
    //       p([text('You successfully created a new Jaspr site.')]),
    //     ]),
    //     img(src: 'images/logo.png', classes: 'w-72 md:w-full'),
    //   ]),
    //   div(classes: 'h-24', [
    //     p([text('yo!')])
    //   ])


    // ]);
    // const CustomSection();


          // When using @client components there is no default `main()` function on the client where you would normally
      // run any client-side initialization logic. Instead you can put it here, considering this component is only
      // mounted once at the root of your client-side component tree.



// By using the @client annotation this component will be automatically compiled to javascript and mounted
// on the client. Therefore:
// - this file and any imported file must be compilable for both server and client environments.
// - this component and any child components will be built once on the server during pre-rendering and then
//   again on the client during normal rendering.