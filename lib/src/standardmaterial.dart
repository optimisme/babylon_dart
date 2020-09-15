part of babylon;

@JS()
class StandardMaterial extends PushMaterial {
  external StandardMaterial(String name, Scene scene);
  BaseTexture diffuseTexture;
  BaseTexture ambientTexture;
  BaseTexture opacityTexture;
  BaseTexture reflectionTexture;
  BaseTexture emissiveTexture;
  BaseTexture specularTexture;
  BaseTexture bumpTexture;
  BaseTexture lightmapTexture;
  BaseTexture refractionTexture;
  Color3 ambientColor;
  Color3 diffuseColor;
  Color3 specularColor;
  Color3 emissiveColor;
  num specularPower;
  bool useAlphaFromDiffuseTexture;
  bool useEmissiveAsIllumination;
  bool linkEmissiveWithDiffuse;
  bool useSpecularOverAlpha;
  bool useReflectionOverAlpha;
  bool disableLighting;
  bool useObjectSpaceNormalMap;
  bool useParallax;
  bool useParallaxOcclusion;
  num parallaxScaleBias;
  num roughness;
  num indexOfRefraction;
  bool invertRefractionY;
  num alphaCutOff;
  bool useLightmapAsShadowmap;
  FresnelParameters diffuseFresnelParameters;
  FresnelParameters opacityFresnelParameters;
  FresnelParameters reflectionFresnelParameters;
  FresnelParameters refractionFresnelParameters;
  FresnelParameters emissiveFresnelParameters;
  bool useReflectionFresnelFromSpecular;
  bool useGlossinessFromSpecularMapAlpha;
  num maxSimultaneousLights;
  bool invertNormalMapX;
  bool invertNormalMapY;
  bool twoSidedLighting;
  DetailMapConfiguration detailMap;
  external ImageProcessingConfiguration get imageProcessingConfiguration;
  external bool get cameraColorCurvesEnabled;
  external bool get cameraColorGradingEnabled;
  external bool get cameraToneMappingEnabled;
  external num get cameraExposure;
  external num get cameraContrast;
  external BaseTexture get cameraColorGradingTexture;
  external ColorCurves get cameraColorCurves;
  external bool get shouldRenderToMRT;
  external bool get hasRenderTargetTextures;
  external bool get useLogarithmicDepth;
  external bool get DiffuseTextureEnabled;
  external bool get DetailTextureEnabled;
  external bool get AmbientTextureEnabled;
  external bool get OpacityTextureEnabled;
  external bool get ReflectionTextureEnabled;
  external bool get EmissiveTextureEnabled;
  external bool get SpecularTextureEnabled;
  external bool get BumpTextureEnabled;
  external bool get LightmapTextureEnabled;
  external bool get RefractionTextureEnabled;
  external bool get ColorGradingTextureEnabled;
  external bool get FresnelEnabled;
  external set imageProcessingConfiguration(ImageProcessingConfiguration value);
  external set cameraColorCurvesEnabled(bool value);
  external set cameraColorGradingEnabled(bool value);
  external set cameraToneMappingEnabled(bool value);
  external set cameraExposure(num value);
  external set cameraContrast(num value);
  external set cameraColorGradingTexture(BaseTexture value);
  external set cameraColorCurves(ColorCurves value);
  external set useLogarithmicDepth(bool value);
  external set DiffuseTextureEnabled(bool value);
  external set DetailTextureEnabled(bool value);
  external set AmbientTextureEnabled(bool value);
  external set OpacityTextureEnabled(bool value);
  external set ReflectionTextureEnabled(bool value);
  external set EmissiveTextureEnabled(bool value);
  external set SpecularTextureEnabled(bool value);
  external set BumpTextureEnabled(bool value);
  external set LightmapTextureEnabled(bool value);
  external set RefractionTextureEnabled(bool value);
  external set ColorGradingTextureEnabled(bool value);
  external set FresnelEnabled(bool value);
  external String getClassName();
  external bool needAlphaBlending();
  external bool needAlphaTesting();
  external BaseTexture getAlphaTestTexture();
  external bool isReadyForSubMesh(AbstractMesh mesh, SubMesh subMesh, bool useInstances);
  external void buildUniformLayout();
  external void unbind();
  external void bindForSubMesh(Matrix world, Mesh mesh, SubMesh subMesh);
  external List<BaseTexture> getActiveTextures();
  external bool hasTexture(BaseTexture texture);
  external void dispose(bool forceDisposeEffect, bool forceDisposeTextures);
  external StandardMaterial clone(String name);
  external dynamic serialize();
  external static StandardMaterial Parse(dynamic source, Scene scene, String rootUrl);
}

