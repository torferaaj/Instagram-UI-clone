
class PostModel {
  String userProfile;
  String postedBy;
  String postImage;
  String sponsoredOrLocation;
  String likes;
  String description1;
  String description2;
  String tag;
  List<String> hashTag;
  int noOfComments;

  PostModel({
    required this.userProfile,
    required this.postedBy,
    required this.postImage,
    required this.sponsoredOrLocation,
    required this.likes,
    required this.description1,
    required this.description2,
    required this.tag,
    required this.hashTag,
    required this.noOfComments,
});
}

List<PostModel> postList = [
  PostModel(
      userProfile: "",
      postedBy: "",
      sponsoredOrLocation: "",
      postImage: "",
      tag: "",
      likes: "1,024 Likes",
      description1: "",
      description2: "",
      hashTag: ["", ""],
      noOfComments: 241,
  ),
];