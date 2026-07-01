import 'package:flutter_toast_rana/core/path/path.dart';

class ToastChild extends StatelessWidget {
  final double width;
  final String icon;
  final String? title, massage;
  final TextStyle? titleStyle, massageStyle;
  final ToastColorScheme toastColorScheme;
  const ToastChild({
    super.key,
    required this.width,
    required this.toastColorScheme,
    required this.icon,
    this.title,
    this.massage,
    this.titleStyle,
    this.massageStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.all(10),

          padding: EdgeInsets.all(10),
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: toastColorScheme.primary,
            borderRadius: BorderRadius.all(Radius.elliptical(13, 13)),
          ),
          child: SvgPicture.asset(
            icon,
            width: 50,
            height: 60,
            colorFilter: ColorFilter.mode(toastColorScheme.icon, .srcIn),
          ),
        ),
        const SizedBox(width: 10),
        Column(
          mainAxisAlignment: .spaceEvenly,
          crossAxisAlignment: .start,
          children: [
            Text(
              title ?? "Add Title",
              style:
                  titleStyle ??
                  TextStyle(
                    fontSize: 20,
                    color: toastColorScheme.text,
                    fontWeight: .bold,
                  ),
            ),
            Text(
              massage ?? "Add Massage",
              style:
                  massageStyle ??
                  TextStyle(
                    fontSize: 14,
                    color: toastColorScheme.text,
                    fontWeight: .w400,
                  ),
            ),
          ],
        ),
      ],
    );
  }
}
