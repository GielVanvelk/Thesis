// Auto-generated. Do not edit!

// (in-package soem_beckhoff_drivers.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CommMsg = require('./CommMsg.js');

//-----------------------------------------------------------

class CommMsgBig {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.channels = null;
    }
    else {
      if (initObj.hasOwnProperty('channels')) {
        this.channels = initObj.channels
      }
      else {
        this.channels = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CommMsgBig
    // Serialize message field [channels]
    // Serialize the length for message field [channels]
    bufferOffset = _serializer.uint32(obj.channels.length, buffer, bufferOffset);
    obj.channels.forEach((val) => {
      bufferOffset = CommMsg.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CommMsgBig
    let len;
    let data = new CommMsgBig(null);
    // Deserialize message field [channels]
    // Deserialize array length for message field [channels]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.channels = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.channels[i] = CommMsg.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.channels.forEach((val) => {
      length += CommMsg.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'soem_beckhoff_drivers/CommMsgBig';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9a82f040b0f86ae1565e078936798d4c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    CommMsg[] channels
    
    ================================================================================
    MSG: soem_beckhoff_drivers/CommMsg
    uint8[] datapacket
    uint8 datasize
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CommMsgBig(null);
    if (msg.channels !== undefined) {
      resolved.channels = new Array(msg.channels.length);
      for (let i = 0; i < resolved.channels.length; ++i) {
        resolved.channels[i] = CommMsg.Resolve(msg.channels[i]);
      }
    }
    else {
      resolved.channels = []
    }

    return resolved;
    }
};

module.exports = CommMsgBig;
