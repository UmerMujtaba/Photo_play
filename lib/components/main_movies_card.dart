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
    },
    {
      'image': 'assets/movies/chernobyl.jfif',
      'name': 'Chernobyl',
      'rate': '4.8',
      'description':
          'Chernobyl is a 2019 historical drama television miniseries that revolves around the Chernobyl disaster of 1986 and the cleanup efforts that followed. The series was created and written by Craig Mazin and directed by Johan Renck.',
      'bgImageURL': 'https://images6.alphacoders.com/116/1162672.jpg',
      'genres': ['Series', 'Historical Drama', 'Thriller', 'Disaster'],

    },
    {
      'image': 'assets/movies/dark.jfif',
      'name': 'Dark',
      'rate': '4.4',
      'description':
          'Dark is a German streaming television series co-created by the couple Baran bo Odar and Jantje Friese.[5][6][7] It ran for three seasons from 2017 to 2020. The story follows the dysfunctional characters from the fictional town of Winden in Germany, as they pursue the truth in the aftermath of a child\'s disappearance.',
      'bgImageURL': 'https://wallpaperaccess.com/full/1510470.jpg',
      'genres': ['Series', 'Fiction', 'Thriller', 'Drama'],
    },
    {
      'image': 'assets/movies/friend.jfif',
      'name': 'Friends',
      'rate': '4.0',
      'description':
          'Friends is an American television sitcom created by David Crane and Marta Kauffman.The show ranked within the top ten of the final television season ratings; it ultimately reached the number-one spot in its eighth season. ',
      'bgImageURL':
      'https://wallpapercat.com/w/middle-retina/8/1/2/116753-3840x2160-desktop-4k-friends-tv-series-wallpaper-image.jpg',
      'genres': ['Series', 'Funny', 'Comedy', 'Family'],},
    {
      'image': 'assets/movies/ghost.jfif',
      'name': 'Ghost Rider',
      'rate': '3.8',
      'description':
          'Ghost Rider is the name of multiple superheroes or antiheroes appearing in American comic books published by Marvel Comics. Marvel had previously used the name for a Western character whose name was later changed to Phantom Rider.',
      'bgImageURL': 'https://wallpapercave.com/wp/wp2711671.jpg',
      'genres': ['Movie', 'Action', 'Thriller', 'Drama'],
    },
    {
      'image': 'assets/movies/grey.jfif',
      'name': 'Fifty Shades of Grey',
      'rate': '4.7',
      'description':
          'Fifty Shades of Grey is a 2015 American erotic romantic drama film directed by Sam Taylor-Johnson from a screenplay by Kelly Marcel.  Starring Dakota Johnson, Jamie Dornan, Jennifer Ehle and Marcia Gay Harden, the film\'s story follows Anastasia "Ana" Steele (Johnson), a college graduate, who begins a sadomasochistic relationship with young business magnate Christian Grey (Dornan).',
      'bgImageURL': 'https://wallpapercave.com/dwp1x/wp1965319.jpg',
      'genres': ['Movie', 'Romantic', 'Thriller', 'Drama'],
    },
    {
      'image': 'assets/movies/knight.jfif',
      'name': 'Knight & Day',
      'rate': '3.7',
      'description':
          'Knight and Day is a 2010 American satirical action comedy film directed by James Mangold and starring Tom Cruise and Cameron Diaz. The film was the second on-screen collaboration of Cruise and Diaz after Vanilla Sky.',
      'bgImageURL':
          'https://c4.wallpaperflare.com/wallpaper/974/419/709/movie-knight-and-day-cameron-diaz-tom-cruise-wallpaper-preview.jpg',
      'genres': ['Movie', 'Action', 'Adventure', 'Funny'],},
    {
      'image': 'assets/movies/mission.jfif',
      'name': 'Mission Impossible',
      'rate': '4.7',
      'description':
          'Mission: Impossible is an American multimedia franchise based on a fictional secret espionage agency known as the Impossible Missions Force (IMF). The 1966 TV series ran for seven seasons and was revived in 1988 for two seasons.',
      'bgImageURL':
          'https://c4.wallpaperflare.com/wallpaper/836/347/764/mission-impossible-mission-impossible-ghost-protocol-tom-cruise-wallpaper-preview.jpg',
      'genres': ['Movie', 'Action', 'Thriller', 'Adventure'],
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
    },
    {
      'image': 'assets/movies/viking.jfif',
      'name': 'Vikings',
      'rate': '4.0',
      'description':
          'Vikings is a historical drama television series created and written by Michael Hirst. A co-production between Canada and Ireland, the series originally aired on the History Channel, premiering on 3 March 2013 and concluding on 30 December 2020, when the second half of the sixth season was released in its entirety on Amazon Prime Video',
      'bgImageURL':
          'https://c4.wallpaperflare.com/wallpaper/195/407/715/vikings-travis-fimmel-vikings-tv-series-ragnar-lodbrok-wallpaper-preview.jpg',
      'genres': ['Series', 'Action', 'Fiction', 'Thriller'],},
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
