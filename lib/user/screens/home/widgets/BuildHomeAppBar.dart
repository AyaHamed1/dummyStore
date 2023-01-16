part of 'HomeWidgetsImports.dart';

class BuildHomeAppBar extends StatelessWidget {
  const BuildHomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cartCount = context.watch<CartProvider>().products.length;
    return Container(
      height: MediaQuery.of(context).size.height * 0.21,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
              colors: [
                Color(0xffCCA5A5),
                Color(0xffe7cdcf),
              ]),
          borderRadius: const BorderRadius.vertical(
            bottom: Radius.circular(40),
          ),
          boxShadow: [
            BoxShadow(
              color: MyColors.greyWhite,
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 2),
            )
          ]),
      child: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        automaticallyImplyLeading: false,
        toolbarHeight: 90,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        title: MyText(title: "HomePage", color: MyColors.white, size: 20),
        actions: [
          IconButton(
            onPressed: ()=> AutoRouter.of(context).push(CartRoute()),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            icon: Badge(
              position: BadgePosition.topEnd(),
              badgeColor: Colors.red,
              showBadge: cartCount != 0,
              badgeContent: MyText(
                title: cartCount.toString(),
                color: MyColors.white,
                size: 7,
              ),
              child: Icon(
                Icons.shopping_cart,
                color: MyColors.white,
                size: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
