import 'package:flutter/material.dart';
class RecentJobCard extends StatelessWidget {
  final String companyName;
  final String jobTitle;
  final String logoImagePath;
  final String hourlyRate;

  RecentJobCard ({
    required this.companyName,
    required this.jobTitle,
    required this.logoImagePath,
    required this.hourlyRate});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.white)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row( children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  height: 40,
                  child: Image.network(logoImagePath),
                  padding: EdgeInsets.all(12),
                  color: Colors.grey[300],
                ),
              ),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(jobTitle,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                      )),
                  SizedBox(height: 4,),

                  Text(companyName,
                    style:TextStyle(color: Colors.grey[600]),
                  ),
                ],
              ),
            ]
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Container(
                padding: EdgeInsets.all(5),

                color: Colors.green[300],
                child:
                Text('\$'+ hourlyRate.toString() + '/hr',
                    
              ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
