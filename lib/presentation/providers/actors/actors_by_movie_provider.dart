import 'package:cinemapedia/domain/entities/actor.dart';
import 'package:cinemapedia/presentation/providers/actors/actors_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final actorsByMovieProvider =
    StateNotifierProvider<ActorByMovieNotifier, Map<String, List<Actor>>>(
        (ref) {
  final actors = ref.watch(actorsRepositoryProvider).getActorsByMovie;

  return ActorByMovieNotifier(getActors: actors);
});

typedef GetActorsCallBack = Future<List<Actor>> Function(String movieId);

class ActorByMovieNotifier extends StateNotifier<Map<String, List<Actor>>> {
  final GetActorsCallBack getActors;

  ActorByMovieNotifier({required this.getActors}) : super({});

  Future<void> loadActors(String movieId) async {
    if (state[movieId] != null) return;
    print('realizando petición http');
    final actors = await getActors(movieId);

    state = {...state, movieId: actors};
  }
}
