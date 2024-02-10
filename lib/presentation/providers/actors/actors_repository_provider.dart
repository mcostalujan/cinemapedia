import 'package:cinemapedia/infraestructure/datasources/actor_moviedb_datasource.dart';
import 'package:cinemapedia/infraestructure/respositories/actor_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Este repositorio es inmutable
final actorsRepositoryProvider = Provider((ref) {
  // return MovieRepositoryImpl(datasource);
  return ActorRepositoryImpl(ActorMovieDBDatasource());

});
