import 'package:flutter/material.dart';
import 'package:mid/models/film.dart';
import 'package:mid/widgets/home_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              HomeCard(
                film: Film(
                  title: "Inception",
                  posterUrl: "assets/inception.jpg",
                  releaseYear: 2010,
                  description:
                      "Seorang pencuri yang ahli menyusup ke mimpi diberi tugas menanamkan ide dalam pikiran target.",
                ),
              ),
              HomeCard(
                film: Film(
                  title: "Interstellar",
                  posterUrl: "assets/interstellar.jpg",
                  releaseYear: 2014,
                  description:
                      "Penjelajah luar angkasa mencari planet baru demi kelangsungan hidup umat manusia.",
                ),
              ),
              HomeCard(
                film: Film(
                  title: "The Dark Knight",
                  posterUrl: "assets/dark_knight.jpg",
                  releaseYear: 2008,
                  description:
                      "Batman menghadapi Joker yang menciptakan kekacauan di Gotham.",
                ),
              ),
              HomeCard(
                film: Film(
                  title: "Avatar",
                  posterUrl: "assets/avatar.jpg",
                  releaseYear: 2009,
                  description:
                      "Mantan marinir bergabung dengan suku Na'vi dan harus menentukan kesetiaannya.",
                ),
              ),
              HomeCard(
                film: Film(
                  title: "Avengers: Endgame",
                  posterUrl: "assets/endgame.jpg",
                  releaseYear: 2019,
                  description:
                      "Para Avengers mencoba membalikkan kehancuran yang dibuat Thanos.",
                ),
              ),
              HomeCard(
                film: Film(
                  title: "Parasite",
                  posterUrl: "assets/parasite.jpg",
                  releaseYear: 2019,
                  description:
                      "Keluarga miskin menyusup ke kehidupan keluarga kaya dengan konsekuensi tak terduga.",
                ),
              ),
              HomeCard(
                film: Film(
                  title: "Joker",
                  posterUrl: "assets/joker.jpg",
                  releaseYear: 2019,
                  description:
                      "Kisah kelam komedian gagal yang akhirnya berubah menjadi penjahat berbahaya.",
                ),
              ),
              HomeCard(
                film: Film(
                  title: "Spider-Man: No Way Home",
                  posterUrl: "assets/spiderman.jpg",
                  releaseYear: 2021,
                  description:
                      "Peter Parker membuka multiverse setelah meminta bantuan Doctor Strange.",
                ),
              ),
              HomeCard(
                film: Film(
                  title: "Frozen",
                  posterUrl: "assets/frozen.jpg",
                  releaseYear: 2013,
                  description:
                      "Elsa membekukan kerajaan tanpa sengaja dan Anna berusaha menyelamatkannya.",
                ),
              ),
              HomeCard(
                film: Film(
                  title: "The Matrix",
                  posterUrl: "assets/matrix.jpg",
                  releaseYear: 1999,
                  description:
                      "Seorang hacker menyadari bahwa dunia hanyalah simulasi buatan mesin.",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
