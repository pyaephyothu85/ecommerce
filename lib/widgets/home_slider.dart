import 'package:flutter/material.dart';

class HomeSlider extends StatelessWidget {
  final Function(int) onChange;
  final int currentSlide;
  const HomeSlider({
    super.key, 
    required this.onChange, 
    required this.currentSlide
    });

  @override
  Widget build(BuildContext context) {
    return  Stack(
                children: [
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: PageView.builder(
                      onPageChanged: onChange,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                      return Container(
                        height: 200,
                        width: double.infinity,
                        decoration:  BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/pic6.jpg', )),
                        )
                      );
                      
                    },),
                  ),
                  Positioned.fill(
                    bottom: 10,
                    child: Align(alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: 
                        List.generate(4, (index) => AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          width: currentSlide == index ? 15 : 8,
                          height: 5,
                          margin: const EdgeInsets.only(right: 3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: currentSlide == index ? Colors.blue : Colors.transparent,
                            border: Border.all(color: Colors.blue),
                          ),
                        ),
                        )
                      
                    ),
                    ),
                    )

                ],
              );
  }
}