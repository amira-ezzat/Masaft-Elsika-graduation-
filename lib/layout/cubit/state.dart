abstract class sal7lyState {}

class InitialState extends sal7lyState {}

class BottomNavState extends sal7lyState {}

class OfferLoadingState extends sal7lyState {}

class GetOfferSuccessState extends sal7lyState {}

class GetOfferErorrState extends sal7lyState
{
  late final String erorr;
  GetOfferErorrState(this.erorr);
}

// class NewsSportsLoadingState extends sal7lyState {}
//
// class NewsGetSportsSuccessState extends sal7lyState {}
//
// class NewsGetSportsErorrState extends sal7lyState
// {
//   late final String erorr;
//   NewsGetSportsErorrState(this.erorr);
// }
//
// class NewsScienceLoadingState extends sal7lyState {}
//
// class NewsGetScienceSuccessState extends sal7lyState {}
//
// class NewsGetScienceErorrState extends sal7lyState
// {
//   late final String erorr;
//   NewsGetScienceErorrState(this.erorr);
// }

//class NewsSearchLoadingState extends sal7lyState {}

//class NewsGetSearchSuccessState extends sal7lyState {}

// class NewsGetSearchErorrState extends sal7lyState
// {
//   late final String erorr;
//   NewsGetSearchErorrState(this.erorr);
// }