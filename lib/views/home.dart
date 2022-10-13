import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Home page'),
      ),
      child: Column(
        children: [
          new Swiper(
            itemBuilder: (BuildContext context,int index){
              return new Image.network("https://demo.zsmartex.com/api/v2/kouda/public/banners/e1aca21e-6ea6-4b94-9d91-37dae7c39e4a",fit: BoxFit.fill,);
            },
            itemCount: 3,
            pagination: new SwiperPagination(),
            control: new SwiperControl(),
          ),
        ],
      ),
    );
  }
}
