import 'package:graphql/client.dart';




class PokeGraphQLClient {
  PokeGraphQLClient()



   : client = GraphQLClient(link: HttpLink('https://graphql.pokeapi.co/v1beta2'), cache: GraphQLCache(),);

  final GraphQLClient client;

  static const timepout = Duration(seconds: 10);
}