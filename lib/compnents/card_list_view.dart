import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WeekUpdateListView extends StatefulWidget {
  const WeekUpdateListView({super.key});

  @override
  State<WeekUpdateListView> createState() => _WeekUpdateListViewState();
}

class _WeekUpdateListViewState extends State<WeekUpdateListView> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SizedBox(
        height: 130,
        width: 90,
        child: Card(
          elevation: 4,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: const Color(0xFF35587A).withAlpha(60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('SUN', style: GoogleFonts.russoOne(color: Colors.white))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/rain.png',
                      height: 50, width: 50)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '16°',
                    style: GoogleFonts.russoOne(color: Colors.white),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      SizedBox(
        height: 130,
        width: 90,
        child: Card(
          elevation: 4,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: const Color(0xFF35587A).withAlpha(60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('MON', style: GoogleFonts.russoOne(color: Colors.white))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/sunny.png',
                      height: 50, width: 50)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '16°',
                    style: GoogleFonts.russoOne(color: Colors.white),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      SizedBox(
        height: 130,
        width: 90,
        child: Card(
          elevation: 4,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: const Color(0xFF35587A).withAlpha(60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('TUE', style: GoogleFonts.russoOne(color: Colors.white))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/rain.png',
                      height: 50, width: 50)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '16°',
                    style: GoogleFonts.russoOne(color: Colors.white),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      SizedBox(
        height: 130,
        width: 90,
        child: Card(
          elevation: 4,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: const Color(0xFF35587A).withAlpha(60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('WED', style: GoogleFonts.russoOne(color: Colors.white))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/thunder.png',
                      height: 50, width: 50)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '16°',
                    style: GoogleFonts.russoOne(color: Colors.white),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      SizedBox(
        height: 130,
        width: 90,
        child: Card(
          elevation: 4,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: const Color(0xFF35587A).withAlpha(60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('THU', style: GoogleFonts.russoOne(color: Colors.white))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/thunder.png',
                      height: 50, width: 50)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '16°',
                    style: GoogleFonts.russoOne(color: Colors.white),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      SizedBox(
        height: 130,
        width: 90,
        child: Card(
          elevation: 4,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: const Color(0xFF35587A).withAlpha(60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('FRI', style: GoogleFonts.russoOne(color: Colors.white))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/sunny.png',
                      height: 50, width: 50)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '16°',
                    style: GoogleFonts.russoOne(color: Colors.white),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      SizedBox(
        height: 130,
        width: 90,
        child: Card(
          elevation: 4,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: const Color(0xFF35587A).withAlpha(60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('SET', style: GoogleFonts.russoOne(color: Colors.white))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/sunny.png',
                      height: 50, width: 50)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '16°',
                    style: GoogleFonts.russoOne(color: Colors.white),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ]);
  }
}
