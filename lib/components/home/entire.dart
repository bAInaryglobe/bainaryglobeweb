import 'package:bainaryglobeweb/components/footer.dart';
import 'package:bainaryglobeweb/components/home/banner.dart';
import 'package:bainaryglobeweb/components/home/flatcardmultiple.dart';
import 'package:bainaryglobeweb/components/home/one.dart';
import 'package:bainaryglobeweb/components/home/profilecardgrid.dart';
import 'package:bainaryglobeweb/components/home/services.dart';
import 'package:bainaryglobeweb/components/home/smart.dart';
import 'package:bainaryglobeweb/components/home/text2.dart';
import 'package:bainaryglobeweb/components/home/text3.dart';
import 'package:bainaryglobeweb/components/home/what.dart';
import 'package:jaspr/jaspr.dart';
import 'package:bainaryglobeweb/components/home/flatcard.dart' as Rest;

class Entire extends StatelessComponent {
  const Entire({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'flex flex-col items-center', [

            const SmartAppSuiteComponent(),

      const Rest.ResponsiveImageCard(imageUrl: '/images/n7.png', altText: 'Bainaryglobe'),

      const ResponsiveImageCardGrid(),



br(),
      const CustomTextComponent(textInput: "Our services deliver innovative, real-time solutions for everyday challenges."),
br(),

      const FullWidthImageWithTextAndButton(imagePath: '/images/banners0.png', centeredText: 'Settle down anywhere with the comfort of vx homes'),
br(),
      // const FullWidthImageWithTextAndButton(imagePath: '/images/banners1.png', centeredText: 'centeredText'),
br(),
      const FullWidthImageWithTextAndButton(imagePath: '/images/banners2.png', centeredText: 'Travel the world with your choice vehicle'),
br(),
      const FullWidthImageWithTextAndButton(imagePath: '/images/banners3.png', centeredText: 'Never run out of fuel again! we got you.'),
br(),
      const FullWidthImageWithTextAndButton(imagePath: '/images/banners4.png', centeredText: 'Home cleaning? take some rest we got you covered'),
br(),
      const FullWidthImageWithTextAndButton(imagePath: '/images/banners5.png', centeredText: 'Order anything from the comfort of your home'),
br(),
      const FullWidthImageWithTextAndButton(imagePath: '/images/banners6.png', centeredText: 'Tired of going to buy utilities? pay for anything from vexeroo app'),
br(),
      const FullWidthImageWithTextAndButton(imagePath: '/images/banners7.png', centeredText: 'Too busy to make it to the gym? rest assured, let us train you.'),

br(),

      const ServicesComponent(),

            const ResponsiveImageCard(imageUrl: '/images/banner.png', altText: 'bainaryglobe'),

      // const TitleText2(),
      // const TitleText3(),

// const TitleText4(),  
    const OurMissionComponent(),


      const ProfileCardGrid(),




      const Footer()
    ]);
  }
}