part of babylon;

/// class Vector3
@JS()
class Vector3 {
  external Vector3([num x, num y, num z]);
  external num get x;
  external num get y;
  external num get z;
  external bool get isNonUniform;
  external Vector3 get UpReadOnly;
  external Vector3 get ZeroReadOnly;
  external set x(num value);
  external set y(num value);
  external set z(num value);
  external String toString();
  external String getClassName();
  external num getHashCode();
  external List<num> asArray();
  external Vector3 toArray(Float32List array, [num index]);
  external Vector3 fromArray(Float32List array, [num index]);
  external Quaternion toQuaternion();
  external Vector3 addInPlace(Vector3 otherVector);
  external Vector3 addInPlaceFromFloats(num x, num y, num z);
  external Vector3 add(Vector3 otherVector);
  external Vector3 addToRef(Vector3 otherVector, Vector3 result);
  external Vector3 subtractInPlace(Vector3 otherVector);
  external Vector3 subtract(Vector3 otherVector);
  external Vector3 subtractToRef(Vector3 otherVector, Vector3 result);
  external Vector3 subtractFromFloats(num x, num y, num z);
  external Vector3 subtractFromFloatsToRef(num x, num y, num z, Vector3 result);
  external Vector3 negate();
  external Vector3 negateInPlace();
  external Vector3 negateToRef(Vector3 result);
  external Vector3 scaleInPlace(num scale);
  external Vector3 scale(num scale);
  external Vector3 scaleToRef(num scale, Vector3 result);
  external Vector3 scaleAndAddToRef(num scale, Vector3 result);
  external Vector3 projectOnPlane(Plane plane, Vector3 origin);
  external void projectOnPlaneToRef(Plane plane, Vector3 origin, Vector3 result);
  external bool equals(Vector3 otherVector);
  external bool equalsWithEpsilon(Vector3 otherVector, [num epsilon]);
  external bool equalsToFloats(num x, num y, num z);
  external Vector3 multiplyInPlace(Vector3 otherVector);
  external Vector3 multiply(Vector3 otherVector);
  external Vector3 multiplyToRef(Vector3 otherVector, Vector3 result);
  external Vector3 multiplyByFloats(num x, num y, num z);
  external Vector3 divide(Vector3 otherVector);
  external Vector3 divideToRef(Vector3 otherVector, Vector3 result);
  external Vector3 divideInPlace(Vector3 otherVector);
  external Vector3 minimizeInPlace(Vector3 other);
  external Vector3 maximizeInPlace(Vector3 other);
  external Vector3 minimizeInPlaceFromFloats(num x, num y, num z);
  external Vector3 maximizeInPlaceFromFloats(num x, num y, num z);
  external bool isNonUniformWithinEpsilon(num epsilon);
  external Vector3 floor();
  external Vector3 fract();
  external num length();
  external num lengthSquared();
  external Vector3 normalize();
  external Vector3 reorderInPlace(String order);
  external Vector3 rotateByQuaternionToRef(Quaternion quaternion, Vector3 result);
  external Vector3 rotateByQuaternionAroundPointToRef(Quaternion quaternion, Vector3 point, Vector3 result);
  external Vector3 cross(Vector3 other);
  external Vector3 normalizeFromLength(num len);
  external Vector3 normalizeToNew();
  external Vector3 normalizeToRef(Vector3 reference);
  external Vector3 clone();
  external Vector3 copyFrom(Vector3 source);
  external Vector3 copyFromFloats(num x, num y, num z);
  external Vector3 set(num x, num y, num z);
  external Vector3 setAll(num v);
  external static num GetClipFactor(Vector3 vector0, Vector3 vector1, Vector3 axis, num size);
  external static num GetAngleBetweenVectors(Vector3 vector0, Vector3 vector1, Vector3 normal);
  external static Vector3 FromArray(List<num> array, [num offset]);
  external static Vector3 FromFloatArray(Float32List array, [num offset]);
  external static void FromArrayToRef(List<num> array, num offset, Vector3 result);
  external static void FromFloatArrayToRef(Float32List array, num offset, Vector3 result);
  external static void FromFloatsToRef(num x, num y, num z, Vector3 result);
  external static Vector3 Zero();
  external static Vector3 One();
  external static Vector3 Up();
  external static Vector3 Down();
  external static Vector3 Forward([bool rightHandedSystem]);
  external static Vector3 Backward([bool rightHandedSystem]);
  external static Vector3 Right();
  external static Vector3 Left();
  external static Vector3 TransformCoordinates(Vector3 vector, Matrix transformation);
  external static void TransformCoordinatesToRef(Vector3 vector, Matrix transformation, Vector3 result);
  external static void TransformCoordinatesFromFloatsToRef(num x, num y, num z, Matrix transformation, Vector3 result);
  external static Vector3 TransformNormal(Vector3 vector, Matrix transformation);
  external static void TransformNormalToRef(Vector3 vector, Matrix transformation, Vector3 result);
  external static void TransformNormalFromFloatsToRef(num x, num y, num z, Matrix transformation, Vector3 result);
  external static Vector3 CatmullRom(Vector3 value1, Vector3 value2, Vector3 value3, Vector3 value4, num amount);
  external static Vector3 Clamp(Vector3 value, Vector3 min, Vector3 max);
  external static void ClampToRef(Vector3 value, Vector3 min, Vector3 max, Vector3 result);
  external static void CheckExtends(Vector3 v, Vector3 min, Vector3 max);
  external static Vector3 Hermite(Vector3 value1, Vector3 tangent1, Vector3 value2, Vector3 tangent2, num amount);
  external static Vector3 Lerp(Vector3 start, Vector3 end, num amount);
  external static void LerpToRef(Vector3 start, Vector3 end, num amount, Vector3 result);
  external static num Dot(Vector3 left, Vector3 right);
  external static Vector3 Cross(Vector3 left, Vector3 right);
  external static void CrossToRef(Vector3 left, Vector3 right, Vector3 result);
  external static Vector3 Normalize(Vector3 vector);
  external static void NormalizeToRef(Vector3 vector, Vector3 result);
  external static Vector3 Project(Vector3 vector, Matrix world, Matrix transform, Viewport viewport);
  external static Vector3 ProjectToRef(Vector3 vector, Matrix world, Matrix transform, Viewport viewport, Vector3 result);
  external static Vector3 UnprojectFromTransform(Vector3 source, num viewportWidth, num viewportHeight, Matrix world, Matrix transform);
  external static Vector3 Unproject(Vector3 source, num viewportWidth, num viewportHeight, Matrix world, Matrix view, Matrix projection);
  external static void UnprojectToRef(Vector3 source, num viewportWidth, num viewportHeight, Matrix world, Matrix view, Matrix projection, Vector3 result);
  external static void UnprojectFloatsToRef(num sourceX, num sourceY, num sourceZ, num viewportWidth, num viewportHeight, Matrix world, Matrix view, Matrix projection, Vector3 result);
  external static Vector3 Minimize(Vector3 left, Vector3 right);
  external static Vector3 Maximize(Vector3 left, Vector3 right);
  external static num Distance(Vector3 value1, Vector3 value2);
  external static num DistanceSquared(Vector3 value1, Vector3 value2);
  external static Vector3 Center(Vector3 value1, Vector3 value2);
  external static Vector3 RotationFromAxis(Vector3 axis1, Vector3 axis2, Vector3 axis3);
  external static void RotationFromAxisToRef(Vector3 axis1, Vector3 axis2, Vector3 axis3, Vector3 ref);
}
