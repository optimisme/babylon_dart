part of babylon;

/// class PhysicsImpostor
@JS()
class PhysicsImpostor {
  external PhysicsImpostor(IPhysicsEnabledObject object, num type, [PhysicsImpostorParameters _options, dynamic _scene]);
  external bool get isDisposed;
  external num get mass;
  external num get friction;
  external num get restitution;
  external num get pressure;
  external num get stiffness;
  external num get velocityIterations;
  external num get positionIterations;
  external dynamic get physicsBody;
  external PhysicsImpostor get parent;
  external IPhysicsEnabledObject get object;
  external num get type;
  external static Vector3 get DEFAULT_OBJECT_SIZE;
  external static Quaternion get IDENTITY_QUATERNION;
  external num get uniqueId;
  external bool get soft;
  external num get segments;
  external void Function() get beforeStep;
  external void Function() get afterStep;
  external void Function(PhysicsImpostor collider, PhysicsImpostor collidedWith) get onCollideEvent;
  external static num get NoImpostor;
  external static num get SphereImpostor;
  external static num get BoxImpostor;
  external static num get PlaneImpostor;
  external static num get MeshImpostor;
  external static num get CapsuleImpostor;
  external static num get CylinderImpostor;
  external static num get ParticleImpostor;
  external static num get HeightmapImpostor;
  external static num get ConvexHullImpostor;
  external static num get CustomImpostor;
  external static num get RopeImpostor;
  external static num get ClothImpostor;
  external static num get SoftbodyImpostor;
  external set mass(num value);
  external set friction(num value);
  external set restitution(num value);
  external set pressure(num value);
  external set stiffness(num value);
  external set velocityIterations(num value);
  external set positionIterations(num value);
  external set parent(PhysicsImpostor value);
  external set physicsBody(dynamic physicsBody);
  external set object(IPhysicsEnabledObject object);
  external set type(num type);
  external static set DEFAULT_OBJECT_SIZE(Vector3 DEFAULT_OBJECT_SIZE);
  external static set IDENTITY_QUATERNION(Quaternion IDENTITY_QUATERNION);
  external set uniqueId(num uniqueId);
  external set soft(bool soft);
  external set segments(num segments);
  external set beforeStep(void Function() beforeStep);
  external set afterStep(void Function() afterStep);
  external set onCollideEvent(void Function(PhysicsImpostor collider, PhysicsImpostor collidedWith) onCollideEvent);
  external static set NoImpostor(num NoImpostor);
  external static set SphereImpostor(num SphereImpostor);
  external static set BoxImpostor(num BoxImpostor);
  external static set PlaneImpostor(num PlaneImpostor);
  external static set MeshImpostor(num MeshImpostor);
  external static set CapsuleImpostor(num CapsuleImpostor);
  external static set CylinderImpostor(num CylinderImpostor);
  external static set ParticleImpostor(num ParticleImpostor);
  external static set HeightmapImpostor(num HeightmapImpostor);
  external static set ConvexHullImpostor(num ConvexHullImpostor);
  external static set CustomImpostor(num CustomImpostor);
  external static set RopeImpostor(num RopeImpostor);
  external static set ClothImpostor(num ClothImpostor);
  external static set SoftbodyImpostor(num SoftbodyImpostor);
  external bool isBodyInitRequired();
  external void setScalingUpdated();
  external void forceUpdate();
  external void resetUpdateFlags();
  external Vector3 getObjectExtendSize();
  external Vector3 getObjectCenter();
  external dynamic getParam(String paramName);
  external void setParam(String paramName, num value);
  external void setMass(num mass);
  external Vector3 getLinearVelocity();
  external void setLinearVelocity(Vector3 velocity);
  external Vector3 getAngularVelocity();
  external void setAngularVelocity(Vector3 velocity);
  external void executeNativeFunction(void Function(dynamic world, dynamic physicsBody) func);
  external void registerBeforePhysicsStep(void Function(PhysicsImpostor impostor) func);
  external void unregisterBeforePhysicsStep(void Function(PhysicsImpostor impostor) func);
  external void registerAfterPhysicsStep(void Function(PhysicsImpostor impostor) func);
  external void unregisterAfterPhysicsStep(void Function(PhysicsImpostor impostor) func);
  external void registerOnPhysicsCollide(dynamic collideAgainst, void Function(PhysicsImpostor collider, PhysicsImpostor collidedAgainst) func);
  external void unregisterOnPhysicsCollide(dynamic collideAgainst, void Function(PhysicsImpostor collider, dynamic collidedAgainst) func);
  external Quaternion getParentsRotation();
  external PhysicsImpostor applyForce(Vector3 force, Vector3 contactPoint);
  external PhysicsImpostor applyImpulse(Vector3 force, Vector3 contactPoint);
  external PhysicsImpostor createJoint(PhysicsImpostor otherImpostor, num jointType, PhysicsJointData jointData);
  external PhysicsImpostor addJoint(PhysicsImpostor otherImpostor, PhysicsJoint joint);
  external PhysicsImpostor addAnchor(PhysicsImpostor otherImpostor, num width, num height, num influence, bool noCollisionBetweenLinkedBodies);
  external PhysicsImpostor addHook(PhysicsImpostor otherImpostor, num length, num influence, bool noCollisionBetweenLinkedBodies);
  external PhysicsImpostor sleep();
  external PhysicsImpostor wakeUp();
  external PhysicsImpostor clone(IPhysicsEnabledObject newObject);
  external void dispose();
  external void setDeltaPosition(Vector3 position);
  external void setDeltaRotation(Quaternion rotation);
  external PhysicsImpostor getBoxSizeToRef(Vector3 result);
  external num getRadius();
  external void syncBoneWithImpostor(Bone bone, AbstractMesh boneMesh, Vector3 jointPivot, [num distToJoint, Quaternion adjustRotation]);
  external void syncImpostorWithBone(Bone bone, AbstractMesh boneMesh, Vector3 jointPivot, [num distToJoint, Quaternion adjustRotation, Vector3 boneAxis]);
}
