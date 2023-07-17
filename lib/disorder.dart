class Disorder {
  String? name;
  String? centralGaze;
  String? leftGaze;
  String? rightGaze;
  String? upGaze;
  String? downGaze;
  String? direction;
  List<String>? causes;

  Disorder(
      {this.name,
      this.leftGaze,
      this.centralGaze,
      this.rightGaze,
      this.upGaze,
      this.downGaze,
      this.direction,
      this.causes});
}

List<Disorder> disorders = [
  Disorder(
    name: "CN III Palsy Left",
    centralGaze: "images/ng-${disorders[0].direction}-3palsy.svg",
    leftGaze: "images/lg-${disorders[0].direction}-3palsy.svg",
    rightGaze: "images/rg-${disorders[0].direction}-3palsy.svg",
    upGaze: "images/ug-${disorders[0].direction}-3palsy.svg",
    downGaze: "images/dg-${disorders[0].direction}-3palsy.svg",
    direction: "left",
  ),
  Disorder(
    name: "CN III Palsy Right",
    centralGaze: "images/ng-${disorders[1].direction}-3palsy.svg",
    leftGaze: "images/lg-${disorders[1].direction}-3palsy.svg",
    rightGaze: "images/rg-${disorders[1].direction}-3palsy.svg",
    upGaze: "images/ug-${disorders[1].direction}-3palsy.svg",
    downGaze: "images/dg-${disorders[1].direction}-3palsy.svg",
    direction: "right",
  )
];
