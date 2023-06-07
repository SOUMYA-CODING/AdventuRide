class OnboardModel {
  final String image;
  final String description;

  OnboardModel({
    required this.image,
    required this.description,
  });
}

List<OnboardModel> dummyOnboardData = [
  OnboardModel(
    image:
        "https://images.unsplash.com/photo-1657527632442-dd0dbb740b21?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
    description: "Explore the beauty of the India!",
  ),
  OnboardModel(
    image:
        "https://images.unsplash.com/photo-1583513645242-25a32d451084?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
    description: "Enjoy your travel experience",
  ),
  OnboardModel(
    image:
        "https://images.unsplash.com/photo-1609232531309-25676b9b7080?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=435&q=80",
    description: "Let's make your dream travel",
  ),
];
