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

class FriRobotData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.msrJntPos = null;
      this.cmdJntPos = null;
      this.cmdJntPosFriOffset = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FriRobotData
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
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FriRobotData
    let len;
    let data = new FriRobotData(null);
    // Deserialize message field [msrJntPos]
    data.msrJntPos = _arrayDeserializer.float32(buffer, bufferOffset, 7)
    // Deserialize message field [cmdJntPos]
    data.cmdJntPos = _arrayDeserializer.float32(buffer, bufferOffset, 7)
    // Deserialize message field [cmdJntPosFriOffset]
    data.cmdJntPosFriOffset = _arrayDeserializer.float32(buffer, bufferOffset, 7)
    return data;
  }

  static getMessageSize(object) {
    return 84;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lwr_fri_msgs/FriRobotData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e89d68aab24b9a7050d5809b14a4e699';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[7] msrJntPos
    float32[7] cmdJntPos
    float32[7] cmdJntPosFriOffset
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FriRobotData(null);
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

    return resolved;
    }
};

module.exports = FriRobotData;
