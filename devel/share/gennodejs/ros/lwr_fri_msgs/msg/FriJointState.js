// Auto-generated. Do not edit!

// (in-package lwr_fri_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class FriJointState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.msrJntPos = null;
      this.cmdJntPos = null;
      this.cmdJntPosFriOffset = null;
      this.msrJntTrq = null;
      this.estExtJntTrq = null;
      this.gravity = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
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
    // Serializes a message object of type FriJointState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
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
    //deserializes a message object of type FriJointState
    let len;
    let data = new FriJointState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
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
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 168;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lwr_fri_msgs/FriJointState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9b96281d768d86477f17b62daa820d6d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float32[7] msrJntPos
    float32[7] cmdJntPos
    float32[7] cmdJntPosFriOffset
    float32[7] msrJntTrq
    float32[7] estExtJntTrq
    float32[7] gravity
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FriJointState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

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

module.exports = FriJointState;
