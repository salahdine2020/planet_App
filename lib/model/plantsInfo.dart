import 'package:flutter/widgets.dart';
import 'package:planet_app/resources/assets.dart';

class Plants{
  final String name;
  final String occupation;
  final String imagePath;
  final String description;

  Plants(
      {
      @required this.name,
      @required this.occupation,
      @required this.imagePath,
      @required this.description});
      }

Plants firstMember = Plants(
    name: "Earth",
    occupation: "planet of life",
    imagePath: Assets.Earth,
    description:"Our home planet is the third planet from the Sun, and the only place we know of so far that’s inhabited by living things While Earth is only the fifth largest planet in the solar system, it is the only world in our solar system with liquid water on the surface Just slightly larger than nearby Venus, Earth is the biggest of the four planets closest to the Sun, all of which are made of rock and metal.The name Earth is at least 1,000 years old. All of the planets, except for Earth, were named after Greek and Roman gods and goddesses However, the name Earth is a Germanic word, which simply means the ground." );

Plants secondMember = Plants(
    name: "Mercury",
    occupation: "The Color's Planet",
    imagePath: Assets.Mercury,
    description: "The smallest planet in our solar system and nearest to the Sun, Mercury is only slightly larger than Earth's Moon From the surface of Mercury, the Sun would appear more than three times as large as it does when viewed from Earth, and the sunlight would be as much as seven times brighter Despite its proximity to the Sun, Mercury is not the hottest planet in our solar system – that title belongs to nearby Venus, thanks to its dense atmosphere."
   );

Plants thirdMember = Plants(
    name: "Venus",
    occupation: "Thick Atmospher plant",
    imagePath: Assets.Venus,
    description:"Jan. 31, 2019: A Japanese research group has identified a giant streak structure among the clouds covering Venus based on observation from the spacecraft Akatsuki The team also revealed the origins of this structure using large-scale climate simulations. The group was led by Project Assistant Professor Hiroki Kashimura (Kobe University, Graduate School of Science) and these findings were published on January 9 in Nature Communications Second planet from the Sun and our closest planetary neighbor, Venus is similar in structure and size to Earth, but it is now a very different world. Venus spins slowly in the opposite direction most planets do. Its thick atmosphere traps heat in a runaway greenhouse effect, making it the hottest planet in our solar system—with surface temperatures hot enough to melt lead. Glimpses below the clouds reveal volcanoes and deformed"
        );

Plants fourthMember = Plants(
    name: "Mars",
    occupation: "The Red Planet",
    imagePath: Assets.Mars,
    description: "The fourth planet from the Sun, Mars is a dusty, cold, desert world with a very thin atmosphere This dynamic planet has seasons, polar ice caps and weather and canyons and extinct volcanoes, evidence of an even more active past Mars is one of the most explored bodies in our solar system, and it's the only planet where we've sent rovers to roam the alien landscape. NASA currently has three spacecraft in orbit, one rover and one lander on the surface and another rover under construction here on Earth. India and ESA also have spacecraft in orbit above Mars These robotic explorers have found lots of evidence that Mars was much wetter and warmer, with a thicker atmosphere, billions of years ago"
        );

Plants fiveMember = Plants(
    name: "Jupiter",
    occupation: "The Massive Plant",
    imagePath: Assets.Jupiter,
    description:
       "upiter has a long history surprising scientists—all the way back to 1610 when Galileo Galilei found the first moons beyond Earth. That discovery changed the way we see the universe Fifth in line from the Sun, Jupiter is, by far, the largest planet in the solar system – more than twice as massive as all the other planets combined Jupiter's familiar stripes and swirls are actually cold, windy clouds of ammonia and water, floating in an atmosphere of hydrogen and helium. Jupiter’s iconic Great Red Spot is a giant storm bigger than Earth that has raged for hundreds of years One spacecraft — NASA's Juno orbiter — is currently exploring this giant world." 
        );

Plants sixMember = Plants(
    name: "Saturm",
    occupation: "Ringlets Planet",
    imagePath: Assets.Saturm,
    description:
        "Saturn is the sixth planet from the Sun and the second largest planet in our solar system Adorned with thousands of beautiful ringlets, Saturn is unique among the planets It is not the only planet to have rings—made of chunks of ice and rock—but none are as spectacular or as complicated as Saturn's Like fellow gas giant Jupiter, Saturn is a massive ball made mostly of hydrogen and helium."
        );
Plants sevenMember = Plants(
    name: "Neptune",
    occupation: "The blue Planet",
    imagePath: Assets.Neptune,
    description:
       "Dark, cold and whipped by supersonic winds, ice giant Neptune is the eighth and most distant planet in our solar system More than 30 times as far from the Sun as Earth, Neptune is the only planet in our solar system not visible to the naked eye and the first predicted by mathematics before its discovery. In 2011 Neptune completed its first 165-year orbit since its discovery in 1846 NASA's Voyager 2 is the only spacecraft to have visited Neptune up close It flew past in 1989 on its way out of the solar system."
        );
 Plants eightMember = Plants(
    name: "Uranus",
    occupation: "discovered in 1781",
    imagePath: Assets.Uranus,
    description:
       "The first planet found with the aid of a telescope, Uranus was discovered in 1781 by astronomer William Herschel, although he originally thought it was either a comet or a star It was two years later that the object was universally accepted as a new planet, in part because of observations by astronomer Johann Elert Bode Herschel tried unsuccessfully to name his discovery Georgium Sidus after King George III Instead the scientific community accepted Bode's suggestion to name it Uranus, the Greek god of the sky, as suggested by Bode."
        );       

List<Plants> plants = [
  firstMember,
  secondMember,
  thirdMember,
  fourthMember,
  fiveMember,
  sixMember,
  sevenMember,
  eightMember,
];
