import 'package:flutter/material.dart';

class FourthScreen extends StatefulWidget {
  const FourthScreen({super.key});

  @override
  State<FourthScreen> createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Center(
          child: Wrap(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            height: 100,
            width: 100,
            child: FadeInImage.assetNetwork(
              placeholder: "assets/images/placeholder.JPG",
              image:
                  "https://images.unsplash.com/photo-1703798278589-245f6e47cf8b?q=80&w=3027&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              fit: BoxFit.fill,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 5),
            height: 100,
            width: 100,
            child: FadeInImage.assetNetwork(
              placeholder: "assets/images/placeholder.JPG",
              image:
                  "https://images.unsplash.com/photo-1703798278589-245f6e47cf8b?q=80&w=3027&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              fit: BoxFit.fill,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 5),
            height: 100,
            width: 100,
            child: FadeInImage.assetNetwork(
              placeholder: "assets/images/placeholder.JPG",
              image:
                  "https://images.unsplash.com/photo-1703798278589-245f6e47cf8b?q=80&w=3027&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              fit: BoxFit.fill,
            ),
          ),
            Container(
            margin: const EdgeInsets.only(right: 5),
            height: 100,
            width: 100,
            child: FadeInImage.assetNetwork(
              placeholder: "assets/images/placeholder.JPG",
              image:
                  "https://images.unsplash.com/photo-1703798278589-245f6e47cf8b?q=80&w=3027&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              fit: BoxFit.fill,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 5),
            height: 100,
            width: 100,
            child: FadeInImage.assetNetwork(
              placeholder: "assets/images/placeholder.JPG",
              image:
                  "https://images.unsplash.com/photo-1703798278589-245f6e47cf8b?q=80&w=3027&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              fit: BoxFit.fill,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 5),
            height: 100,
            width: 100,
            child: FadeInImage.assetNetwork(
              placeholder: "assets/images/placeholder.JPG",
              image:
                  "https://images.unsplash.com/photo-1703798278589-245f6e47cf8b?q=80&w=3027&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              fit: BoxFit.fill,
            ),
          ),
        ],
      )),
    );
  }
}
