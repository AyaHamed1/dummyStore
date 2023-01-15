import 'package:auto_route/auto_route.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import '../blocs/cart_cubit/cart_cubit.dart';
import '../routers/RouterImports.gr.dart';
import 'MyColors.dart';
import 'MyText.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? leading;
  final double? size;
  final bool showLeading;
  final Widget? child;
  final bool showCart;

  const DefaultAppBar({
    Key? key,
    required this.title,
    this.leading,
    this.size,
    this.showLeading = true,
    this.child,
    this.showCart = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cartCount = context.watch<CartCubit>().state.products.length;
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors: [
              Color(0xffCCA5A5),
              Color(0xffe7cdcf),
            ]),
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30),
        ),
      ),
      child: AppBar(
        leading: Visibility(
          visible: showLeading,
          child: leading ??
              InkWell(
                onTap: () => AutoRouter.of(context).pop(),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: MyColors.white,
                  size: 18,
                ),
              ),
        ),
        leadingWidth: showLeading == true ? 55 : 10,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: child ?? MyText(
          title: title,
          size: 15,
          color: MyColors.white,
        ),
        centerTitle: false,
        actions: [
          Visibility(
            visible: showCart,
            child: IconButton(
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
          ),
        ],
        toolbarHeight: 70,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(size ?? 70);
}
