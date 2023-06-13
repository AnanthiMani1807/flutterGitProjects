import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

//BrandButton.dart//
enum ButtonType {
  primary,
  secondary,
  tertiary,
}
enum IconType {
  svg,
  png,
  jpeg,
}

class BrandButton extends StatefulWidget {
  final Color backgroundColor;
  final void Function()? onPressed;
  final VoidCallback? onHover;
  final Widget child;
  final Color? foregroundColor;
  final ButtonStyle? buttonStyle;
  final Size minimumSize;
  final ButtonType buttonType;
  final Color textColor;
  final Color hoverColor;
  final Color disabledColor;
  final IconType? iconType;
  final String? iconPath;
  final Widget? leftIcon;
  final Widget? rightIcon;

  const BrandButton.primary({
    Key? key,
    required this.child,
    this.backgroundColor = Colors.pink,
    this.onPressed,
    this.onHover,
    this.foregroundColor,
    this.buttonStyle,
    this.minimumSize = const Size(150, 56),
    this.buttonType = ButtonType.primary,
    this.textColor = Colors.white,
    this.hoverColor = Colors.yellow,
    this.disabledColor = Colors.grey,
    this.iconType = IconType.svg,
    this.iconPath = 'assets/icons/plus_icon.svg',
    this.leftIcon,
    this.rightIcon,
  }) : super(key: key);

  const BrandButton.primaryMedium({
    Key? key,
    required this.child,
    this.backgroundColor = Colors.pink,
    this.onPressed,
    this.onHover,
    this.foregroundColor,
    this.buttonStyle,
    this.minimumSize = const Size(126, 46),
    this.buttonType = ButtonType.primary,
    this.textColor = Colors.white,
    this.hoverColor = Colors.yellow,
    this.disabledColor = Colors.grey,
    this.iconType,
    this.iconPath,
    this.leftIcon,
    this.rightIcon,
  }) : super(key: key);

  const BrandButton.primarySmall({
    Key? key,
    required this.child,
    this.backgroundColor = Colors.pink,
    this.onPressed,
    this.onHover,
    this.foregroundColor,
    this.buttonStyle,
    this.minimumSize = const Size(100, 36),
    this.buttonType = ButtonType.primary,
    this.textColor = Colors.white,
    this.hoverColor = Colors.yellow,
    this.disabledColor = Colors.grey,
    this.iconType,
    this.iconPath,
    this.leftIcon,
    this.rightIcon,
  }) : super(key: key);

  const BrandButton.secondary({
    Key? key,
    required this.child,
    this.backgroundColor = Colors.white,
    this.onPressed,
    this.onHover,
    this.foregroundColor,
    this.buttonStyle,
    this.minimumSize = const Size(150, 56),
    this.buttonType = ButtonType.secondary,
    this.textColor = Colors.black,
    this.hoverColor = Colors.blue,
    this.disabledColor = Colors.grey,
    this.iconType,
    this.iconPath,
    this.leftIcon,
    this.rightIcon,
  }) : super(key: key);

  const BrandButton.secondaryMedium({
    Key? key,
    required this.child,
    this.backgroundColor = Colors.white,
    this.onPressed,
    this.onHover,
    this.foregroundColor,
    this.buttonStyle,
    this.minimumSize = const Size(120, 46),
    this.buttonType = ButtonType.secondary,
    this.textColor = Colors.black,
    this.hoverColor = Colors.blue,
    this.disabledColor = Colors.grey,
    this.iconType,
    this.iconPath,
    this.leftIcon,
    this.rightIcon,
  }) : super(key: key);

  const BrandButton.secondarySmall({
    Key? key,
    required this.child,
    this.backgroundColor = Colors.white,
    this.onPressed,
    this.onHover,
    this.foregroundColor,
    this.buttonStyle,
    this.minimumSize = const Size(100, 36),
    this.buttonType = ButtonType.secondary,
    this.textColor = Colors.black,
    this.hoverColor = Colors.blue,
    this.disabledColor = Colors.grey,
    this.iconType,
    this.iconPath,
    this.leftIcon,
    this.rightIcon,
  }) : super(key: key);

