import 'package:job_app_ui/models/models.dart';

class GetData {
  final instaLogo =
      "https://freepngimg.com/thumb/logo/77364-instagram-icons-computer-black-logo-white-wine.png";
  final uberLogo =
      "https://uxwing.com/wp-content/themes/uxwing/download/brands-and-social-media/uber-icon.png";
  final tiktokLogo =
      "https://seeklogo.com/images/T/tiktok-share-icon-black-logo-29FFD062A0-seeklogo.com.png";

  List<JobModel> getJobData() {
    List<JobModel> jobs = [
      JobModel(
          title: "Senior UX Designer",
          salary: "LKR 80000 /month",
          companyName: "Instagram",
          logo: uberLogo,
          city: "Colombo",
          time: "27 Days Left"),
      JobModel(
          title: "Senior UI Designer",
          salary: "LKR 90000 /month",
          companyName: "Instagram",
          logo: uberLogo,
          city: "Kurunegala",
          time: "47 Days Left"),
      JobModel(
          title: "Senior Mobile Developer",
          salary: "LKR 60000 /month",
          companyName: "Instagram",
          logo: tiktokLogo,
          city: "Kandy",
          time: "57 Days Left"),
      JobModel(
          title: "Senior Web Developer",
          salary: "LKR 50000 /month",
          companyName: "Instagram",
          logo: uberLogo,
          city: "Jaffna",
          time: "4 Days Left")
    ];
    return jobs;
  }
}
