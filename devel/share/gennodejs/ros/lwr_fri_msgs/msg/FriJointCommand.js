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

class FriJointCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.jntPos = null;
      this.jntVel = null;
      this.addJntTrq = null;
    }
    else {
      if (initObj.hasOwnProperty('jntPos')) {
        this.jntPos = initObj.jntPos
      }
      else {
        this.jntPos = new Array(7).fill(0);
      }
      if (initObj.hasOwnProperty('jntVel')) {
        this.jntVel = initObj.jntVel
      }
      else {
        this.jntVel = new Array(7).fill(0);
      }
      if (initObj.hasOwnProperty('addJntTrq')) {
        this.addJntTrq = initObj.addJntTrq
      }
      else {
        this.addJntTrq = new Array(7).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FriJointCommand
    // Check that the constant length array field [jntPos] has the right length
    if (obj.jntPos.length !== 7) {
      throw new Error('Unable to serialize array field jntPos - length must be 7')
    }
    // Serialize message field [jntPos]
    bufferOffset = _arraySerializer.float32(obj.jntPos, buffer, bufferOffset, 7);
    // Check that the constant length array field [jntVel] has the right length
    if (obj.jntVel.length !== 7) {
      throw new Error('Unable to serialize array field jntVel - length must be 7')
    }
    // Serialize message field [jntVel]
    bufferOffset = _arraySerializer.float32(obj.jntVel, buffer, bufferOffset, 7);
    // Check that the constant length array field [addJntTrq] has the right length
    if (obj.addJntTrq.length !== 7) {
      throw new Error('Unable to serialize array field addJntTrq - length must be 7')
    }
    // Serialize message field [addJntTrq]
    bufferOffset = _arraySerializer.float32(obj.addJntTrq, buffer, bufferOffset, 7);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FriJointCommand
    let len;
    let data = new FriJointCommand(null);
    // Deserialize message field [jntPos]
    data.jntPos = _arrayDeserializer.float32(buffer, bufferOffset, 7)
    // Deserialize message field [jntVel]
    data.jntVel = _arrayDeserializer.float32(buffer, bufferOffset, 7)
    // Deserialize message field [addJntTrq]
    data.addJntTrq = _arrayDeserializer.float32(buffer, bufferOffset, 7)
    return data;
  }

  static getMessageSize(object) {
    return 84;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lwr_fri_msgs/FriJointCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '10f89dabbe358204afa3f190e7d10f5f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[7] jntPos
    float32[7] jntVel
    float32[7] addJntTrq 
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FriJointCommand(null);
    if (msg.jntPos !== undefined) {
      resolved.jntPos = msg.jntPos;
    }
    else {
      resolved.jntPos = new Array(7).fill(0)
    }

    if (msg.jntVel !== undefined) {
      resolved.jntVel = msg.jntVel;
    }
    else {
      resolved.jntVel = new Array(7).fill(0)
    }

    if (msg.addJntTrq !== undefined) {
      resolved.addJntTrq = msg.addJntTrq;
    }
    else {
      resolved.addJntTrq = new Array(7).fill(0)
    }

    return resolved;
    }
};

module.exports = FriJointCommand;
