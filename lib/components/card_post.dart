import 'dart:ui';

import 'package:emedical/helpers/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class CardPost extends StatelessWidget {
  const CardPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                  ),
                  Gap(10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Genevieve Ldh",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: montserratFamily,
                        ),
                      ),
                      Text(
                        "10/12/12",
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: montserratFamily,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Gap(5),
              Text(
                "Bonjour la famille.vbnmfghgfdfghgonjour la famille.vbnmfghgfdfghgonjour la famille.vbnmfghgfdfghgonjour la famille.vbnmfghgfdfghgonjour la famille.vbnmfghgfdfghgonjour la famille.vbnmfghgfdfghgonjour la famille.vbnmfghgfdfghgonjour la famille.vbnmfghgfdfghgonjour la famille.vbnmfghgfdfghgonjour la famille.vbnmfghgfdfghgonjour la famille.vbnmfghgfdfghgonjour la famille.vbnmfghgfdfghgonjour la famille.vbnmfghgfdfghgonjour la famille.vbnmfghgfdfghgonjour la famille.vbnmfghgfdfghgonjour la famille.vbnmfghgfdfghgonjour la famille.vbnmfghgfdfghgonjour la famille.vbnmfghgfdfghgonjour la famille.vbnmfghgfdfghgonjour la famille.vbnmfghgfdfghgonjour la famille.vbnmfghgfdfghgonjour la famille.vbnmfghgfdfghgonjour la famille.vbnmfghgfdfghgonjour la famille.vbnmfghgfdfghgonjour la famille.vbnmfghgfdfghgonjour la famille.vbnmfghgfdfghg",
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.thumbsUp,
                          color: Colors.orange,
                        ),
                      ),
                      Text(
                        "255",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.comment,
                          color: Colors.orange,
                        ),
                      ),
                      Text(
                        "76",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.share,
                        color: Colors.orange,
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
