// Auto-generated. Do not edit!

// (in-package soem_beckhoff_drivers.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class CommMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.datapacket = null;
      this.datasize = null;
    }
    else {
      if (initObj.hasOwnProperty('datapacket')) {
        this.datapacket = initObj.datapacket
      }
      else {
        this.datapacket = [];
      }
      if (initObj.hasOwnProperty('datasize')) {
        this.datasize = initObj.datasize
      }
      else {
        this.datasize = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CommMsg
    // Serialize message field [datapacket]
    bufferOffset = _arraySerializer.uint8(obj.datapacket, buffer, bufferOffset, null);
    // Serialize message field [datasize]
    bufferOffset = _serializer.uint8(obj.datasize, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CommMsg
    let len;
    let data = new CommMsg(null);
    // Deserialize message field [datapacket]
    data.datapacket = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [datasize]
    data.datasize = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.datapacket.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'soem_beckhoff_drivers/CommMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8312abb0799e3ce28f5c343af99bc5eb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8[] datapacket
    uint8 datasize
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CommMsg(null);
    if (msg.datapacket !== undefined) {
      resolved.datapacket = msg.datapacket;
    }
    else {
      resolved.datapacket = []
    }

    if (msg.datasize !== undefined) {
      resolved.datasize = msg.datasize;
    }
    else {
      resolved.datasize = 0
    }

    return resolved;
    }
};

module.exports = CommMsg;
