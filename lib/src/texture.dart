part of babylon;

/// class Texture
@JS()
class Texture extends BaseTexture {
  external bool get noMipmap;
  external bool get isBlocking;
  external num get samplingMode;
  external bool get invertY;
  external static bool get SerializeBuffers;
  external static num get NEAREST_SAMPLINGMODE;
  external static num get NEAREST_NEAREST_MIPLINEAR;
  external static num get BILINEAR_SAMPLINGMODE;
  external static num get LINEAR_LINEAR_MIPNEAREST;
  external static num get TRILINEAR_SAMPLINGMODE;
  external static num get LINEAR_LINEAR_MIPLINEAR;
  external static num get NEAREST_NEAREST_MIPNEAREST;
  external static num get NEAREST_LINEAR_MIPNEAREST;
  external static num get NEAREST_LINEAR_MIPLINEAR;
  external static num get NEAREST_LINEAR;
  external static num get NEAREST_NEAREST;
  external static num get LINEAR_NEAREST_MIPNEAREST;
  external static num get LINEAR_NEAREST_MIPLINEAR;
  external static num get LINEAR_LINEAR;
  external static num get LINEAR_NEAREST;
  external static num get EXPLICIT_MODE;
  external static num get SPHERICAL_MODE;
  external static num get PLANAR_MODE;
  external static num get CUBIC_MODE;
  external static num get PROJECTION_MODE;
  external static num get SKYBOX_MODE;
  external static num get INVCUBIC_MODE;
  external static num get EQUIRECTANGULAR_MODE;
  external static num get FIXED_EQUIRECTANGULAR_MODE;
  external static num get FIXED_EQUIRECTANGULAR_MIRRORED_MODE;
  external static num get CLAMP_ADDRESSMODE;
  external static num get WRAP_ADDRESSMODE;
  external static num get MIRROR_ADDRESSMODE;
  external static bool get UseSerializedUrlIfAny;
  external String get url;
  external num get uOffset;
  external num get vOffset;
  external num get uScale;
  external num get vScale;
  external num get uAng;
  external num get vAng;
  external num get wAng;
  external num get uRotationCenter;
  external num get vRotationCenter;
  external num get wRotationCenter;
  external List<IInspectable> get inspectableCustomProperties;
  external Observable<Texture> get onLoadObservable;
  external set isBlocking(bool value);
  external static set SerializeBuffers(bool SerializeBuffers);
  external static set UseSerializedUrlIfAny(bool UseSerializedUrlIfAny);
  external set url(String url);
  external set uOffset(num uOffset);
  external set vOffset(num vOffset);
  external set uScale(num uScale);
  external set vScale(num vScale);
  external set uAng(num uAng);
  external set vAng(num vAng);
  external set wAng(num wAng);
  external set uRotationCenter(num uRotationCenter);
  external set vRotationCenter(num vRotationCenter);
  external set wRotationCenter(num wRotationCenter);
  external set inspectableCustomProperties(List<IInspectable> inspectableCustomProperties);
  external set onLoadObservable(Observable<Texture> onLoadObservable);
  external void updateURL(String url, [dynamic buffer, void Function() onLoad]);
  external void delayLoad();
  external Matrix getTextureMatrix();
  external Matrix getReflectionTextureMatrix();
  external Texture clone();
  external dynamic serialize();
  external String getClassName();
  external void dispose();
  external static BaseTexture Parse(dynamic parsedTexture, Scene scene, String rootUrl);
}
