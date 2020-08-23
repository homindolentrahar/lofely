import 'package:linkedin_clone/model/chat_model.dart';
import 'package:linkedin_clone/model/job_model.dart';
import 'package:linkedin_clone/model/person_model.dart';
import 'package:linkedin_clone/model/post_model.dart';

final List<Post> posts = [
  Post(
    postId: "post_1",
    username: "Google",
    avatar: "assets/images/avatar/google.png",
    followers: 18345151,
    postTime: "2w",
    caption:
        "New from the Google AI team: Learn all about Live HDR+, a #MachineLearning approach to HDR+ on #Pixel4 and #Pixel4a phones that makes HDR imaging more predictable",
    image: "assets/images/posts/google_posts.jpg",
    likesCount: 439,
    commentsCount: 23,
    sharesCount: 15,
  ),
  Post(
    postId: "post_2",
    username: "Gojek",
    avatar: "assets/images/avatar/gojek.jpg",
    followers: 523368,
    postTime: "4d",
    caption:
        '''We’re thrilled to learn that more than 120,000 MSMEs have joined our ecosystem within the last four months to go digital and be able to sustain their business amidst the pandemic. This is a testament of the Gojek ecosystem being a trusted growth partner for MSMEs (Micro, Small & Medium Enterprises).
        
In line with Indonesia’s National MSMEs Day, we’re further accelerating our efforts to empower our MSME partners. Supported by the Ministry of Finance and the Ministry of Cooperatives and Small and Medium Enterprises, we’re launching #MelajuBersamaGojek, an end-to-end solution to help MSME merchant partners to manage and further grow their businesses.
  
Through #MelajuBersamaGojek, Gojek MSMEs partner will gain advantages such as easy discovery access by the Gojek consumers and receive reliable support on the marketing, order processing, payment, order delivery, and business administration.
  
We truly believe that supporting and growing together with our MSME partners, who are the backbone of Indonesia’s economy, shall generate a stronger economic resilience. And we will not stop here because #ThereIsAlwaysAWay to grow together.''',
    image: "assets/images/posts/gojek_posts.jpg",
    likesCount: 1086,
    commentsCount: 5,
    sharesCount: 0,
  ),
  Post(
    postId: "post_3",
    username: "Lazada",
    avatar: "assets/images/avatar/lazada.png",
    followers: 465405,
    postTime: "4d",
    caption:
        '''It’s Mother’s Day in Thailand! Lazada Thailand celebrated for our working moms with spa vouchers and curated personalised mug to express our appreciation. Thank you, #Supermom for all you do - at home and at work. Happy Mother’s Day!

Motherhood is greatest thing, and the hardest thing. #lifeinlazada #LazadaTH #thankyou #workhappilyliveseriously''',
    image: "assets/images/posts/lazada_posts.jpg",
    likesCount: 117,
    commentsCount: 0,
    sharesCount: 0,
  ),
  Post(
    postId: "post_4",
    username: "Tokopedia",
    avatar: "assets/images/avatar/tokopedia.jpg",
    followers: 513018,
    postTime: "6h",
    caption:
        '''In conjunction with Indonesia's 75th Independence Day, Tokopedia is also celebrating our 11th year anniversary! Join our live anniversary celebration Tokopedia PlayFest today from 11.00 - 21.00 WIB through Tokopedia PLAY.

From a leadership talk show with Indonesian Minister of Finance Sri Mulyani Indrawati and Indonesian Minister of Foreign Affairs Retno L. P. Marsudi to inspirational talk shows with our merchants, tech experts, and also our very own Nakama, we would like to share the joy with everyone across Indonesia.

Additionally, we will also be holding a charity concert in partnership with Yayasan Benih Baik Indonesia with special performances from a series of renowned local artists, where we will be donating LIVE to help local entrepreneurs affected by the pandemic.

Tune in TODAY through https://lnkd.in/gQUhbnM, and check out the details below!

#InsideTokopedia #RayakanSemangatBaru''',
    image: "assets/images/posts/tokopedia_posts.jpg",
    likesCount: 131,
    commentsCount: 1,
    sharesCount: 0,
  ),
];

