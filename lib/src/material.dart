part of babylon;

/// class Material
@JS()
class Material implements IAnimatable {
  external num get alpha;
  external bool get backFaceCulling;
  external bool get hasRenderTargetTextures;
  external Observable<AbstractMesh> get onBindObservable;
  external Observable<Material> get onUnBindObservable;
  external num get alphaMode;
  external bool get needDepthPrePass;
  external bool get fogEnabled;
  external bool get wireframe;
  external bool get pointsCloud;
  external num get fillMode;
  external bool get isFrozen;
  external static num get TriangleFillMode;
  external static num get WireFrameFillMode;
  external static num get PointFillMode;
  external static num get PointListDrawMode;
  external static num get LineListDrawMode;
  external static num get LineLoopDrawMode;
  external static num get LineStripDrawMode;
  external static num get TriangleStripDrawMode;
  external static num get TriangleFanDrawMode;
  external static num get ClockWiseSideOrientation;
  external static num get CounterClockWiseSideOrientation;
  external static num get TextureDirtyFlag;
  external static num get LightDirtyFlag;
  external static num get FresnelDirtyFlag;
  external static num get AttributesDirtyFlag;
  external static num get MiscDirtyFlag;
  external static num get AllDirtyFlag;
  external String get id;
  external num get uniqueId;
  external String get name;
  external dynamic get metadata;
  external dynamic get reservedDataStore;
  external bool get checkReadyOnEveryCall;
  external bool get checkReadyOnlyOnce;
  external String get state;
  external num get sideOrientation;
  external void Function(Effect effect) get onCompiled;
  external void Function(Effect effect, String errors) get onError;
  external SmartArray<RenderTargetTexture> Function() get getRenderTargetTextures;
  external bool get doNotSerialize;
  external List<Animation> get animations;
  external Observable<Material> get onDisposeObservable;
  external bool get disableDepthWrite;
  external bool get forceDepthWrite;
  external num get depthFunction;
  external bool get separateCullingPass;
  external num get pointSize;
  external num get zOffset;
  external dynamic get releaseVertexArrayObject;
  external set alpha(num value);
  external set backFaceCulling(bool value);
  external set onDispose(void Function() callback);
  external set onBind(void Function(AbstractMesh Mesh) callback);
  external set alphaMode(num value);
  external set needDepthPrePass(bool value);
  external set fogEnabled(bool value);
  external set wireframe(bool value);
  external set pointsCloud(bool value);
  external set fillMode(num value);
  external set id(String id);
  external set uniqueId(num uniqueId);
  external set name(String name);
  external set metadata(dynamic metadata);
  external set reservedDataStore(dynamic reservedDataStore);
  external set checkReadyOnEveryCall(bool checkReadyOnEveryCall);
  external set checkReadyOnlyOnce(bool checkReadyOnlyOnce);
  external set state(String state);
  external set sideOrientation(num sideOrientation);
  external set onCompiled(void Function(Effect effect) onCompiled);
  external set onError(void Function(Effect effect, String errors) onError);
  external set getRenderTargetTextures(SmartArray<RenderTargetTexture> Function() getRenderTargetTextures);
  external set doNotSerialize(bool doNotSerialize);
  external set animations(List<Animation> animations);
  external set onDisposeObservable(Observable<Material> onDisposeObservable);
  external set disableDepthWrite(bool disableDepthWrite);
  external set forceDepthWrite(bool forceDepthWrite);
  external set depthFunction(num depthFunction);
  external set separateCullingPass(bool separateCullingPass);
  external set pointSize(num pointSize);
  external set zOffset(num zOffset);
  external set releaseVertexArrayObject(dynamic releaseVertexArrayObject);
  external String toString([bool fullDetails]);
  external String getClassName();
  external void freeze();
  external void unfreeze();
  external bool isReady([AbstractMesh mesh, bool useInstances]);
  external bool isReadyForSubMesh(AbstractMesh mesh, BaseSubMesh subMesh, [bool useInstances]);
  external Effect getEffect();
  external Scene getScene();
  external bool needAlphaBlending();
  external bool needAlphaBlendingForMesh(AbstractMesh mesh);
  external bool needAlphaTesting();
  external BaseTexture getAlphaTestTexture();
  external void markDirty();
  external void bind(Matrix world, [Mesh mesh]);
  external void bindForSubMesh(Matrix world, Mesh mesh, SubMesh subMesh);
  external void bindOnlyWorldMatrix(Matrix world);
  external void bindView(Effect effect);
  external void bindViewProjection(Effect effect);
  external void unbind();
  external List<BaseTexture> getActiveTextures();
  external bool hasTexture(BaseTexture texture);
  external Material clone(String name);
  external List<AbstractMesh> getBindedMeshes();
  external void markAsDirty(num flag);
  external void dispose([bool forceDisposeEffect, bool forceDisposeTextures, bool notBoundToMesh]);
  external dynamic serialize();
  external static Material Parse(dynamic parsedMaterial, Scene scene, String rootUrl);
}
