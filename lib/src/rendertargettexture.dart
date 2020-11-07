part of babylon;

/// class RenderTargetTexture
@JS()
class RenderTargetTexture extends Texture {
  external List<AbstractMesh> get renderList;
  external RenderTargetCreationOptions get renderTargetOptions;
  external Vector3 get boundingBoxSize;
  external InternalTexture get depthStencilTexture;
  external num get samples;
  external num get refreshRate;
  external bool get canRescale;
  external bool get isCube;
  external static num get REFRESHRATE_RENDER_ONCE;
  external static num get REFRESHRATE_RENDER_ONEVERYFRAME;
  external static num get REFRESHRATE_RENDER_ONEVERYTWOFRAMES;
  external bool Function(AbstractMesh AbstractMesh) get renderListPredicate;
  external bool get renderParticles;
  external bool get renderSprites;
  external num get coordinatesMode;
  external Camera get activeCamera;
  external void Function(SmartArray<SubMesh> opaqueSubMeshes, SmartArray<SubMesh> alphaTestSubMeshes, SmartArray<SubMesh> transparentSubMeshes, SmartArray<SubMesh> depthOnlySubMeshes, void Function() beforeTransparents) get customRenderFunction;
  external bool get useCameraPostProcesses;
  external bool get ignoreCameraViewport;
  external Observable<RenderTargetTexture> get onBeforeBindObservable;
  external Observable<RenderTargetTexture> get onAfterUnbindObservable;
  external Observable<num> get onBeforeRenderObservable;
  external Observable<num> get onAfterRenderObservable;
  external Observable<Engine> get onClearObservable;
  external Observable<RenderTargetTexture> get onResizeObservable;
  external Color4 get clearColor;
  external Vector3 get boundingBoxPosition;
  external dynamic get renderToTarget;
  external set renderList(List<AbstractMesh> value);
  external set onAfterUnbind(void Function() callback);
  external set onBeforeRender(void Function(num faceIndex) callback);
  external set onAfterRender(void Function(num faceIndex) callback);
  external set onClear(void Function(Engine Engine) callback);
  external set boundingBoxSize(Vector3 value);
  external set samples(num value);
  external set refreshRate(num value);
  external set isCube(bool isCube);
  external set renderListPredicate(bool Function(AbstractMesh AbstractMesh) renderListPredicate);
  external set renderParticles(bool renderParticles);
  external set renderSprites(bool renderSprites);
  external set coordinatesMode(num coordinatesMode);
  external set activeCamera(Camera activeCamera);
  external set customRenderFunction(void Function(SmartArray<SubMesh> opaqueSubMeshes, SmartArray<SubMesh> alphaTestSubMeshes, SmartArray<SubMesh> transparentSubMeshes, SmartArray<SubMesh> depthOnlySubMeshes, void Function() beforeTransparents) customRenderFunction);
  external set useCameraPostProcesses(bool useCameraPostProcesses);
  external set ignoreCameraViewport(bool ignoreCameraViewport);
  external set onBeforeBindObservable(Observable<RenderTargetTexture> onBeforeBindObservable);
  external set onAfterUnbindObservable(Observable<RenderTargetTexture> onAfterUnbindObservable);
  external set onBeforeRenderObservable(Observable<num> onBeforeRenderObservable);
  external set onAfterRenderObservable(Observable<num> onAfterRenderObservable);
  external set onClearObservable(Observable<Engine> onClearObservable);
  external set onResizeObservable(Observable<RenderTargetTexture> onResizeObservable);
  external set clearColor(Color4 clearColor);
  external set boundingBoxPosition(Vector3 boundingBoxPosition);
  external set renderToTarget(dynamic renderToTarget);
  external void createDepthStencilTexture([num comparisonFunction, bool bilinearFiltering, bool generateStencil]);
  external void resetRefreshCounter();
  external void addPostProcess(PostProcess postProcess);
  external void clearPostProcesses([bool dispose]);
  external void removePostProcess(PostProcess postProcess);
  external num getRenderSize();
  external num getRenderWidth();
  external num getRenderHeight();
  external num getRenderLayers();
  external void scale(num ratio);
  external Matrix getReflectionTextureMatrix();
  external void resize(dynamic size);
  external void render([bool useCameraPostProcess, bool dumpForDebug]);
  external void setRenderingAutoClearDepthStencil(num renderingGroupId, bool autoClearDepthStencil);
  external RenderTargetTexture clone();
  external dynamic serialize();
  external void disposeFramebufferObjects();
  external void dispose();
  external void freeRenderingGroups();
  external num getViewCount();
}