final List<Person> persons = [
  Person(
    personId: "person_1",
    name: "Zhang Purnama",
    avatar: "assets/images/avatar/zhang.jpg",
    occupation: "CEO",
    company: "Samsung Co. Ltd.",
    mutual: 3,
  ),
  Person(
    personId: "person_2",
    name: "Lord Gaben",
    avatar: "assets/images/avatar/lord_gaben.jpg",
    occupation: "CEO",
    company: "Valve",
    mutual: 0,
  ),
  Person(
    personId: "person_3",
    name: "Samuel J.",
    avatar: "assets/images/avatar/random_1.jpg",
    occupation: "Graphic Designer",
    company: "Brushco",
    mutual: 7,
  ),
  Person(
    personId: "person_4",
    name: "Brandon Foerstel",
    avatar: "assets/images/avatar/random_2.jpg",
    occupation: "Full-stack Developer",
    company: "Waterfox",
    mutual: 1,
  ),
  Person(
    personId: "person_5",
    name: "Juan D.",
    avatar: "assets/images/avatar/random_3.jpg",
    occupation: "Level Designer",
    company: "Dolanco",
    mutual: 2,
  ),
  Person(
    personId: "person_6",
    name: "Mike Sullivan",
    avatar: "assets/images/avatar/random_4.jpg",
    occupation: "Accountant",
    company: "Artha",
    mutual: 0,
  ),
  Person(
    personId: "person_7",
    name: "Tom Sanderson",
    avatar: "assets/images/avatar/random_5.jpg",
    occupation: "Data Analyst",
    company: "Minang Sakato",
    mutual: 5,
  ),
  Person(
    personId: "person_8",
    name: "Katya Milanova",
    avatar: "assets/images/avatar/random_6.jpg",
    occupation: "iOS Developer",
    company: "Brojek",
    mutual: 0,
  ),
];

final List<Chat> chats = [
  Chat(
    chatId: "chat_1",
    avatar: "assets/images/avatar/random_3.jpg",
    username: "Juan D.",
    content: "Did not see that coming.Thanks !",
    time: "03:21 PM",
    isRead: true,
    userOnline: true,
  ),
  Chat(
    chatId: "chat_2",
    avatar: "assets/images/avatar/random_6.jpg",
    username: "Katya Milanova",
    content: "Really ?!. Wow that's great !",
    time: "11:30 AM",
    isRead: false,
    userOnline: false,
  ),
  Chat(
    chatId: "chat_3",
    avatar: "assets/images/avatar/random_4.jpg",
    username: "Mike Sullivan",
    content: "I\'m not so sure about that.But you could try it",
    time: "09:30 PM",
    isRead: true,
    userOnline: false,
  ),
  Chat(
    chatId: "chat_4",
    avatar: "assets/images/avatar/random_5.jpg",
    username: "Tom Sanderson",
    content: "Ok mate,see you later !",
    time: "19:30 PM",
    isRead: false,
    userOnline: true,
  ),
  Chat(
    chatId: "chat_5",
    avatar: "assets/images/avatar/random_2.jpg",
    username: "Brandon Foerstel",
    content: "Well, I\'ll give it a shot",
    time: "09:45 AM",
    isRead: false,
    userOnline: false,
  ),
];

final List<Job> recommendedJobs = [
  Job(
    jobId: "jobs_1",
    position: "UX Researcher",
    company: "Gojek",
    avatar: "assets/images/avatar/gojek.jpg",
    location: "Jakarta, ID",
  ),
  Job(
    jobId: "jobs_2",
    position: "Senior Android Developer",
    company: "Google",
    avatar: "assets/images/avatar/google.png",
    location: "Jakarta, ID",
  ),
  Job(
    jobId: "jobs_3",
    position: "Flutter Developer",
    company: "Tokopedia",
    avatar: "assets/images/avatar/tokopedia.jpg",
    location: "Jakarta, ID",
  ),
  Job(
    jobId: "jobs_4",
    position: "Junior Android Developer",
    company: "Lazada",
    avatar: "assets/images/avatar/lazada.png",
    location: "Surabaya, ID",
  ),
  Job(
    jobId: "jobs_5",
    position: "UI Designer",
    company: "Gojek",
    avatar: "assets/images/avatar/gojek.jpg",
    location: "Bandung, ID",
  ),
];

final List<Job> jobs = [
  Job(
      jobId: "jobs_1",
      position: "Data Analyst",
      company: "Gojek",
      avatar: "assets/images/avatar/gojek.jpg",
      location: "Jakarta, ID",
      jobPosted: "2d"),
  Job(
      jobId: "jobs_2",
      position: "UX Researcher",
      company: "Google",
      avatar: "assets/images/avatar/google.png",
      location: "Surabaya, ID",
      jobPosted: "4d"),
  Job(
      jobId: "jobs_3",
      position: "Senior Backend Developer",
      company: "Tokopedia",
      avatar: "assets/images/avatar/tokopedia.jpg",
      location: "Bandung, ID",
      jobPosted: "4h"),
  Job(
      jobId: "jobs_4",
      position: "Server Administrator",
      company: "Gojek",
      avatar: "assets/images/avatar/gojek.jpg",
      location: "Surabaya, ID",
      jobPosted: "14d"),
  Job(
      jobId: "jobs_5",
      position: "Cloud Engineer",
      company: "Google",
      avatar: "assets/images/avatar/google.png",
      location: "Jakarta, ID",
      jobPosted: "13h"),
  Job(
      jobId: "jobs_6",
      position: "Junior Android Developer",
      company: "Lazada",
      avatar: "assets/images/avatar/lazada.png",
      location: "Jakarta, ID",
      jobPosted: "24d"),
];
