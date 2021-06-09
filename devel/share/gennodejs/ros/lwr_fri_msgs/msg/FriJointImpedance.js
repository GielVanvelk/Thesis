// Auto-generated. Do not edit!

// (in-package lwr_fri_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class FriJointImpedance {
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
        this.stiffness = new Array(7).fill(0);
      }
      if (initObj.hasOwnProperty('damping')) {
        this.damping = initObj.damping
      }
      else {
        this.damping = new Array(7).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FriJointImpedance
    // Check that the constant length array field [stiffness] has the right length
    if (obj.stiffness.length !== 7) {
      throw new Error('Unable to serialize array field stiffness - length must be 7')
    }
    // Serialize message field [stiffness]
    bufferOffset = _arraySerializer.float32(obj.stiffness, buffer, bufferOffset, 7);
    // Check that the constant length array field [damping] has the right length
    if (obj.damping.length !== 7) {
      throw new Error('Unable to serialize array field damping - length must be 7')
    }
    // Serialize message field [damping]
    bufferOffset = _arraySerializer.float32(obj.damping, buffer, bufferOffset, 7);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FriJointImpedance
    let len;
    let data = new FriJointImpedance(null);
    // Deserialize message field [stiffness]
    data.stiffness = _arrayDeserializer.float32(buffer, bufferOffset, 7)
    // Deserialize message field [damping]
    data.damping = _arrayDeserializer.float32(buffer, bufferOffset, 7)
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lwr_fri_msgs/FriJointImpedance';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0d99cffe99f4e45e313ffa6bb7c0de4e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[7] stiffness
    float32[7] damping
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FriJointImpedance(null);
    if (msg.stiffness !== undefined) {
      resolved.stiffness = msg.stiffness;
    }
    else {
      resolved.stiffness = new Array(7).fill(0)
    }

    if (msg.damping !== undefined) {
      resolved.damping = msg.damping;
    }
    else {
      resolved.damping = new Array(7).fill(0)
    }

    return resolved;
    }
};

module.exports = FriJointImpedance;
