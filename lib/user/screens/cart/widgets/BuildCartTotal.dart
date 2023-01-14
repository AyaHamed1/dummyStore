part of 'CartWidgetsImports.dart';

class BuildCartTotal extends StatelessWidget {
  final CartData cartData;
  const BuildCartTotal({Key? key, required this.cartData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<num>, GenericState<num>>(
      bloc: cartData.totalBloc,
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: MyText(
            title: "Total : \$ ${state.data}",
            color: MyColors.black,
            size: 13,
            overflow: TextOverflow.clip,
            alien: TextAlign.center,
          ),
        );
      },
    );
  }
}
