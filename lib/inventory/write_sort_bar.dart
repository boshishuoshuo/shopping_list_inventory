import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WriteSortBar extends StatelessWidget {
  const WriteSortBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColorLight,
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
                child: IntrinsicHeight(
                  child: Row(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.create_rounded,
                            color: Colors.white,
                            size: 18,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              'Write',
                              style: GoogleFonts.notoSans(
                                  fontSize: 14, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      const VerticalDivider(
                        color: Colors.white,
                        thickness: 1,
                        width: 28,
                        indent: 0,
                        endIndent: 0,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.sort,
                            color: Colors.white,
                            size: 18,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              'Sort',
                              style: GoogleFonts.notoSans(
                                  fontSize: 14, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
