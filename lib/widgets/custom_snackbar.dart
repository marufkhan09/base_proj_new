import 'package:flutter_base_project/constants/common_libs.dart';

void showAnimatedSnackBar(
    {required BuildContext context, required String message}) {
  final OverlayState overlay = Overlay.of(context);
  final _controller = AnimationController(
    vsync: overlay,
    duration: const Duration(milliseconds: 500),
  );

  final overlayEntry = OverlayEntry(
    builder: (BuildContext context) => Positioned(
      bottom: 24.0,
      left: MediaQuery.of(context).size.width * 0.05,
      right: MediaQuery.of(context).size.width * 0.05,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Opacity(
            opacity: _controller.value,
            child: Material(
              elevation: 8,
              borderRadius: BorderRadius.circular(8),
              color: Colors.blue, // Set your desired background color
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 32.0, horizontal: 12.0),
                child: Text(
                  message,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
          );
        },
      ),
    ),
  );

  overlay.insert(overlayEntry);

  _controller.forward().then((_) {
    Future.delayed(const Duration(seconds: 3), () {
      _controller.reverse().then((value) {
        overlayEntry.remove();
      });
    });
  });
}
