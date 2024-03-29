import 'package:flutter/widgets.dart';

import 'package:fastotv_device_info/device.dart';

// LGE Nexus 5
const lgeNexus5 = AndroidDevice(
  name: "Nexus 5",
  landscape: MediaQueryData(
    padding: EdgeInsets.only(top: 24.0),
    size: Size(592, 360),
    devicePixelRatio: 3.0,
  ),
  portrait: MediaQueryData(
      padding: EdgeInsets.only(top: 24.0),
      size: Size(360, 592),
      devicePixelRatio: 3.0),
);

const mtkAsano32LH7010T = AndroidDeviceWithoutTouch(
  name: "Asano 32LH7010T",
  landscape: MediaQueryData(
    padding: EdgeInsets.zero,
    size: Size(1280, 720),
    devicePixelRatio: 1.5,
  ),
  portrait: MediaQueryData(
      padding: EdgeInsets.zero, size: Size(720, 1280), devicePixelRatio: 1.5),
);

const vsM8sPlusW = AndroidDevice(
  name: "M8S PLUS W",
  landscape: MediaQueryData(
    padding: EdgeInsets.zero,
    size: Size(1280, 720),
    devicePixelRatio: 1.5,
  ),
  portrait: MediaQueryData(
      padding: EdgeInsets.zero, size: Size(720, 1280), devicePixelRatio: 1.5),
);

const AmazonFireTVStick = AndroidDevice(
    name: 'FireTVStick',
    landscape: const MediaQueryData(
      padding: EdgeInsets.zero,
      size: Size(960, 540),
      devicePixelRatio: 2.0,
    ),
    portrait: const MediaQueryData(
      padding: EdgeInsets.zero,
      size: Size(540, 960),
      devicePixelRatio: 2.0,
    ));

const rockchipTX2 = AndroidDeviceWithoutTouch(
  name: "Tanix TX2",
  landscape: MediaQueryData(
    padding: EdgeInsets.zero,
    size: Size(1280, 720),
    devicePixelRatio: 1.0,
  ),
  portrait: MediaQueryData(
      padding: EdgeInsets.zero, size: Size(720, 1280), devicePixelRatio: 1.0),
);
