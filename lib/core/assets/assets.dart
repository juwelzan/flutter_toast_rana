enum InfoIcon {
  eyes("assets/info/eyes.svg"),
  faceMonocle("assets/info/face-monocle.svg"),
  faceSmirking("assets/info/face-smirking.svg");

  final String path;
  const InfoIcon(this.path);
}

enum ErrorIcon {
  dizzy("assets/error/dizzy.svg"),
  faceConfounded("assets/error/face-confounded.svg"),
  faceConfused("assets/error/face-confused.svg"),
  faceDisappointed("assets/error/face-disappointed.svg"),
  sadTear("assets/error/sad-tear.svg");

  final String path;
  const ErrorIcon(this.path);
}

enum SuccessIcon {
  faceSmileHearts('assets/success/face-smile-hearts.svg'),
  grinHearts('assets/success/grin-hearts.svg'),
  grin('assets/success/grin.svg'),
  smileBeam('assets/success/smile-beam.svg'),
  smile('assets/success/smile.svg');

  final String path;
  const SuccessIcon(this.path);
}

enum WarningIcon {
  faceExpressionless('assets/warning/face-expressionless.svg'),
  faceHushed('assets/warning/face-hushed.svg'),
  facePersevering('assets/warning/face-persevering.svg'),
  flushed('assets/warning/flushed.svg'),
  frown('assets/warning/frown.svg');

  final String path;
  const WarningIcon(this.path);
}
