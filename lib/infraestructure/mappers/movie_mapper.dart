import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infraestructure/models/moviedb/movie_details.dart';
import 'package:cinemapedia/infraestructure/models/moviedb/movie_moviedb.dart';

class MovieMapper {
  static Movie movieDBToEntity(MovieMovieDB movieDB) => Movie(
      adult: movieDB.adult,
      backdropPath: (movieDB.backdropPath != '')
          ? 'https://image.tmdb.org/t/p/w500/${movieDB.backdropPath}'
          : 'https://ih1.redbubble.net/image.4905811447.8675/flat,750x,075,f-pad,750x1000,f8f8f8.jpg',
      genreIds: movieDB.genreIds.map((e) => e.toString()).toList(),
      id: movieDB.id,
      originalLanguage: movieDB.originalLanguage,
      originalTitle: movieDB.originalTitle,
      overview: movieDB.overview,
      popularity: movieDB.popularity,
      posterPath: (movieDB.backdropPath != '')
          ? 'https://image.tmdb.org/t/p/w500/${movieDB.posterPath}'
          : 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.redbubble.com%2Fi%2Fposter%2FIMAGE-NOT-FOUND-by-ZexyAmbassador%2F142878675.LVTDI&psig=AOvVaw1dwuV2oZD6PqrNu-wBsJ_C&ust=1707604231050000&source=images&cd=vfe&opi=89978449&ved=0CBMQjRxqFwoTCIikhdWnn4QDFQAAAAAdAAAAABAE',
      releaseDate: movieDB.releaseDate != null ? movieDB.releaseDate! : DateTime.now(),
      title: movieDB.title,
      video: movieDB.video,
      voteAverage: movieDB.voteAverage,
      voteCount: movieDB.voteCount);

  static Movie movieDetailsToEntity(MovieDetails movieDB) => Movie(
      adult: movieDB.adult,
      backdropPath: (movieDB.backdropPath != '')
          ? 'https://image.tmdb.org/t/p/w500/${movieDB.backdropPath}'
          : 'https://ih1.redbubble.net/image.4905811447.8675/flat,750x,075,f-pad,750x1000,f8f8f8.jpg',
      genreIds: movieDB.genres.map((e) => e.name).toList(),
      id: movieDB.id,
      originalLanguage: movieDB.originalLanguage,
      originalTitle: movieDB.originalTitle,
      overview: movieDB.overview,
      popularity: movieDB.popularity,
      posterPath: (movieDB.backdropPath != '')
          ? 'https://image.tmdb.org/t/p/w500/${movieDB.posterPath}'
          : 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.redbubble.com%2Fi%2Fposter%2FIMAGE-NOT-FOUND-by-ZexyAmbassador%2F142878675.LVTDI&psig=AOvVaw1dwuV2oZD6PqrNu-wBsJ_C&ust=1707604231050000&source=images&cd=vfe&opi=89978449&ved=0CBMQjRxqFwoTCIikhdWnn4QDFQAAAAAdAAAAABAE',
      releaseDate: movieDB.releaseDate,
      title: movieDB.title,
      video: movieDB.video,
      voteAverage: movieDB.voteAverage,
      voteCount: movieDB.voteCount);
}
