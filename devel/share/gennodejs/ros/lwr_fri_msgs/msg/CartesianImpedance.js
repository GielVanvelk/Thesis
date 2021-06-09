// Auto-generated. Do not edit!

// (in-package lwr_fri_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class CartesianImpedance {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stiffness = null;
      this.damping = null;
    }
    else {
      if (initObj.hasOwnProperty('stiffness')) {
        this.stiffness = initObj.stiffness
      }
      else {
        this.stiffness = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('damping')) {
        this.damping = initObj.damping
      }
      else {
        this.damping = new geometry_msgs.msg.Twist();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CartesianImpedance
    // Serialize message field [stiffness]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.stiffness, buffer, bufferOffset);
    // Serialize message field [damping]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.damping, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CartesianImpedance
    let len;
    let data = new CartesianImpedance(null);
    // Deserialize message field [stiffness]
    data.stiffness = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [damping]
    data.damping = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 96;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lwr_fri_msgs/CartesianImpedance';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bd4dbca8475cfa8e858db7599bb64f48';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Twist stiffness
    geometry_msgs/Twist damping
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CartesianImpedance(null);
    if (msg.stiffness !== undefined) {
      resolved.stiffness = geometry_msgs.msg.Twist.Resolve(msg.stiffness)
    }
    else {
      resolved.stiffness = new geometry_msgs.msg.Twist()
    }

    if (msg.damping !== undefined) {
      resolved.damping = geometry_msgs.msg.Twist.Resolve(msg.damping)
    }
    else {
      resolved.damping = new geometry_msgs.msg.Twist()
    }

    return resolved;
    }
};

module.exports = CartesianImpedance;
