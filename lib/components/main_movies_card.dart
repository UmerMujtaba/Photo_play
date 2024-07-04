import 'package:flutter/material.dart';
import 'package:photoplay/screens/movie_detail_screen.dart';

class MainMoviesCard extends StatelessWidget {
  const MainMoviesCard({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> movies = const [
    // {
    //   'image': 'assets/movies/narcos.jfif',
    //   'name': 'Dora and the lost city of gold',
    //   'rate': '4.0',
    //   'description':
    //       'having spent most of her life exploring the jungle, nothing could prepare Dora for her most dangerous adventure yet high school.',
    //   'bgImageURL':
    //       'https://w0.peakpx.com/wallpaper/917/381/HD-wallpaper-dora-and-the-lost-city-of-gold-poster.jpg',
    // },
    {
      'image': 'assets/movies/narcos.jfif',
      'name': 'Narcos',
      'rate': '3.8',
      'description':
          'Narcos is an American crime drama television series created and produced by Chris Brancato, Carlo Bernard, and Doug Miro. Set and filmed in Colombia, seasons 1 and 2 are based on the story of Colombian narcoterrorist and drug lord Pablo Escobar, leader of the Medellín Cartel and billionaire through the production and distribution of cocaine.',
      'bgImageURL': 'https://wallpaperaccess.com/full/1097131.jpg',
      'genres': ['Movie', 'Drama', 'Action', 'Crime'],
      'actors': [
        {
          'image': 'assets/actor/isabela.jfif',
          'name': 'Isabela Moner',
          'description':
              'Isabela Yolanda Moner, known professionally as Isabela Merced since 2019, is an American actress. She played the lead role in the Nickelodeon television series 100 Things to Do Before High School, and went on to feature in the films.'
        },
        {
          'image': 'assets/actor/micheal.jfif',
          'name': 'Micheal Pena',
          'description':
              'Micheal Pena was born and rasied in Chicago, to Nicolosa, a social worker, who worked at button factory. His parents were originally from Mexico.'
        },
        {
          'image': 'assets/actor/eva.jfif',
          'name': 'Eva Longoria',
          'description':
              'Eva Jacqueline Longoria Bastón is an American actress, producer, director and business woman. After a number of guest roles on several television series, she was recognized for her portrayal of Isabella Braña on the CBS daytime soap opera The Young and the Restless, on which she starred from 2001 to 2003.'
        },
        {
          'image': 'assets/actor/katherine.jfif',
          'name': 'Katherine Langford',
          'description':
              'Katherine Anne Langford is an Australian actress. After appearing in several independent films, she had her breakthrough starring as Hannah Baker in the Netflix television series 13 Reasons Why, which earned her a Golden Globe Award nomination.'
        },
        {
          'image': 'assets/actor/emilia.jfif',
          'name': 'Emilia Clark',
          'description':
              'Emilia Isobel Euphemia Rose Clarke MBE is an English actress. She is best known for her portrayal of Daenerys Targaryen in the HBO fantasy series Game of Thrones, for which she received nominations for four Primetime Emmy Awards.'
        },
      ]
    },
    {
      'image': 'assets/movies/deadpool.jfif',
      'name': 'Deadpool',
      'rate': '3.9',
      'description':
          'Deadpool is a 2016 American superhero film based on the Marvel Comics character of the same name. Distributed by 20th Century Fox, it is a spin-off of the X-Men film series and its eighth installment overall.',
      'bgImageURL':
          'https://c4.wallpaperflare.com/wallpaper/207/760/989/movie-deadpool-2-deadpool-wallpaper-preview.jpg',
      'genres': ['Movie', 'Action Comedy', 'Crime', 'Thriller'],
      'actors': [
        {
          'image': 'assets/actor/ryan.jfif',
          'name': 'Ryan Reynolds',
          'description':
              'Ryan Rodney Reynolds OBC is a Canadian and American actor, producer, and businessman. He began his career starring in the Canadian teen soap opera Hillside and had minor roles before landing the lead role on the sitcom Two Guys and a Girl between 1998 and 2001.'
        },
        {
          'image': 'assets/actor/morena.jfif',
          'name': 'Morena Baccarin',
          'description':
              'Morena Silva de Vaz Setta Baccarin is an American actress. She is known for portraying Inara Serra in the sci-fi television series Firefly and its follow-up film Serenity, Vanessa in the superhero comedy'
        },
        {
          'image': 'assets/actor/gina.jfif',
          'name': 'Gina Carano',
          'description':
              'Gina Joy Carano is an American actress and former mixed martial artist. She competed in Elite Xtreme Combat and Strikeforce from 2006 to 2009, where she compiled a 7–1 record. Her popularity led to her being called the "face of women\'s MMA", although Carano rejected this title.'
        },
        {
          'image': 'assets/actor/ed.jfif',
          'name': 'Ed Skrein',
          'description':
              'Edward George Skrein is an English actor, filmmaker, and rapper. He rose to recognition as the villain Francis Freeman / Ajax in the superhero comedy film Deadpool.'
        },
      ]
    },
    {
      'image': 'assets/movies/annabel.jfif',
      'name': 'Annabel',
      'rate': '2.7',
      'description':
          'The film was inspired by a story of a doll named Annabelle by Ed and Lorraine Warren.[5] It is a spin-off and prequel to the 2013 film The Conjuring, and was announced shortly after the release of that movie because of its worldwide box office success and positive reception of the depiction of the doll.',
      'bgImageURL':
          'https://wallpapers.com/images/featured/annabelle-61pbmbeks68ucrw2.jpg',
      'genres': ['Movie', 'Horror', 'Thriller', 'Family'],
      'actors': [
        {
          'image': 'assets/actor/ana.jfif',
          'name': 'Annabelle Wallis',
          'description':
              'Annabelle Frances Wallis is an English actress. She is known for her roles as Jane Seymour in Showtime\'s period drama The Tudors, Grace Burgess in the BBC drama Peaky Blinders, Mia Form in the supernatural'
        },
        {
          'image': 'assets/actor/word.jfif',
          'name': 'Ward Horton',
          'description':
              'Ward Kirby Horton is an American actor and stunt person. He is known for playing John Form in Annabelle. In the fall of 2018, he played Ed in a Broadway revival of Torch Song Trilogy. Horton appeared in the HBO show The Gilded Age as Charles Fane.'
        },
        {
          'image': 'assets/actor/brian.jfif',
          'name': 'Brian Howa',
          'description':
              'Brian Howe is an American actor. He is best known for his portrayal of stockbroker Jay Twistle in the film The Pursuit of Happyness.'
        },
        {
          'image': 'assets/actor/shiloh.jfif',
          'name': 'Shiloh Nelson',
          'description':
              'Shiloh Arielle Nelson (born January 22, 2009) is an American actress, TikToker, and YouTuber, mostly known for starring on the YouTube channel Shiloh & Bros. Nelson is also known for playing young Casey Newton in Tomorrowland, Keia in Puppy Dog Pals, and Ruby in Feel the Beat'
        },
      ]
    },
    {
      'image': 'assets/movies/chernobyl.jfif',
      'name': 'Chernobyl',
      'rate': '4.8',
      'description':
          'Chernobyl is a 2019 historical drama television miniseries that revolves around the Chernobyl disaster of 1986 and the cleanup efforts that followed. The series was created and written by Craig Mazin and directed by Johan Renck.',
      'bgImageURL': 'https://images6.alphacoders.com/116/1162672.jpg',
      'genres': ['Series', 'Historical Drama', 'Thriller', 'Disaster'],
      'actors': [
        {
          'image': 'assets/actor/jesi.jfif',
          'name': 'Jessie Buckley',
          'description':
              'Jessie Buckley is an Irish singer and actress, who came in second place in the BBC talent show-themed television series I\'d Do Anything, and subsequently played Anne Egermann in the West End revival of Stephen Sondheim\'s A Little Night Music.'
        },
        {
          'image': 'assets/actor/jared.jfif',
          'name': 'Jared Harris',
          'description':
              'Jared Francis Harris was born in London, England. He is the son of Irish actor Richard Harris and Welsh actress Elizabeth Harris (Elizabeth Rees), and brother of Damian Harris and Jamie Harris. Despite his lineage, Jared showed little interest in becoming an actor, until he was cast in a college production while attending North Carolinaz\'s Duke University (USA), where he studied drama and literature, in the early 1980s.'
        },
        {
          'image': 'assets/actor/stellan.jfif',
          'name': 'Stellan Skarsgård',
          'description':
              'Stellan Skarsgård was born in Gothenburg, Västra Götalands län, Sweden, to Gudrun (Larsson) and Jan Skarsgård. He became a star in his teens through the title role in the TV-series Bombi Bitt och jag (1968). Between the years 1972-88 he was employed at The Royal Dramatic Theatre in Stockholm, where he participated in "Vita rum" (1988),'
        },
      ]
    },
    {
      'image': 'assets/movies/dark.jfif',
      'name': 'Dark',
      'rate': '4.4',
      'description':
          'Dark is a German streaming television series co-created by the couple Baran bo Odar and Jantje Friese.[5][6][7] It ran for three seasons from 2017 to 2020. The story follows the dysfunctional characters from the fictional town of Winden in Germany, as they pursue the truth in the aftermath of a child\'s disappearance.',
      'bgImageURL': 'https://wallpaperaccess.com/full/1510470.jpg',
      'genres': ['Series', 'Fiction', 'Thriller', 'Drama'],
      'actors': [
        {
          'image': 'assets/actor/lois.jfif',
          'name': 'Louis Hofmann',
          'description':
              'Louis Hofmann was born in Gothenburg, Västra Götalands län, Sweden, to Gudrun (Larsson) and Jan Skarsgård. He became a star in his teens through the title role in the TV-series Bombi Bitt och jag (1968). Between the years 1972-88 he was employed at The Royal Dramatic Theatre in Stockholm, where he participated in "Vita rum" (1988),'
        },
        {
          'image': 'assets/actor/lisa1.jfif',
          'name': 'Lisa Vicari',
          'description':
              'Lisa Vicari was born in Gothenburg, Västra Götalands län, Sweden, to Gudrun (Larsson) and Jan Skarsgård. He became a star in his teens through the title role in the TV-series Bombi Bitt och jag (1968). Between the years 1972-88 he was employed at The Royal Dramatic Theatre in Stockholm, where he participated in "Vita rum" (1988),'
        },
        {
          'image': 'assets/actor/gina1.jfif',
          'name': 'Gina Stiebitz',
          'description':
              'Gina Stiebitz was born in Gothenburg, Västra Götalands län, Sweden, to Gudrun (Larsson) and Jan Skarsgård. He became a star in his teens through the title role in the TV-series Bombi Bitt och jag (1968). Between the years 1972-88 he was employed at The Royal Dramatic Theatre in Stockholm, where he participated in "Vita rum" (1988),'
        },
        {
          'image': 'assets/actor/maja.jfif',
          'name': 'Maja Schone',
          'description':
              'Maja Schone was born in Gothenburg, Västra Götalands län, Sweden, to Gudrun (Larsson) and Jan Skarsgård. He became a star in his teens through the title role in the TV-series Bombi Bitt och jag (1968). Between the years 1972-88 he was employed at The Royal Dramatic Theatre in Stockholm, where he participated in "Vita rum" (1988),'
        },
        {
          'image': 'assets/actor/oliver.jfif',
          'name': 'Oliver Masucci',
          'description':
              'Oliver Masucci was born in Gothenburg, Västra Götalands län, Sweden, to Gudrun (Larsson) and Jan Skarsgård. He became a star in his teens through the title role in the TV-series Bombi Bitt och jag (1968). Between the years 1972-88 he was employed at The Royal Dramatic Theatre in Stockholm, where he participated in "Vita rum" (1988),'
        },
      ]
    },
    {
      'image': 'assets/movies/friend.jfif',
      'name': 'Friends',
      'rate': '4.0',
      'description':
          'Friends is an American television sitcom created by David Crane and Marta Kauffman.The show ranked within the top ten of the final television season ratings; it ultimately reached the number-one spot in its eighth season. ',
      'bgImageURL':
          'https://wallpapercat.com/w/middle-retina/8/1/2/116753-3840x2160-desktop-4k-friends-tv-series-wallpaper-image.jpg',
      'genres': ['Series', 'Funny', 'Comedy', 'Family'],
      'actors': [
        {
          'image': 'assets/actor/david.jfif',
          'name': 'Mattheew Perry',
          'description':
              'Mattheew Perry was born in Gothenburg, Västra Götalands län, Sweden, to Gudrun (Larsson) and Jan Skarsgård. He became a star in his teens through the title role in the TV-series Bombi Bitt och jag (1968). Between the years 1972-88 he was employed at The Royal Dramatic Theatre in Stockholm, where he participated in "Vita rum" (1988),'
        },
        {
          'image': 'assets/actor/math.jfif',
          'name': 'David Schwimmer',
          'description':
              'David Schwimmer was born in Gothenburg, Västra Götalands län, Sweden, to Gudrun (Larsson) and Jan Skarsgård. He became a star in his teens through the title role in the TV-series Bombi Bitt och jag (1968). Between the years 1972-88 he was employed at The Royal Dramatic Theatre in Stockholm, where he participated in "Vita rum" (1988),'
        },
        {
          'image': 'assets/actor/jeni1.jfif',
          'name': 'Jennifer Anistos',
          'description':
              'Jennifer Anistos was born in Gothenburg, Västra Götalands län, Sweden, to Gudrun (Larsson) and Jan Skarsgård. He became a star in his teens through the title role in the TV-series Bombi Bitt och jag (1968). Between the years 1972-88 he was employed at The Royal Dramatic Theatre in Stockholm, where he participated in "Vita rum" (1988),'
        },
        {
          'image': 'assets/actor/lisa1.jfif',
          'name': 'Lisa Kudrow',
          'description':
              'Lisa Kudrow was born in Gothenburg, Västra Götalands län, Sweden, to Gudrun (Larsson) and Jan Skarsgård. He became a star in his teens through the title role in the TV-series Bombi Bitt och jag (1968). Between the years 1972-88 he was employed at The Royal Dramatic Theatre in Stockholm, where he participated in "Vita rum" (1988),'
        },
      ]
    },
    {
      'image': 'assets/movies/ghost.jfif',
      'name': 'Ghost Rider',
      'rate': '3.8',
      'description':
          'Ghost Rider is the name of multiple superheroes or antiheroes appearing in American comic books published by Marvel Comics. Marvel had previously used the name for a Western character whose name was later changed to Phantom Rider.',
      'bgImageURL': 'https://wallpapercave.com/wp/wp2711671.jpg',
      'genres': ['Movie', 'Action', 'Thriller', 'Drama'],
      'actors': [
        {
          'image': 'assets/actor/nich.jfif',
          'name': 'Nicolas Cage',
          'description':
              'Nicolas Cage was born in Gothenburg, Västra Götalands län, Sweden, to Gudrun (Larsson) and Jan Skarsgård. He became a star in his teens through the title role in the TV-series Bombi Bitt och jag (1968). Between the years 1972-88 he was employed at The Royal Dramatic Theatre in Stockholm, where he participated in "Vita rum" (1988),'
        },
        {
          'image': 'assets/actor/eva1.jfif',
          'name': 'Eva Mendes',
          'description':
              'Eva Mendes was born in Gothenburg, Västra Götalands län, Sweden, to Gudrun (Larsson) and Jan Skarsgård. He became a star in his teens through the title role in the TV-series Bombi Bitt och jag (1968). Between the years 1972-88 he was employed at The Royal Dramatic Theatre in Stockholm, where he participated in "Vita rum" (1988),'
        },
        {
          'image': 'assets/actor/raq1.jfif',
          'name': 'Raquel Alessi',
          'description':
              'Raquel Alessi was born in Gothenburg, Västra Götalands län, Sweden, to Gudrun (Larsson) and Jan Skarsgård. He became a star in his teens through the title role in the TV-series Bombi Bitt och jag (1968). Between the years 1972-88 he was employed at The Royal Dramatic Theatre in Stockholm, where he participated in "Vita rum" (1988),'
        },
        {
          'image': 'assets/actor/sam1.jfif',
          'name': 'Sam Elliott',
          'description':
              'Sam Elliott was born in Gothenburg, Västra Götalands län, Sweden, to Gudrun (Larsson) and Jan Skarsgård. He became a star in his teens through the title role in the TV-series Bombi Bitt och jag (1968). Between the years 1972-88 he was employed at The Royal Dramatic Theatre in Stockholm, where he participated in "Vita rum" (1988),'
        },
      ]
    },
    {
      'image': 'assets/movies/grey.jfif',
      'name': 'Fifty Shades of Grey',
      'rate': '4.7',
      'description':
          'Fifty Shades of Grey is a 2015 American erotic romantic drama film directed by Sam Taylor-Johnson from a screenplay by Kelly Marcel.  Starring Dakota Johnson, Jamie Dornan, Jennifer Ehle and Marcia Gay Harden, the film\'s story follows Anastasia "Ana" Steele (Johnson), a college graduate, who begins a sadomasochistic relationship with young business magnate Christian Grey (Dornan).',
      'bgImageURL': 'https://wallpapercave.com/dwp1x/wp1965319.jpg',
      'genres': ['Movie', 'Romantic', 'Thriller', 'Drama'],
      'actors': [
        {
          'image': 'assets/actor/jam.jfif',
          'name': 'Jamie Dornan',
          'description':
              'Jamie Dornan was born in Gothenburg, Västra Götalands län, Sweden, to Gudrun (Larsson) and Jan Skarsgård. He became a star in his teens through the title role in the TV-series Bombi Bitt och jag (1968). Between the years 1972-88 he was employed at The Royal Dramatic Theatre in Stockholm, where he participated in "Vita rum" (1988),'
        },
        {
          'image': 'assets/actor/dakota.jfif',
          'name': 'Dakota Johnson',
          'description':
              'Dakota Johnson was born in Gothenburg, Västra Götalands län, Sweden, to Gudrun (Larsson) and Jan Skarsgård. He became a star in his teens through the title role in the TV-series Bombi Bitt och jag (1968). Between the years 1972-88 he was employed at The Royal Dramatic Theatre in Stockholm, where he participated in "Vita rum" (1988),'
        },
        {
          'image': 'assets/actor/luke.jfif',
          'name': 'Luke Grimes',
          'description':
              'Luke Grimes was born in Gothenburg, Västra Götalands län, Sweden, to Gudrun (Larsson) and Jan Skarsgård. He became a star in his teens through the title role in the TV-series Bombi Bitt och jag (1968). Between the years 1972-88 he was employed at The Royal Dramatic Theatre in Stockholm, where he participated in "Vita rum" (1988),'
        },
        {
          'image': 'assets/actor/rita.jfif',
          'name': 'Rita Ora',
          'description':
              'Rita Ora was born in Gothenburg, Västra Götalands län, Sweden, to Gudrun (Larsson) and Jan Skarsgård. He became a star in his teens through the title role in the TV-series Bombi Bitt och jag (1968). Between the years 1972-88 he was employed at The Royal Dramatic Theatre in Stockholm, where he participated in "Vita rum" (1988),'
        },
      ]
    },
    {
      'image': 'assets/movies/knight.jfif',
      'name': 'Knight & Day',
      'rate': '3.7',
      'description':
          'Knight and Day is a 2010 American satirical action comedy film directed by James Mangold and starring Tom Cruise and Cameron Diaz. The film was the second on-screen collaboration of Cruise and Diaz after Vanilla Sky.',
      'bgImageURL':
          'https://c4.wallpaperflare.com/wallpaper/974/419/709/movie-knight-and-day-cameron-diaz-tom-cruise-wallpaper-preview.jpg',
      'genres': ['Movie', 'Action', 'Adventure', 'Funny'],
      'actors': [
        {
          'image': 'assets/actor/cameron.jfif',
          'name': 'Cameron Diaz',
          'description':
              'Cameron Diaz was born in Gothenburg, Västra Götalands län, Sweden, to Gudrun (Larsson) and Jan Skarsgård. He became a star in his teens through the title role in the TV-series Bombi Bitt och jag (1968). Between the years 1972-88 he was employed at The Royal Dramatic Theatre in Stockholm, where he participated in "Vita rum" (1988),'
        },
        {
          'image': 'assets/actor/tom.jfif',
          'name': 'Tom Cruise',
          'description':
              'Tom Cruise was born in Gothenburg, Västra Götalands län, Sweden, to Gudrun (Larsson) and Jan Skarsgård. He became a star in his teens through the title role in the TV-series Bombi Bitt och jag (1968). Between the years 1972-88 he was employed at The Royal Dramatic Theatre in Stockholm, where he participated in "Vita rum" (1988),'
        },
        {
          'image': 'assets/actor/maggie.jfif',
          'name': 'Maggie Grace',
          'description':
              'Maggie Grace was born in Gothenburg, Västra Götalands län, Sweden, to Gudrun (Larsson) and Jan Skarsgård. He became a star in his teens through the title role in the TV-series Bombi Bitt och jag (1968). Between the years 1972-88 he was employed at The Royal Dramatic Theatre in Stockholm, where he participated in "Vita rum" (1988),'
        },
      ]
    },
    {
      'image': 'assets/movies/mission.jfif',
      'name': 'Mission Impossible',
      'rate': '4.7',
      'description':
          'Mission: Impossible is an American multimedia franchise based on a fictional secret espionage agency known as the Impossible Missions Force (IMF). The 1966 TV series ran for seven seasons and was revived in 1988 for two seasons.',
      'bgImageURL':
          'https://c4.wallpaperflare.com/wallpaper/836/347/764/mission-impossible-mission-impossible-ghost-protocol-tom-cruise-wallpaper-preview.jpg',
      'genres': ['Movie', 'Action', 'Thriller', 'Adventure'],
      'actors': [
        {
          'image': 'assets/actor/tom.jfif',
          'name': 'Tom Cruise',
          'description':
              'Tom Cruise was born in Gothenburg, Västra Götalands län, Sweden, to Gudrun (Larsson) and Jan Skarsgård. He became a star in his teens through the title role in the TV-series Bombi Bitt och jag (1968). Between the years 1972-88 he was employed at The Royal Dramatic Theatre in Stockholm, where he participated in "Vita rum" (1988),'
        },
        {
          'image': 'assets/actor/michele.jfif',
          'name': 'Mihcelle Monaghan',
          'description':
              'Mihcelle Monaghan was born in Gothenburg, Västra Götalands län, Sweden, to Gudrun (Larsson) and Jan Skarsgård. He became a star in his teens through the title role in the TV-series Bombi Bitt och jag (1968). Between the years 1972-88 he was employed at The Royal Dramatic Theatre in Stockholm, where he participated in "Vita rum" (1988),'
        },
        {
          'image': 'assets/actor/q.jfif',
          'name': 'Maggie Q',
          'description':
              'Maggie Q was born in Gothenburg, Västra Götalands län, Sweden, to Gudrun (Larsson) and Jan Skarsgård. He became a star in his teens through the title role in the TV-series Bombi Bitt och jag (1968). Between the years 1972-88 he was employed at The Royal Dramatic Theatre in Stockholm, where he participated in "Vita rum" (1988),'
        },
        {
          'image': 'assets/actor/simon.jfif',
          'name': 'Simon Pegg',
          'description':
              'Simon Pegg was born in Gothenburg, Västra Götalands län, Sweden, to Gudrun (Larsson) and Jan Skarsgård. He became a star in his teens through the title role in the TV-series Bombi Bitt och jag (1968). Between the years 1972-88 he was employed at The Royal Dramatic Theatre in Stockholm, where he participated in "Vita rum" (1988),'
        },
        {
          'image': 'assets/actor/keri.jfif',
          'name': 'Keri Russell',
          'description':
              'Keri Russell was born in Gothenburg, Västra Götalands län, Sweden, to Gudrun (Larsson) and Jan Skarsgård. He became a star in his teens through the title role in the TV-series Bombi Bitt och jag (1968). Between the years 1972-88 he was employed at The Royal Dramatic Theatre in Stockholm, where he participated in "Vita rum" (1988),'
        },
      ]
    },
    {
      'image': 'assets/movies/money.jfif',
      'name': 'Money Heist',
      'rate': '4.2',
      'description':
          'Money Heist (Spanish: La casa de papel, [la ˈkasa ðe paˈpel], lit. The House of Paper is a Spanish heist crime drama television series created by Álex Pina. The series traces two long-prepared heists led by the Professor (Álvaro Morte), one on the Royal Mint of Spain, and one on the Bank of Spain, told from the perspective of one of the robbers, Tokyo (Úrsula Corberó). ',
      'bgImageURL':
          'https://wallpapers.com/images/high/money-heist-professor-poster-agvdeyii8xry9y6n.webp',
      'genres': ['Series', 'Action', 'Thriller', 'Drama'],
      'actors': [
        {
          'image': 'assets/actor/alv.jfif',
          'name': 'Alvaro Morte',
          'description':
              'Alvaro Morte was born in Gothenburg, Västra Götalands län, Sweden, to Gudrun (Larsson) and Jan Skarsgård. He became a star in his teens through the title role in the TV-series Bombi Bitt och jag (1968). Between the years 1972-88 he was employed at The Royal Dramatic Theatre in Stockholm, where he participated in "Vita rum" (1988),'
        },
        {
          'image': 'assets/actor/uru.jfif',
          'name': 'Ursula Corbero',
          'description':
              'Ursula Corbero was born in Gothenburg, Västra Götalands län, Sweden, to Gudrun (Larsson) and Jan Skarsgård. He became a star in his teens through the title role in the TV-series Bombi Bitt och jag (1968). Between the years 1972-88 he was employed at The Royal Dramatic Theatre in Stockholm, where he participated in "Vita rum" (1988),'
        },
        {
          'image': 'assets/actor/ped.jfif',
          'name': 'Pedro Alonso',
          'description':
              'Pedro Alonso was born in Gothenburg, Västra Götalands län, Sweden, to Gudrun (Larsson) and Jan Skarsgård. He became a star in his teens through the title role in the TV-series Bombi Bitt och jag (1968). Between the years 1972-88 he was employed at The Royal Dramatic Theatre in Stockholm, where he participated in "Vita rum" (1988),'
        },
        {
          'image': 'assets/actor/itz.jfif',
          'name': 'Itziar Ituno',
          'description':
              'Itziar Ituno was born in Gothenburg, Västra Götalands län, Sweden, to Gudrun (Larsson) and Jan Skarsgård. He became a star in his teens through the title role in the TV-series Bombi Bitt och jag (1968). Between the years 1972-88 he was employed at The Royal Dramatic Theatre in Stockholm, where he participated in "Vita rum" (1988),'
        },
      ]
    },
    {
      'image': 'assets/movies/peaky.jfif',
      'name': 'Peaky Blinder',
      'rate': '4.9',
      'description':
          'Peaky Blinders is a British period crime drama television series created by Steven Knight. Set in Birmingham, it follows the exploits of the Peaky Blinders crime gang in the direct aftermath of the First World War. ',
      'bgImageURL':
          'https://c4.wallpaperflare.com/wallpaper/353/770/515/tv-series-peaky-blinders-cillian-murphy-oldtimer-wallpaper-preview.jpg',
      'genres': ['Series', 'Action', 'Thriller', 'Historical'],
      'actors': [
        {
          'image': 'assets/actor/download.jfif',
          'name': 'Cillian Murphy',
          'description':
              'Cillian Murphy was born in Gothenburg, Västra Götalands län, Sweden, to Gudrun (Larsson) and Jan Skarsgård. He became a star in his teens through the title role in the TV-series Bombi Bitt och jag (1968). Between the years 1972-88 he was employed at The Royal Dramatic Theatre in Stockholm, where he participated in "Vita rum" (1988),'
        },
        {
          'image': 'assets/actor/ana.jfif',
          'name': 'Annabelle Wallis',
          'description':
              'Annabelle Frances Wallis is an English actress. She is known for her roles as Jane Seymour in Showtime\'s period drama The Tudors, Grace Burgess in the BBC drama Peaky Blinders, Mia Form in the supernatural'
        },
        {
          'image': 'assets/actor/soph.jfif',
          'name': 'Sophie Rundle',
          'description':
              'Sophie Rundle was born in Gothenburg, Västra Götalands län, Sweden, to Gudrun (Larsson) and Jan Skarsgård. He became a star in his teens through the title role in the TV-series Bombi Bitt och jag (1968). Between the years 1972-88 he was employed at The Royal Dramatic Theatre in Stockholm, where he participated in "Vita rum" (1988),'
        },
        {
          'image': 'assets/actor/pauland.jfif',
          'name': 'Paul Anderson',
          'description':
              'Paul Anderson was born in Gothenburg, Västra Götalands län, Sweden, to Gudrun (Larsson) and Jan Skarsgård. He became a star in his teens through the title role in the TV-series Bombi Bitt och jag (1968). Between the years 1972-88 he was employed at The Royal Dramatic Theatre in Stockholm, where he participated in "Vita rum" (1988),'
        },
      ]
    },
    {
      'image': 'assets/movies/viking.jfif',
      'name': 'Vikings',
      'rate': '4.0',
      'description':
          'Vikings is a historical drama television series created and written by Michael Hirst. A co-production between Canada and Ireland, the series originally aired on the History Channel, premiering on 3 March 2013 and concluding on 30 December 2020, when the second half of the sixth season was released in its entirety on Amazon Prime Video',
      'bgImageURL':
          'https://c4.wallpaperflare.com/wallpaper/195/407/715/vikings-travis-fimmel-vikings-tv-series-ragnar-lodbrok-wallpaper-preview.jpg',
      'genres': ['Series', 'Action', 'Fiction', 'Thriller'],
      'actors': [
        {
          'image': 'assets/actor/kath.jfif',
          'name': 'Katheryn Winnick',
          'description':
          'Katheryn Winnick was born in Gothenburg, Västra Götalands län, Sweden, to Gudrun (Larsson) and Jan Skarsgård. He became a star in his teens through the title role in the TV-series Bombi Bitt och jag (1968). Between the years 1972-88 he was employed at The Royal Dramatic Theatre in Stockholm, where he participated in "Vita rum" (1988),'
        },
        {
          'image': 'assets/actor/pauland.jfif',
          'name': 'Gustaf Skarsgard',
          'description':
          'Gustaf Skarsgard was born in Gothenburg, Västra Götalands län, Sweden, to Gudrun (Larsson) and Jan Skarsgård. He became a star in his teens through the title role in the TV-series Bombi Bitt och jag (1968). Between the years 1972-88 he was employed at The Royal Dramatic Theatre in Stockholm, where he participated in "Vita rum" (1988),'
        },
        {
          'image': 'assets/actor/alex.jfif',
          'name': 'Alexander Ludwig',
          'description':
          'Alexander Ludwig was born in Gothenburg, Västra Götalands län, Sweden, to Gudrun (Larsson) and Jan Skarsgård. He became a star in his teens through the title role in the TV-series Bombi Bitt och jag (1968). Between the years 1972-88 he was employed at The Royal Dramatic Theatre in Stockholm, where he participated in "Vita rum" (1988),'
        },
        {
          'image': 'assets/actor/hirst.jfif',
          'name': 'Georgia Hirst',
          'description':
          'Georgia Hirst was born in Gothenburg, Västra Götalands län, Sweden, to Gudrun (Larsson) and Jan Skarsgård. He became a star in his teens through the title role in the TV-series Bombi Bitt och jag (1968). Between the years 1972-88 he was employed at The Royal Dramatic Theatre in Stockholm, where he participated in "Vita rum" (1988),'
        },

      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        height: 200, // Adjust height as needed
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: movies.length,
          itemBuilder: (context, index) {
            final movie = movies[index];
            return Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Column(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MovieDetailScreen(
                            name: movie['name']!,
                            rate: movie['rate']!,
                            description: movie['description']!,
                            imageURL: movie['bgImageURL']!,
                            genres: List<String>.from(movie['genres']!),
                            actors: List<Map<String, String>>.from(
                                movie['actors']!),
                          ),
                        ),
                      );
                    },
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: SizedBox(
                        width: 100,
                        height: 150,
                        child: Image(
                          image: AssetImage(movie['image']!),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    movie['name']!,
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
