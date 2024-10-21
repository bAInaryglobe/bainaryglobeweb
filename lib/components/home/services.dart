import 'package:jaspr/jaspr.dart';

class ServicesComponent extends StatelessComponent {
  const ServicesComponent({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield DomComponent(tag: 'style', children: [
      text(
        '''
        @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap');
        body {
          font-family: 'Roboto', sans-serif;
        }
        .custom-shape {
          background: #E0D4FF;
          border-radius: 50%;
          padding: 2rem;
          position: relative;
        }
        .custom-shape img {
          border-radius: 10px;
          transform: rotate(-10deg);
        }
        .custom-shape::before {
          content: '';
          position: absolute;
          top: 10px;
          left: 10px;
          width: 20px;
          height: 20px;
          background: #000;
          border-radius: 50%;
        }
        .custom-shape::after {
          content: '';
          position: absolute;
          bottom: 10px;
          right: 10px;
          width: 20px;
          height: 20px;
          background: #000;
          border-radius: 50%;
        }
        '''
      ),
    ]);
    yield body(classes: 'bg-white text-gray-800', [
      div(classes: 'container mx-auto p-6', [
        div(classes: 'grid grid-cols-1 md:grid-cols-2 gap-12', [
          // VxCar Section
          div(classes: 'flex flex-col md:flex-row items-center', [
            div(classes: 'custom-shape mb-6 md:mb-0 md:mr-6', [
              img(src: 'https://storage.googleapis.com/a1aa/image/mToaMhHRe9TScKOPUWPfxtoJAZ7EaehrZlVL9GILEcNGZpQnA.jpg', alt: 'A black car parked on the road', width: 300, height: 200),
            ]),
            div([
              h2(classes: 'text-2xl font-bold mb-4', [text('VxCar')]),
              p(classes: 'mb-4', [
                text('Our car rental app makes getting on the road easier than ever. With just a few taps, you can browse, book, and drive the perfect vehicle for your needs. Whether it’s for business or leisure, our app ensures a seamless rental experience, saving you time and effort. Enjoy the convenience of reliable, hassle-free car rentals at your fingertips, anytime, anywhere.'),
              ]),
              button(classes: 'bg-purple-600 text-white py-2 px-4 rounded-full shadow-lg', [text('View More')]),
            ]),
          ]),
          // VxHome Section
          div(classes: 'flex flex-col md:flex-row items-center', [
            div(classes: 'custom-shape mb-6 md:mb-0 md:mr-6', [
              img(src: 'https://storage.googleapis.com/a1aa/image/u7j8GGwZluLvDJYlLAa3iEPohaPyAh4hNIXBWQxMoNlILF6E.jpg', alt: 'A modern house with large windows', width: 300, height: 200),
            ]),
            div([
              h2(classes: 'text-2xl font-bold mb-4', [text('VxHome')]),
              p(classes: 'mb-4', [
                text('Our home rental app simplifies finding your ideal space. Whether you’re looking for a short-term stay or a long-term home, you can easily browse, book, and move in with just a few clicks. We take the hassle out of renting by offering a streamlined, user-friendly experience from start to finish. Discover the perfect home, whenever and wherever you need it, with total convenience.'),
              ]),
              button(classes: 'bg-purple-600 text-white py-2 px-4 rounded-full shadow-lg', [text('View More')]),
            ]),
          ]),
          // Fashion Section
          div(classes: 'flex flex-col md:flex-row items-center', [
            div(classes: 'custom-shape mb-6 md:mb-0 md:mr-6', [
              img(src: 'https://storage.googleapis.com/a1aa/image/4PtQx1viCzqUPVSId0dfeaS29wtoy2Mjv8U6eleN6o9qyShOB.jpg', alt: 'A person in fashionable clothing', width: 300, height: 200),
            ]),
            div([
              h2(classes: 'text-2xl font-bold mb-4', [text('Fashion')]),
              p(classes: 'mb-4', [
                text('At Bainary Globe, our voice is clear, confident, and focused on innovation and reliability. We communicate with simplicity and professionalism, prioritizing user-centric messaging that reflects our expertise and dedication.'),
              ]),
              button(classes: 'bg-purple-600 text-white py-2 px-4 rounded-full shadow-lg', [text('View More')]),
            ]),
          ]),
          // Utilities Section
          div(classes: 'flex flex-col md:flex-row items-center', [
            div(classes: 'custom-shape mb-6 md:mb-0 md:mr-6', [
              img(src: 'https://storage.googleapis.com/a1aa/image/G5sWNucNGm62HJ42EeoBg9mU2azAJ3VzDwkywJDgFegksUoTA.jpg', alt: 'A person using a smartphone', width: 300, height: 200),
            ]),
            div([
              h2(classes: 'text-2xl font-bold mb-4', [text('Utilities')]),
              p(classes: 'mb-4', [
                text('Our utilities app puts control at your fingertips, making it easy to manage and pay for essential services. From electricity to Data and Airtime, everything is streamlined for your convenience. Track usage, monitor bills, and ensure timely payments all in one place. Simplify your utility management with an app designed to make life easier.'),
              ]),
              button(classes: 'bg-purple-600 text-white py-2 px-4 rounded-full shadow-lg', [text('View More')]),
            ]),
          ]),
          // Home Services Section
          div(classes: 'flex flex-col md:flex-row items-center', [
            div(classes: 'custom-shape mb-6 md:mb-0 md:mr-6', [
              img(src: 'https://storage.googleapis.com/a1aa/image/axjYZuvzPexoJCjYqYGXizq9NKx1OR4qef13CLPKClsRZpQnA.jpg', alt: 'A person cleaning a house', width: 300, height: 200),
            ]),
            div([
              h2(classes: 'text-2xl font-bold mb-4', [text('Home Services')]),
              p(classes: 'mb-4', [
                text('Our home services app connects you with trusted professionals for all your household needs. Whether it’s cleaning, repairs, or maintenance, booking expert help is quick and easy. With just a few taps, you can schedule services that fit your time and budget. Simplify home care with reliable, hassle-free solutions right at your fingertips.'),
              ]),
              button(classes: 'bg-purple-600 text-white py-2 px-4 rounded-full shadow-lg', [text('View More')]),
            ]),
          ]),
          // Fitness Section
          div(classes: 'flex flex-col md:flex-row items-center', [
            div(classes: 'custom-shape mb-6 md:mb-0 md:mr-6', [
              img(src: 'https://storage.googleapis.com/a1aa/image/QeMtmmHZtAV0Z6YoFJmSnIhZAJZCUafrfFB9i5e8ngMByShOB.jpg', alt: 'A person working out in a gym', width: 300, height: 200),
            ]),
            div([
              h2(classes: 'text-2xl font-bold mb-4', [text('Fitness')]),
              p(classes: 'mb-4', [
                text('Our fitness app helps you achieve your goals with personalized workouts, tracking, and expert guidance. Whether you’re a beginner or a pro, access tailored fitness plans that fit your lifestyle. Track progress, set goals, and stay motivated with real-time updates and support. Take control of your fitness journey, anytime, anywhere.'),
              ]),
              button(classes: 'bg-purple-600 text-white py-2 px-4 rounded-full shadow-lg', [text('View More')]),
            ]),
          ]),
        ]),
      ]),
    ]);
  }
}