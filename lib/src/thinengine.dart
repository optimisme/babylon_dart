part of babylon;

@JS()
@anonymous
class ThinEngineGetGlInfoResult {
  external factory ThinEngineGetGlInfoResult({String vendor, String renderer, String version});
  external String get vendor;
  external String get renderer;
  external String get version;
}

/// class ThinEngine
@JS()
class ThinEngine {
  external ThinEngine();
  external ThinEngine.args(dynamic canvasOrContext, [bool antialias, EngineOptions options, bool adaptToDeviceRatio]);
  external String get NpmPackage;
  external String get Version;
  external String get description;
  external String get ShadersRepository;
  external bool get supportsUniformBuffers;
  external bool get needPOTTextures;
  external bool get doNotHandleContextLost;
  external IViewportLike get currentViewport;
  external InternalTexture get emptyTexture;
  external InternalTexture get emptyTexture3D;
  external InternalTexture get emptyTexture2DArray;
  external InternalTexture get emptyCubeTexture;
  external num get webGLVersion;
  external bool get isStencilEnable;
  external DepthCullingState get depthCullingState;
  external AlphaState get alphaState;
  external StencilState get stencilState;
  external bool get IsSupported;
  external bool get HasMajorPerformanceCaveat;
  external static num get CollisionsEpsilon;
  external bool get forcePOTTextures;
  external bool get isFullscreen;
  external bool get cullBackFaces;
  external bool get renderEvenInBackground;
  external bool get preventCacheWipeBetweenFrames;
  external bool get validateShaderPrograms;
  external bool get useReverseDepthBuffer;
  external bool get disableUniformBuffers;
  external Observable<ThinEngine> get onContextLostObservable;
  external Observable<ThinEngine> get onContextRestoredObservable;
  external bool get disableVertexArrayObjects;
  external HostInformation get hostInformation;
  external bool get premultipliedAlpha;
  external Observable<Texture> get onBeforeTextureInitObservable;
  external dynamic get bindBuffer;
  external bool get enableUnpackFlipYCached;
  external set ShadersRepository(String value);
  external set doNotHandleContextLost(bool value);
  external static set CollisionsEpsilon(num CollisionsEpsilon);
  external set forcePOTTextures(bool forcePOTTextures);
  external set isFullscreen(bool isFullscreen);
  external set cullBackFaces(bool cullBackFaces);
  external set renderEvenInBackground(bool renderEvenInBackground);
  external set preventCacheWipeBetweenFrames(bool preventCacheWipeBetweenFrames);
  external set validateShaderPrograms(bool validateShaderPrograms);
  external set useReverseDepthBuffer(bool useReverseDepthBuffer);
  external set disableUniformBuffers(bool disableUniformBuffers);
  external set onContextLostObservable(Observable<ThinEngine> onContextLostObservable);
  external set onContextRestoredObservable(Observable<ThinEngine> onContextRestoredObservable);
  external set disableVertexArrayObjects(bool disableVertexArrayObjects);
  external set hostInformation(HostInformation hostInformation);
  external set onBeforeTextureInitObservable(Observable<Texture> onBeforeTextureInitObservable);
  external set bindBuffer(dynamic bindBuffer);
  external set enableUnpackFlipYCached(bool enableUnpackFlipYCached);
  external bool areAllEffectsReady();
  external String getClassName();
  external void resetTextureCache();
  external void setHardwareScalingLevel(num level);
  external num getHardwareScalingLevel();
  external List<InternalTexture> getLoadedTexturesCache();
  external EngineCapabilities getCaps();
  external void stopRenderLoop([void Function() renderFunction]);
  external CanvasElement getRenderingCanvas();
  external Window getHostWindow();
  external num getRenderWidth([bool useScreen]);
  external num getRenderHeight([bool useScreen]);
  external void runRenderLoop(void Function() renderFunction);
  external void clear(IColor4Like color, bool backBuffer, bool depth, [bool stencil]);
  external void setViewport(IViewportLike viewport, [num requiredWidth, num requiredHeight]);
  external void beginFrame();
  external void endFrame();
  external void resize();
  external bool setSize(num width, num height);
  external void bindFramebuffer(InternalTexture texture, [num faceIndex, num requiredWidth, num requiredHeight, bool forceFullscreenViewport, num lodLevel, num layer]);
  external void unBindFramebuffer(InternalTexture texture, [bool disableGenerateMipMaps, void Function() onBeforeUnbind]);
  external void flushFramebuffer();
  external void restoreDefaultFramebuffer();
  external DataBuffer createVertexBuffer(ByteBuffer data);
  external DataBuffer createDynamicVertexBuffer(ByteBuffer data);
  external DataBuffer createIndexBuffer(Int32List indices, [bool updatable]);
  external void bindArrayBuffer(DataBuffer buffer);
  external void updateArrayBuffer(Float32List data);
  external VertexArrayObject recordVertexArrayObject(dynamic vertexBuffers, DataBuffer indexBuffer, Effect effect);
  external void bindVertexArrayObject(VertexArrayObject vertexArrayObject, DataBuffer indexBuffer);
  external void bindBuffersDirectly(DataBuffer vertexBuffer, DataBuffer indexBuffer, List<num> vertexDeclaration, num vertexStrideSize, Effect effect);
  external void bindBuffers(dynamic vertexBuffers, DataBuffer indexBuffer, Effect effect);
  external void unbindInstanceAttributes();
  external void releaseVertexArrayObject(VertexArrayObject vao);
  external void updateAndBindInstancesBuffer(DataBuffer instancesBuffer, Float32List data, dynamic offsetLocations);
  external void bindInstancesBuffer(DataBuffer instancesBuffer, List<InstancingAttributeInfo> attributesInfo, [bool computeStride]);
  external void disableInstanceAttributeByName(String name);
  external void disableInstanceAttribute(num attributeLocation);
  external void disableAttributeByIndex(num attributeLocation);
  external void draw(bool useTriangles, num indexStart, num indexCount, [num instancesCount]);
  external void drawPointClouds(num verticesStart, num verticesCount, [num instancesCount]);
  external void drawUnIndexed(bool useTriangles, num verticesStart, num verticesCount, [num instancesCount]);
  external void drawElementsType(num fillMode, num indexStart, num indexCount, [num instancesCount]);
  external void drawArraysType(num fillMode, num verticesStart, num verticesCount, [num instancesCount]);
  external Effect createEffect(dynamic baseName, dynamic attributesNamesOrOptions, dynamic uniformsNamesOrEngine, [List<String> samplers, String defines, IEffectFallbacks fallbacks, void Function(Effect effect) onCompiled, void Function(Effect effect, String errors) onError, dynamic indexParameters]);
  external Program createRawShaderProgram(IPipelineContext pipelineContext, String vertexCode, String fragmentCode, [RenderingContext context, List<String> transformFeedbackVaryings]);
  external Program createShaderProgram(IPipelineContext pipelineContext, String vertexCode, String fragmentCode, String defines, [RenderingContext context, List<String> transformFeedbackVaryings]);
  external IPipelineContext createPipelineContext();
  external List<UniformLocation> getUniforms(IPipelineContext pipelineContext, List<String> uniformsNames);
  external List<num> getAttributes(IPipelineContext pipelineContext, List<String> attributesNames);
  external void enableEffect(Effect effect);
  external bool setInt(UniformLocation uniform, num value);
  external bool setIntArray(UniformLocation uniform, Int32List array);
  external bool setIntArray2(UniformLocation uniform, Int32List array);
  external bool setIntArray3(UniformLocation uniform, Int32List array);
  external bool setIntArray4(UniformLocation uniform, Int32List array);
  external bool setArray(UniformLocation uniform, dynamic array);
  external bool setArray2(UniformLocation uniform, dynamic array);
  external bool setArray3(UniformLocation uniform, dynamic array);
  external bool setArray4(UniformLocation uniform, dynamic array);
  external bool setMatrices(UniformLocation uniform, Float32List matrices);
  external bool setMatrix3x3(UniformLocation uniform, Float32List matrix);
  external bool setMatrix2x2(UniformLocation uniform, Float32List matrix);
  external bool setFloat(UniformLocation uniform, num value);
  external bool setFloat2(UniformLocation uniform, num x, num y);
  external bool setFloat3(UniformLocation uniform, num x, num y, num z);
  external bool setFloat4(UniformLocation uniform, num x, num y, num z, num w);
  external void applyStates();
  external void setColorWrite(bool enable);
  external bool getColorWrite();
  external void clearInternalTexturesCache();
  external void wipeCaches([bool bruteForce]);
  external InternalTexture createTexture(String url, bool noMipmap, bool invertY, ISceneLike scene, [num samplingMode, void Function() onLoad, void Function(String message, dynamic exception) onError, dynamic buffer, InternalTexture fallback, num format, String forcedExtension, String mimeType, dynamic loaderOptions]);
  external void updateTextureSamplingMode(num samplingMode, InternalTexture texture, [bool generateMipMaps]);
  external void updateTextureWrappingMode(InternalTexture texture, num wrapU, [num wrapV, num wrapR]);
  external void updateTextureData(InternalTexture texture, List imageData, num xOffset, num yOffset, num width, num height, [num faceIndex, num lod]);
  external void bindSamplers(Effect effect);
  external void unbindAllTextures();
  external void setTexture(num channel, UniformLocation uniform, ThinTexture texture);
  external void setTextureArray(num channel, UniformLocation uniform, List<ThinTexture> textures);
  external void unbindAllAttributes();
  external void releaseEffects();
  external void dispose();
  external num getError();
  external Uint8List readPixels(num x, num y, num width, num height, [bool hasAlpha]);
  external static bool isSupported();
  external static num CeilingPOT(num x);
  external static num FloorPOT(num x);
  external static num NearestPOT(num x);
  external static num GetExponentOfTwo(num value, num max, [num mode]);
  external static num QueueNewFrame(void Function() func, [dynamic requester]);
  external Document getHostDocument();
  external DataBuffer createUniformBuffer(Float32List elements);
  external DataBuffer createDynamicUniformBuffer(Float32List elements);
  external void updateUniformBuffer(DataBuffer uniformBuffer, Float32List elements, [num offset, num count]);
  external void bindUniformBuffer(DataBuffer buffer);
  external void bindUniformBufferBase(DataBuffer buffer, num location);
  external void bindUniformBlock(IPipelineContext pipelineContext, String blockName, num index);
  external InternalTexture createCubeTexture(String rootUrl, Scene scene, List<String> files, dynamic noMipmap, void Function(dynamic data) onLoad, void Function(String message, dynamic exception) onError, dynamic format, dynamic forcedExtension, bool createPolynomials, num lodScale, num lodOffset, InternalTexture fallback, dynamic loaderOptions);
  external InternalTexture createRenderTargetTexture(RenderTargetTextureSize size, dynamic options);
  external InternalTexture createDepthStencilTexture(RenderTargetTextureSize size, DepthTextureCreationOptions options);
  external InternalTexture createRawTexture(List data, num width, num height, num format, bool generateMipMaps, bool invertY, num samplingMode, String compression, num type);
  external void updateRawTexture(InternalTexture texture, List data, num format, bool invertY);
  external InternalTexture createRawCubeTexture(List<List> data, num size, num format, num type, bool generateMipMaps, bool invertY, num samplingMode, String compression);
  external void updateRawCubeTexture(InternalTexture texture, List<List> data, num format, num type, bool invertY);
  external InternalTexture createRawTexture3D(List data, num width, num height, num depth, num format, bool generateMipMaps, bool invertY, num samplingMode, String compression, num textureType);
  external void updateRawTexture3D(InternalTexture texture, List data, num format, bool invertY);
  external InternalTexture createRawTexture2DArray(List data, num width, num height, num depth, num format, bool generateMipMaps, bool invertY, num samplingMode, String compression, num textureType);
  external void updateRawTexture2DArray(InternalTexture texture, List data, num format, bool invertY);
  external void updateDynamicIndexBuffer(DataBuffer indexBuffer, Int32List indices, [num offset]);
  external void updateDynamicVertexBuffer(DataBuffer vertexBuffer, ByteBuffer data, [num byteOffset, num byteLength]);
  external InternalTexture createRenderTargetCubeTexture(num size, [RenderTargetCreationOptions options]);
  external void setAlphaConstants(num r, num g, num b, num a);
  external void setAlphaMode(num mode, [bool noDepthWriteChange]);
  external num getAlphaMode();
  external void setAlphaEquation(num equation);
  external num getAlphaEquation();
  external void unBindMultiColorAttachmentFramebuffer(List<InternalTexture> textures, bool disableGenerateMipMaps, [void Function() onBeforeUnbind]);
  external List<InternalTexture> createMultipleRenderTarget(dynamic size, IMultiRenderTargetOptions options);
  external num updateMultipleRenderTargetTextureSampleCount(List<InternalTexture> textures, num samples);
  external void bindAttachments(List<num> attachments);
  external List<num> buildTextureLayout(List<bool> textureStatus);
  external void restoreSingleAttachment();
  external void updateVideoTexture(InternalTexture texture, VideoElement video, bool invertY);
  external InternalTexture createDynamicTexture(num width, num height, bool generateMipMaps, num samplingMode);
  external void updateDynamicTexture(InternalTexture texture, dynamic source, [bool invertY, bool premulAlpha, num format, bool forceBindTexture]);
  external InternalTexture createPrefilteredCubeTexture(String rootUrl, Scene scene, num lodScale, num lodOffset, [void Function(InternalTexture internalTexture) onLoad, void Function(String message, dynamic exception) onError, num format, dynamic forcedExtension, bool createPolynomials]);
}
