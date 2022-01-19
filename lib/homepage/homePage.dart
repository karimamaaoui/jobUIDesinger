import 'package:flutter/material.dart';
import 'package:job_ui_flutter/jobCard/JobCard.dart';
import 'package:job_ui_flutter/jobCard/recent_job_card.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List jobsForYou=[
    // [companyName,jobTitle,logoImagePath,hourlyRate]
  ['Uber','UI Designer', 'https://th.bing.com/th/id/R.722c16aad111ad8f21373d908c35e238?rik=pSJ2BQdediAEUw&riu=http%3a%2f%2ftous-logos.com%2fwp-content%2fuploads%2f2018%2f06%2flogo-Uber.jpg&ehk=nS4CJ%2b9aAgLN4BWaRhCI3DE8ogh0WwUxub8yk33RqMA%3d&risl=&pid=ImgRaw&r=0' , '45'],
  ['Google','Product Dev', 'https://info-hightech.fr/wp-content/uploads/2020/11/google-amp-fast-speed-travel-ss-1920.jpg' , '80'],
  ['Apple','Software Eng', 'https://logos-marques.com/wp-content/uploads/2021/03/logo-Apple-930x620.jpg' , '95'],

  ];
  final List recentJobs=[
    // [companyName,jobTitle,logoImagePath,hourlyRate]
    ['Nike','Web Designer', 'https://i.pinimg.com/originals/86/93/1f/86931f8f1eeeb79c79754351c7c3069e.png' , '45'],
    ['Apple','Software Eng', 'https://logos-marques.com/wp-content/uploads/2021/03/logo-Apple-930x620.jpg' , '95'],
    ['Google','Product Dev', 'https://info-hightech.fr/wp-content/uploads/2020/11/google-amp-fast-speed-travel-ss-1920.jpg' , '80'],

  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column (
        crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            SizedBox(height: 75,),
            //app bar
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child:Container(
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey[200],
                ),
                child:
                Image.network(
                    "https://icon-library.com/images/menu-png-icon/menu-png-icon-2.jpg",
                  color: Colors.grey[800],
                ),
              ),
            ),
            SizedBox(height: 25,),

            //discover a new path
            Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Text('Discover a New Path',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26,

                      ),
                ),

            ),
            SizedBox(height: 25,),

            //search bar

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Container(
                              height: 30,
                              child:
                              Image.network(
                                "https://th.bing.com/th/id/R.602ef64bc31a62f9ebd523d97fc9f369?rik=o2tvMDweo50J2A&pid=ImgRaw&r=0",
                                color: Colors.grey[600],
                              ),

                            ),
                          ),
                          Expanded(
                            child: TextField (
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Search for a job ..",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(12)
                  ) ,
                  child:
                  Image.network(
                    "https://th.bing.com/th/id/OIP.iscOs5I1wkGWENX6irOpiAHaHa?pid=ImgDet&rs=1",
                  ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            //for you -> job cards
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text('For you',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,

                ),
              ),

            ),

            SizedBox(height: 25),

            Container(
              height: 160,
              child: ListView.builder(
                  itemCount: jobsForYou.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    return JobCard(
                      companyName: jobsForYou[index][0],
                      jobTitle: jobsForYou[index][1],
                      logoImagePath:jobsForYou[index][2] ,
                      hourlyRate: jobsForYou[index][3],
                    );
                  }),
            ),
            SizedBox(height: 50),

            // recently add -> job titles
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text('Recently Added',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,

                ),
              ),

            ),
            Expanded(
                child:Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: ListView.builder(
                      itemCount: jobsForYou.length,
                      itemBuilder: (context,index)
                  {
                    return RecentJobCard(
                      companyName: recentJobs[index][0],
                      jobTitle: recentJobs[index][1],
                      logoImagePath:recentJobs[index][2] ,
                      hourlyRate: recentJobs[index][3],

                    );
                  }),
                )
            ),

          ],


      )
      ,
    );
  }
}