  const BrandButton.tertiary({
    Key? key,
    required this.child,
    this.backgroundColor = Colors.transparent,
    this.onPressed,
    this.onHover,
    this.foregroundColor,
    this.buttonStyle,
    this.minimumSize = const Size(150, 56),
    this.buttonType = ButtonType.tertiary,
    this.textColor = Colors.red,
    this.hoverColor = Colors.pink,
    this.disabledColor = Colors.grey,
    this.iconType,
    this.iconPath,
    this.leftIcon,
    this.rightIcon,
  }) : super(key: key);

  const BrandButton.tertiaryMedium({
    Key? key,
    required this.child,
    this.backgroundColor = Colors.transparent,
    this.onPressed,
    this.onHover,
    this.foregroundColor,
    this.buttonStyle,
    this.minimumSize = const Size(120, 46),
    this.buttonType = ButtonType.tertiary,
    this.textColor = Colors.red,
    this.hoverColor = Colors.pink,
    this.disabledColor = Colors.grey,
    this.iconType,
    this.iconPath,
    this.leftIcon,
    this.rightIcon,
  }) : super(key: key);

  const BrandButton.tertiarySmall({
    Key? key,
    required this.child,
    this.backgroundColor = Colors.transparent,
    this.onPressed,
    this.onHover,
    this.foregroundColor,
    this.buttonStyle,
    this.minimumSize = const Size(100, 36),
    this.buttonType = ButtonType.tertiary,
    this.textColor = Colors.red,
    this.hoverColor = Colors.pink,
    this.disabledColor = Colors.grey,
    this.iconType,
    this.iconPath,
    this.leftIcon, this.rightIcon,
  }) : super(key: key);

  @override
  _BrandButtonState createState() => _BrandButtonState();
}

class _BrandButtonState extends State<BrandButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final isEnabled = widget.onPressed != null;
    final isHovered = _isHovered ?? false;
    final isDisabledColorNull = widget.disabledColor == null;

    Color backgroundColor;
    Color overlayColor;

    if (isEnabled && isHovered) {
      backgroundColor = widget.hoverColor;
      overlayColor = widget.hoverColor.withOpacity(0.4);
    } else if (isEnabled) {
      backgroundColor = widget.backgroundColor;
      overlayColor = widget.hoverColor.withOpacity(0.2);
    } else {
      backgroundColor = isDisabledColorNull ? widget.backgroundColor : widget.disabledColor!;
      overlayColor = Colors.transparent;
    }

    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
        if (widget.onHover != null) {
          widget.onHover!();
        }
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: ElevatedButton(
        onPressed: isEnabled ? widget.onPressed : null,
        style: ButtonStyle(
          elevation: MaterialStateProperty.all<double>(widget.buttonType == ButtonType.primary || widget.buttonType == ButtonType.secondary ? 4.0 : 0.0), // Set elevation for primary and secondary buttons
          backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
          overlayColor: MaterialStateProperty.all<Color>(overlayColor),
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            const EdgeInsets.symmetric(horizontal: 12),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        child: Container(
          constraints: BoxConstraints(
            minWidth: widget.minimumSize.width,
            minHeight: widget.minimumSize.height,
          ),
          child: Center(
            child: DefaultTextStyle(
              style: TextStyle(
                color: widget.foregroundColor ?? widget.textColor,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (widget.leftIcon != null) buildIcon(widget.leftIcon!),
                  SizedBox(width: 8),
                  widget.child,
                  SizedBox(width: 8),
                  if (widget.rightIcon != null) buildIcon(widget.rightIcon!),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildIcon(Widget? iconWidget) {
    final iconColor = widget.foregroundColor ?? widget.textColor;

    if (iconWidget is Icon) {
      return Icon(
        iconWidget.icon,
        color: iconColor,
      );
    } else if (iconWidget is SvgPicture) {
      return Padding(
        padding: EdgeInsets.only(right: 8), // Adjust the padding for SVG icon
        child: ColorFiltered(
          colorFilter: ColorFilter.mode(
            iconColor,
            BlendMode.srcIn,
          ),
          child: iconWidget,
        ),
      );
    } else if (iconWidget is Image) {
      return Padding(
        padding: EdgeInsets.only(left: 8), // Adjust the padding for other image formats
        child: ColorFiltered(
          colorFilter: ColorFilter.mode(
            iconColor,
            BlendMode.srcIn,
          ),
          child: iconWidget,
        ),
      );
    } else
    {
      return Container();
    }
  }
}