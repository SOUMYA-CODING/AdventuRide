import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:frontend/core/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class DestinationDetails extends StatefulWidget {
  const DestinationDetails({super.key});

  @override
  State<DestinationDetails> createState() => _DestinationDetailsState();
}

class _DestinationDetailsState extends State<DestinationDetails>
    with TickerProviderStateMixin {
  int selectedContainerIndex = 1;

  final List<String> imageUrls = [
    'https://images.unsplash.com/photo-1612127342760-222e72aca87b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1169&q=80',
    'https://images.unsplash.com/photo-1593537898540-b8b821014c8e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1888&q=80',
    'https://images.unsplash.com/photo-1566559532224-6d65e9fc0f37?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1331&q=80',
    'https://images.unsplash.com/photo-1596402184320-417e7178b2cd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
  ];

  void selectContainer(int index) {
    setState(() {
      selectedContainerIndex = index;
    });
  }

  final String destinationName = "Borobudur Temple";

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  String historyDescription =
      "Borobudur Temple is a magnificent Buddhist monument located in Central Java, Indonesia. It is considered one of the most impressive archaeological sites in Southeast Asia and is recognized as a UNESCO World Heritage Site. Here is a brief history of Borobudur Temple: Construction: Borobudur was built during the Sailendra dynasty, which ruled the region of Java from the 8th to the 10th century. The exact construction date of Borobudur is uncertain, but it is believed to have been built in the 9th century, around the year 800-825 AD. The temple was constructed under the patronage of the Sailendra kings to honor the Mahayana Buddhist tradition. Design and Purpose: Borobudur is an enormous structure built in the form of a massive stepped pyramid. It consists of nine stacked platforms, with a central dome at the top. The temple is adorned with intricate stone carvings that depict Buddhist teachings, narratives, and images of deities. The entire structure is built without the use of any mortar, relying solely on interlocking stones. The purpose of Borobudur was to serve as a place of worship, pilgrimage, and a center for Buddhist education. The temple's design reflects the Buddhist cosmology, with the lower levels representing the earthly realm and the higher levels representing the spiritual realm. Pilgrims would ascend through the levels, circumambulating the monument in a clockwise direction while contemplating the teachings of Buddhism. Abandonment and Rediscovery: Borobudur was likely abandoned sometime in the 14th century due to the decline of the Sailendra dynasty and the shift of political power in the region. The temple was gradually covered by volcanic ash, foliage, and overgrown vegetation, effectively hiding it from the outside world. It wasn't until the early 19th century that the British governor of Java, Sir Thomas Stamford Raffles, learned of the temple's existence from local villagers. In 1814, Raffles initiated the first major restoration efforts, which involved clearing the vegetation and uncovering the hidden monument. Further restoration work was carried out by the Dutch colonial government in the early 20th century, and the temple was fully restored to its former glory. Recognition and Preservation: Borobudur gained international recognition as an exceptional cultural and historical site. In 1991, it was designated as a UNESCO World Heritage Site, acknowledging its outstanding universal value. The Indonesian government, along with international organizations, continues to make efforts to preserve and protect the temple complex, including ongoing restoration work and the establishment of visitor management systems. Today, Borobudur Temple remains an iconic symbol of Indonesia's rich cultural heritage and draws visitors from all over the world. It stands as a testament to the skill and craftsmanship of the ancient builders and serves as a place of pilgrimage and contemplation for Buddhists and tourists alike.";

  @override
  Widget build(BuildContext context) {
    List<String> words = destinationName.split(" ");
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                double screenHeight = constraints.maxHeight;
                double targetHeight = screenHeight * 0.8;

                return Container(
                  width: double.infinity,
                  height: targetHeight,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(imageUrls[selectedContainerIndex]),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    CustomColor.backgroundBg,
                    CustomColor.backgroundBg.withOpacity(0.3),
                  ],
                  stops: const [0.3, 0.9],
                  tileMode: TileMode.repeated,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      FluentSystemIcons.ic_fluent_arrow_left_filled,
                      color: CustomColor.primaryColor,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      FluentSystemIcons.ic_fluent_bookmark_filled,
                      color: CustomColor.secondaryColor,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 100,
              right: 0,
              left: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 100,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    FluentSystemIcons.ic_fluent_star_filled,
                                    color: CustomColor.secondaryColor,
                                  ),
                                  Text(
                                    '4.5',
                                    style: GoogleFonts.poppins(
                                      color: Colors.white60,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: words
                                  .map(
                                    (e) => Text(
                                      e,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                  .toList(),
                            ),
                            Text(
                              'Magelang, Indonesia',
                              style: GoogleFonts.poppins(
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: List.generate(
                            imageUrls.length,
                            (index) => GestureDetector(
                              onTap: () => selectContainer(index),
                              child: Container(
                                width: 70,
                                height: 70,
                                margin: const EdgeInsets.only(top: 10),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(imageUrls[index]),
                                    fit: BoxFit.cover,
                                    opacity: 0.7,
                                  ),
                                  borderRadius: BorderRadius.circular(30),
                                  border: selectedContainerIndex == index
                                      ? Border.all(
                                          width: 3,
                                          color: CustomColor
                                              .secondaryColor, // Replace with your desired color
                                        )
                                      : null,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TabBar(
                      indicator: const BoxDecoration(color: Colors.transparent),
                      isScrollable: true,
                      labelColor: CustomColor.primaryColor,
                      unselectedLabelColor: Colors.grey,
                      controller: _tabController,
                      labelPadding: const EdgeInsets.only(left: 0, right: 20),
                      tabs: const [
                        Tab(
                          text: "History",
                        ),
                        Tab(
                          text: "Discovery",
                        ),
                        Tab(
                          text: "Location",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 150,
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          SingleChildScrollView(
                              child: Text(historyDescription)),
                          Text("2"),
                          Text("3"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                right: 30,
                bottom: 20,
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Rs. 120",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      "/ Day",
                      style: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontSize: 11,
                      ),
                    ),
                    const Spacer(),
                    ElevatedButton(
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                            horizontal: 35,
                            vertical: 20,
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                          CustomColor.secondaryColor,
                        ),
                        elevation: MaterialStateProperty.all(0),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Book Now",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
