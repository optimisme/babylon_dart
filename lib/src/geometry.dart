part of babylon;

@JS()
@anonymous
class GeometryExtend {
  external factory GeometryExtend({Vector3 minimum, Vector3 maximum});
  external Vector3 get minimum;
  external Vector3 get maximum;
}

/// class Geometry
@JS()
class Geometry implements IGetSetVerticesData {
  external Geometry(String id, Scene scene, [VertexData vertexData, bool updatable, Mesh mesh]);
  external Vector2 get boundingBias;
  external List<Mesh> get meshes;
  external bool get doNotSerialize;
  external String get id;
  external num get uniqueId;
  external num get delayLoadState;
  external String get delayLoadingFile;
  external void Function(Geometry geometry, String kind) get onGeometryUpdated;
  external bool get useBoundingInfoFromGeometry;
  external dynamic get notifyUpdate;
  external dynamic get toNumberArray;
  external set boundingBias(Vector2 value);
  external set id(String id);
  external set uniqueId(num uniqueId);
  external set delayLoadState(num delayLoadState);
  external set delayLoadingFile(String delayLoadingFile);
  external set onGeometryUpdated(void Function(Geometry geometry, String kind) onGeometryUpdated);
  external set useBoundingInfoFromGeometry(bool useBoundingInfoFromGeometry);
  external set notifyUpdate(dynamic notifyUpdate);
  external set toNumberArray(dynamic toNumberArray);
  external static Geometry CreateGeometryForMesh(Mesh mesh);
  external Scene getScene();
  external Engine getEngine();
  external bool isReady();
  external void setAllVerticesData(VertexData vertexData, [bool updatable]);
  external void setVerticesData(String kind, Float32List data, bool updatable);
  external void removeVerticesData(String kind);
  external void setVerticesBuffer(VertexBuffer buffer, [num totalVertices]);
  external void updateVerticesDataDirectly(String kind, ByteBuffer data, num offset, [bool useBytes]);
  external void updateVerticesData(String kind, Float32List data, [bool updateExtends, bool makeItUnique]);
  external num getTotalVertices();
  external Float32List getVerticesData(String kind, [bool copyWhenShared, bool forceCopy]);
  external bool isVertexBufferUpdatable(String kind);
  external VertexBuffer getVertexBuffer(String kind);
  external bool isVerticesDataPresent(String kind);
  external List<String> getVerticesDataKinds();
  external void updateIndices(Int32List indices, [num offset, bool gpuMemoryOnly]);
  external void setIndices(Int32List indices, num totalVertices, [bool updatable]);
  external num getTotalIndices();
  external Int32List getIndices([bool copyWhenShared, bool forceCopy]);
  external DataBuffer getIndexBuffer();
  external void releaseForMesh(Mesh mesh, [bool shouldDispose]);
  external void applyToMesh(Mesh mesh);
  external void load(Scene scene, [void Function() onLoaded]);
  external void toLeftHanded();
  external bool isDisposed();
  external void dispose();
  external Geometry copy(String id);
  external dynamic serialize();
  external dynamic serializeVerticeData();
  external static Geometry ExtractFromMesh(Mesh mesh, String id);
  external static String RandomId();
  external static Geometry Parse(dynamic parsedVertexData, Scene scene, String rootUrl);
}
