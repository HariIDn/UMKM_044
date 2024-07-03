import 'package:flutter/material.dart';

class TabWidget extends StatelessWidget {
  const TabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                height: 750,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment(0, 0),
                      child: TabBar(
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.grey,
                        labelStyle:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0,
                                ),
                        unselectedLabelStyle: TextStyle(),
                        indicatorColor: Theme.of(context).primaryColor,
                        padding: EdgeInsets.all(4),
                        tabs: [
                          Tab(
                            text: 'Ulasan',
                          ),
                          Tab(
                            text: 'Menu',
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ListView(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          ListTile(
                                            leading: Icon(
                                              Icons.account_circle_rounded,
                                            ),
                                            title: Text(
                                              'Customer 1',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleLarge!
                                                  .copyWith(
                                                    fontFamily: 'Outfit',
                                                    letterSpacing: 0,
                                                  ),
                                            ),
                                            subtitle: Text(
                                              'Pendapat tentang UMKM ini',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelMedium!
                                                  .copyWith(
                                                    fontFamily: 'Readex Pro',
                                                    letterSpacing: 0,
                                                  ),
                                            ),
                                            dense: false,
                                          ),
                                          Divider(
                                            thickness: 1,
                                          ),
                                          ListTile(
                                            leading: Icon(
                                              Icons.person_sharp,
                                            ),
                                            title: Text(
                                              'Customer 2',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleLarge!
                                                  .copyWith(
                                                    fontFamily: 'Outfit',
                                                    letterSpacing: 0,
                                                  ),
                                            ),
                                            subtitle: Text(
                                              'Pendapat tentang UMKM ini',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelMedium!
                                                  .copyWith(
                                                    fontFamily: 'Readex Pro',
                                                    letterSpacing: 0,
                                                  ),
                                            ),
                                            dense: false,
                                          ),
                                          Divider(
                                            thickness: 1,
                                          ),
                                          ListTile(
                                            leading: Icon(
                                              Icons.person_sharp,
                                            ),
                                            title: Text(
                                              'Customer 3',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleLarge!
                                                  .copyWith(
                                                    fontFamily: 'Outfit',
                                                    letterSpacing: 0,
                                                  ),
                                            ),
                                            subtitle: Text(
                                              'Pendapat tentang UMKM ini',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelMedium!
                                                  .copyWith(
                                                    fontFamily: 'Readex Pro',
                                                    letterSpacing: 0,
                                                  ),
                                            ),
                                            dense: false,
                                          ),
                                          Divider(
                                            thickness: 1,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListView(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                children: [
                                  ListTile(
                                    title: Text(
                                      'Nama Makanan 1',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge!
                                          .copyWith(
                                            fontFamily: 'Outfit',
                                            letterSpacing: 0,
                                          ),
                                    ),
                                    subtitle: Text(
                                      'Deskripsi makanan',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .copyWith(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0,
                                          ),
                                    ),
                                    dense: false,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                  ),
                                  ListTile(
                                    title: Text(
                                      'Nama Makanan 2',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge!
                                          .copyWith(
                                            fontFamily: 'Outfit',
                                            letterSpacing: 0,
                                          ),
                                    ),
                                    subtitle: Text(
                                      'Deskripsi makanan',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .copyWith(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0,
                                          ),
                                    ),
                                    dense: false,
                                  ),
                                  ListTile(
                                    title: Text(
                                      'Nama Makanan 3',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge!
                                          .copyWith(
                                            fontFamily: 'Outfit',
                                            letterSpacing: 0,
                                          ),
                                    ),
                                    subtitle: Text(
                                      'Deskripsi makanan',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .copyWith(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0,
                                          ),
                                    ),
                                    dense: false,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
