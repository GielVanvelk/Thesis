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

class PSUMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.power_ok = null;
      this.overload = null;
    }
    else {
      if (initObj.hasOwnProperty('power_ok')) {
        this.power_ok = initObj.power_ok
      }
      else {
        this.power_ok = false;
      }
      if (initObj.hasOwnProperty('overload')) {
        this.overload = initObj.overload
      }
      else {
        this.overload = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PSUMsg
    // Serialize message field [power_ok]
    bufferOffset = _serializer.bool(obj.power_ok, buffer, bufferOffset);
    // Serialize message field [overload]
    bufferOffset = _serializer.bool(obj.overload, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PSUMsg
    let len;
    let data = new PSUMsg(null);
    // Deserialize message field [power_ok]
    data.power_ok = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [overload]
    data.overload = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'soem_beckhoff_drivers/PSUMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1d640ba06d2b65ae841e25741b04ea2c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool power_ok
    bool overload
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PSUMsg(null);
    if (msg.power_ok !== undefined) {
      resolved.power_ok = msg.power_ok;
    }
    else {
      resolved.power_ok = false
    }

    if (msg.overload !== undefined) {
      resolved.overload = msg.overload;
    }
    else {
      resolved.overload = false
    }

    return resolved;
    }
};

module.exports = PSUMsg;
