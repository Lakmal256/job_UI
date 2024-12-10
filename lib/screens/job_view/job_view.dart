import 'package:flutter/material.dart';
import 'package:job_app_ui/models/models.dart';

class JobViewPage extends StatefulWidget {
  const JobViewPage({super.key, required this.model});

  final JobModel model;

  @override
  State<JobViewPage> createState() => _JobViewPageState();
}

class _JobViewPageState extends State<JobViewPage> {
  final tabButtons = ["Description", "Company", "Reviews"];
  int tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 250,
                width: size.width,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://freerangestock.com/sample/74590/job-interview--illustration-with-copyspace.jpg"))),
                child: Stack(
                  children: [
                    SafeArea(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.black.withOpacity(0.5),
                          child: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ))
                  ],
                ),
              ),
              Container(
                width: size.width,
                height: 150,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.model.title,
                        style: const TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Text(
                            widget.model.salary,
                            style: const TextStyle(color: Colors.grey),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade700,
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              widget.model.type,
                              style: TextStyle(color: Colors.grey.shade300),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(widget.model.logo),
                            radius: 20,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.model.companyName,
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                widget.model.city,
                                style: TextStyle(
                                    color: Colors.grey.shade900,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300),
                              )
                            ],
                          ),
                          const Spacer(),
                          Text(
                            widget.model.time,
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: tabButtons.map((e) {
                    return GestureDetector(
                        onTap: () {
                          setState(() {
                            tabIndex = tabButtons.indexOf(e);
                          });
                        },
                        child: Chip(
                          backgroundColor: tabIndex == tabButtons.indexOf(e)
                              ? Colors.black
                              : Colors.white,
                          label: Text(
                            e,
                            style: TextStyle(
                                color: tabIndex == tabButtons.indexOf(e)
                                    ? Colors.white
                                    : Colors.black),
                          ),
                        ));
                  }).toList()),
              tabIndex == 0
                  ? Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        height: 170,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Text(
                            "Consider applying a flex factor (e.g. using an Expanded widget) to force the children of the RenderFlex to fit within the available space instead of being sized to their natural size.This  considered an error condition because it indicates that there  content that cannot be seen. If the content  legitimately bigger than the available space, consider clipping it with a ClipRect widget before putting it in the flex, or using a scrollable container rather than a Flex, like a ListView."),
                      ),
                    )
                  : tabIndex == 1
                      ? const Text("Company")
                      : const Text("Reviews")
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                width: size.width,
                height: 75,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade900,
                          borderRadius: BorderRadius.circular(15)),
                      child: const Icon(
                        Icons.bookmark,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                        width: size.width * 0.6,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade900,
                            borderRadius: BorderRadius.circular(15)),
                        child: const Center(
                          child: Text(
                            "Apply Now",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
