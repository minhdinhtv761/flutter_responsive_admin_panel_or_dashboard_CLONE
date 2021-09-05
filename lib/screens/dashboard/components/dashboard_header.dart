import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          'Dashboard',
          style: Theme.of(context).textTheme.headline6,
        ),
        const Spacer(),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: secondaryColor,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10.0),
              ),
              hintText: 'Search',
              suffixIcon: Padding(
                padding: const EdgeInsets.all(defaultPadding * 0.5),
                child: Material(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(10.0),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10.0),
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(defaultPadding * 0.75),
                      child: SvgPicture.asset(
                        'assets/icons/search.svg',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: defaultPadding),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding,
            vertical: defaultPadding * 0.5,
          ),
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            children: <Widget>[
              Image.asset(
                'assets/images/profile_pic.png',
                height: 38,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding * 0.5,
                ),
                child: Text('Angelina Joli'),
              ),
              const Icon(Icons.keyboard_arrow_down),
            ],
          ),
        )
      ],
    );
  }
}
