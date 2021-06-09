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

class FriRobotJntData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.msrJntPos = null;
      this.cmdJntPos = null;
      this.cmdJntPosFriOffset = null;
      this.msrJntTrq = null;
      this.estExtJntTrq = null;
      this.gravity = null;
    }
    else {
      if (initObj.hasOwnProperty('msrJntPos')) {
        this.msrJntPos = initObj.msrJntPos
      }
      else {
        this.msrJntPos = new Array(7).fill(0);
      }
      if (initObj.hasOwnProperty('cmdJntPos')) {
        this.cmdJntPos = initObj.cmdJntPos
      }
      else {
        this.cmdJntPos = new Array(7).fill(0);
      }
      if (initObj.hasOwnProperty('cmdJntPosFriOffset')) {
        this.cmdJntPosFriOffset = initObj.cmdJntPosFriOffset
      }
      else {
        this.cmdJntPosFriOffset = new Array(7).fill(0);
      }
      if (initObj.hasOwnProperty('msrJntTrq')) {
        this.msrJntTrq = initObj.msrJntTrq
      }
      else {
        this.msrJntTrq = new Array(7).fill(0);
      }
      if (initObj.hasOwnProperty('estExtJntTrq')) {
        this.estExtJntTrq = initObj.estExtJntTrq
      }
      else {
        this.estExtJntTrq = new Array(7).fill(0);
      }
      if (initObj.hasOwnProperty('gravity')) {
        this.gravity = initObj.gravity
      }
      else {
        this.gravity = new Array(7).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FriRobotJntData
    // Check that the constant length array field [msrJntPos] has the right length
    if (obj.msrJntPos.length !== 7) {
      throw new Error('Unable to serialize array field msrJntPos - length must be 7')
    }
    // Serialize message field [msrJntPos]
    bufferOffset = _arraySerializer.float32(obj.msrJntPos, buffer, bufferOffset, 7);
    // Check that the constant length array field [cmdJntPos] has the right length
    if (obj.cmdJntPos.length !== 7) {
      throw new Error('Unable to serialize array field cmdJntPos - length must be 7')
    }
    // Serialize message field [cmdJntPos]
    bufferOffset = _arraySerializer.float32(obj.cmdJntPos, buffer, bufferOffset, 7);
    // Check that the constant length array field [cmdJntPosFriOffset] has the right length
    if (obj.cmdJntPosFriOffset.length !== 7) {
      throw new Error('Unable to serialize array field cmdJntPosFriOffset - length must be 7')
    }
    // Serialize message field [cmdJntPosFriOffset]
    bufferOffset = _arraySerializer.float32(obj.cmdJntPosFriOffset, buffer, bufferOffset, 7);
    // Check that the constant length array field [msrJntTrq] has the right length
    if (obj.msrJntTrq.length !== 7) {
      throw new Error('Unable to serialize array field msrJntTrq - length must be 7')
    }
    // Serialize message field [msrJntTrq]
    bufferOffset = _arraySerializer.float32(obj.msrJntTrq, buffer, bufferOffset, 7);
    // Check that the constant length array field [estExtJntTrq] has the right length
    if (obj.estExtJntTrq.length !== 7) {
      throw new Error('Unable to serialize array field estExtJntTrq - length must be 7')
    }
    // Serialize message field [estExtJntTrq]
    bufferOffset = _arraySerializer.float32(obj.estExtJntTrq, buffer, bufferOffset, 7);
    // Check that the constant length array field [gravity] has the right length
    if (obj.gravity.length !== 7) {
      throw new Error('Unable to serialize array field gravity - length must be 7')
    }
    // Serialize message field [gravity]
    bufferOffset = _arraySerializer.float32(obj.gravity, buffer, bufferOffset, 7);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FriRobotJntData
    let len;
    let data = new FriRobotJntData(null);
    // Deserialize message field [msrJntPos]
    data.msrJntPos = _arrayDeserializer.float32(buffer, bufferOffset, 7)
    // Deserialize message field [cmdJntPos]
    data.cmdJntPos = _arrayDeserializer.float32(buffer, bufferOffset, 7)
    // Deserialize message field [cmdJntPosFriOffset]
    data.cmdJntPosFriOffset = _arrayDeserializer.float32(buffer, bufferOffset, 7)
    // Deserialize message field [msrJntTrq]
    data.msrJntTrq = _arrayDeserializer.float32(buffer, bufferOffset, 7)
    // Deserialize message field [estExtJntTrq]
    data.estExtJntTrq = _arrayDeserializer.float32(buffer, bufferOffset, 7)
    // Deserialize message field [gravity]
    data.gravity = _arrayDeserializer.float32(buffer, bufferOffset, 7)
    return data;
  }

  static getMessageSize(object) {
    return 168;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lwr_fri_msgs/FriRobotJntData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0aaff558814188d51a3ef7a1023d53a7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[7] msrJntPos
    float32[7] cmdJntPos
    float32[7] cmdJntPosFriOffset
    float32[7] msrJntTrq
    float32[7] estExtJntTrq
    float32[7] gravity
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FriRobotJntData(null);
    if (msg.msrJntPos !== undefined) {
      resolved.msrJntPos = msg.msrJntPos;
    }
    else {
      resolved.msrJntPos = new Array(7).fill(0)
    }

    if (msg.cmdJntPos !== undefined) {
      resolved.cmdJntPos = msg.cmdJntPos;
    }
    else {
      resolved.cmdJntPos = new Array(7).fill(0)
    }

    if (msg.cmdJntPosFriOffset !== undefined) {
      resolved.cmdJntPosFriOffset = msg.cmdJntPosFriOffset;
    }
    else {
      resolved.cmdJntPosFriOffset = new Array(7).fill(0)
    }

    if (msg.msrJntTrq !== undefined) {
      resolved.msrJntTrq = msg.msrJntTrq;
    }
    else {
      resolved.msrJntTrq = new Array(7).fill(0)
    }

    if (msg.estExtJntTrq !== undefined) {
      resolved.estExtJntTrq = msg.estExtJntTrq;
    }
    else {
      resolved.estExtJntTrq = new Array(7).fill(0)
    }

    if (msg.gravity !== undefined) {
      resolved.gravity = msg.gravity;
    }
    else {
      resolved.gravity = new Array(7).fill(0)
    }

    return resolved;
    }
};

module.exports = FriRobotJntData;
