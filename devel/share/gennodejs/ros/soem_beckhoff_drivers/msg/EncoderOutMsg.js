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

class EncoderOutMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.control = null;
      this.outvalue = null;
    }
    else {
      if (initObj.hasOwnProperty('control')) {
        this.control = initObj.control
      }
      else {
        this.control = 0;
      }
      if (initObj.hasOwnProperty('outvalue')) {
        this.outvalue = initObj.outvalue
      }
      else {
        this.outvalue = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EncoderOutMsg
    // Serialize message field [control]
    bufferOffset = _serializer.uint8(obj.control, buffer, bufferOffset);
    // Serialize message field [outvalue]
    bufferOffset = _serializer.uint16(obj.outvalue, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EncoderOutMsg
    let len;
    let data = new EncoderOutMsg(null);
    // Deserialize message field [control]
    data.control = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [outvalue]
    data.outvalue = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'soem_beckhoff_drivers/EncoderOutMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '297826ed745b96cde20150fa2f0950c2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 control
    uint16 outvalue
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EncoderOutMsg(null);
    if (msg.control !== undefined) {
      resolved.control = msg.control;
    }
    else {
      resolved.control = 0
    }

    if (msg.outvalue !== undefined) {
      resolved.outvalue = msg.outvalue;
    }
    else {
      resolved.outvalue = 0
    }

    return resolved;
    }
};

module.exports = EncoderOutMsg;
