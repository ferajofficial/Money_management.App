import 'package:money_management/import.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //TExt
  int value = 324;
  //CURRENT INDEX
  //int count = 0;

//INDICATOR HANDLE
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
                leading: Icon(
              Icons.home,
            )),
          ],
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 10),
        child: ListView(
          physics: const ClampingScrollPhysics(),
          children: [
            //CUSTOM APPBAR

            Container(
              margin: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      //print("drawer tapped");
                    },
                    child: SvgPicture.asset(
                      "assets/Vector(drawer).svg",
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.white),
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: AssetImage('assets/naz.png'),
                            fit: BoxFit.cover)),
                  )
                ],
              ),
            ),

            // coustom card

            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, bottom: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Good Morning..",
                    style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  Text(
                    "Mrs. Naz 🥰",
                    style: GoogleFonts.inter(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 199,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(right: 10),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      height: 199,
                      width: 344,
                      margin: const EdgeInsets.only(right: 2),
                      decoration: BoxDecoration(
                        border: Border.all(width: 0, color: Colors.white),
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: AssetImage("assets/mandola.png"),
                            fit: BoxFit.cover),
                        //color: Colors.blue[900],
                      ),
                      child: Stack(
                        children: [
                          // Positioned(
                          //     child: SvgPicture.asset("assets/Ellipse 2.svg")),
                          // Positioned(
                          //     bottom: 0,
                          //     right: 0,
                          //     child: SvgPicture.asset("assets/ellipse2.svg")),
                          Positioned(
                            left: 29,
                            top: 49,
                            child: Text("CARD NUMBER",
                                style: GoogleFonts.inter(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                )),
                          ),
                          Positioned(
                            left: 29,
                            top: 65,
                            child: Text("**** **** **** 1234",
                                style: GoogleFonts.inter(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                )),
                          ),
                          Positioned(
                            right: 20,
                            top: 35,
                            child: Image.asset(
                              "assets/Mastercard.png",
                              height: 27,
                              width: 27,
                            ),
                          ),
                          Positioned(
                              left: 29,
                              bottom: 45,
                              child: Text(
                                "CARD HOLDER NAME",
                                style: GoogleFonts.inter(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              )),
                          Positioned(
                              left: 29,
                              bottom: 21,
                              child: Text(
                                "NAZNEEN SULTANA",
                                style: GoogleFonts.inter(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              )),
                          Positioned(
                              left: 230,
                              bottom: 45,
                              child: Text(
                                "EXPIRE",
                                style: GoogleFonts.inter(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              )),
                          Positioned(
                              left: 230,
                              bottom: 21,
                              child: Text(
                                "02-03-2023",
                                style: GoogleFonts.inter(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              )),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            // OPERATION SECTION

            Padding(
              padding: const EdgeInsets.only(top: 29, left: 16, bottom: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Operations",
                    style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 7,
                          width: 7,
                          //alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.only(right: 3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          height: 7,
                          width: 7,
                          //alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.only(right: 3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                          height: 7,
                          width: 7,
                          // alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.only(right: 3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  )
                  // Row(
                  //   children: [
                  //     map(index,selected){
                  //         return Container(
                  //           alignment: Alignment.centerLeft,
                  //           height: 9,
                  //           width: 9,
                  //           decoration:const BoxDecoration(
                  //             shape: BoxShape.circle,
                  //             color:
                  //             if(count==0){
                  //               Colors.blue[900],
                  //             }
                  //             else
                  //             {
                  //               Colors.blue[200],
                  //             },
                  //           ),

                  //         );
                  //     },
                  //   ],
                  // )
                ],
              ),
            ),
            SizedBox(
              height: 129,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const OperationCard(
                      // operation: ,
                      // isSelected: ,
                      // selectedIcon: ,
                      // unselectedIcon: ,
                      );
                },
              ),
            ),

            //TRANSACTION SECTIONS

            Padding(
              padding: const EdgeInsets.only(
                  top: 29, left: 16, right: 10, bottom: 13),
              child: Text(
                "Transaction History",
                style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.only(left: 16, right: 16),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  height: 57,
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    border: Border.all(width: 0, color: Colors.white),
                    image: const DecorationImage(
                        image: AssetImage("assets/mandola.png"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/apple (3).png"))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 90),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Apple Store",
                                  style: GoogleFonts.inter(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white)),
                              Text(
                                "27-11-2022",
                                style: GoogleFonts.inter(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "-\$ $value",
                              style: GoogleFonts.inter(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

/*CUSTOM CARD OPERATIONS */

class OperationCard extends StatefulWidget {
  // final String operation;
  // final String selectedIcon;
  // final String unselectedIcon;
  // final bool isSelected;

  const OperationCard({
    super.key,
    // required this.isSelected,
    // required this.operation,
    // required this.selectedIcon,
    // required this.unselectedIcon,
  });

  @override
  State<OperationCard> createState() => _OperationCardState();
}

class _OperationCardState extends State<OperationCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Container(
        height: 123,
        width: 123,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 0, color: Colors.white),

          //color: widget.isSelected ? Colors.blue[900] :Colors.white,
          //color: Colors.blue[900]
          image: const DecorationImage(
              image: AssetImage("assets/mandola.png"), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/dollar.svg"),
            Text(
              "Money \nTransfer",
              style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            )
            // Text(
            //   widget.operation,
            //   textAlign:TextAlign.center,
            //   style: GoogleFonts.inter(
            //     fontSize: 14,
            //     fontWeight: FontWeight.w700,
            //     color: widget.isSelected?Colors.white:Colors.blue[900], ),)
          ],
        ),
      ),
    );
  }
}
