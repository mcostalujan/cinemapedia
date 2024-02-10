import 'package:cinemapedia/domain/entities/actor.dart';
import 'package:cinemapedia/infraestructure/models/moviedb/credits_response.dart';

class ActorMapper {
  static Actor castToEntity(Cast cast) => Actor(
      id: cast.id,
      name: cast.name,
      profilePath: cast.profilePath != null
          ? 'https://image.tmdb.org/t/p/w500/${cast.profilePath}'
          : 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fuxwing.com%2Fno-profile-picture-icon%2F&psig=AOvVaw3P-PxvA9lZ9t1-dQZnyUYg&ust=1707573600348000&source=images&cd=vfe&opi=89978449&ved=0CBMQjRxqFwoTCNDhksK1noQDFQAAAAAdAAAAABAE',
      character: cast.character);
}
