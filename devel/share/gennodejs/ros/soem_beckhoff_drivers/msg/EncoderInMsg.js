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

class EncoderInMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.value = null;
      this.latch = null;
      this.frequency = null;
      this.period = null;
      this.window = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
      if (initObj.hasOwnProperty('latch')) {
        this.latch = initObj.latch
      }
      else {
        this.latch = 0;
      }
      if (initObj.hasOwnProperty('frequency')) {
        this.frequency = initObj.frequency
      }
      else {
        this.frequency = 0;
      }
      if (initObj.hasOwnProperty('period')) {
        this.period = initObj.period
      }
      else {
        this.period = 0;
      }
      if (initObj.hasOwnProperty('window')) {
        this.window = initObj.window
      }
      else {
        this.window = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EncoderInMsg
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = _serializer.uint16(obj.value, buffer, bufferOffset);
    // Serialize message field [latch]
    bufferOffset = _serializer.uint16(obj.latch, buffer, bufferOffset);
    // Serialize message field [frequency]
    bufferOffset = _serializer.uint32(obj.frequency, buffer, bufferOffset);
    // Serialize message field [period]
    bufferOffset = _serializer.uint16(obj.period, buffer, bufferOffset);
    // Serialize message field [window]
    bufferOffset = _serializer.uint16(obj.window, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EncoderInMsg
    let len;
    let data = new EncoderInMsg(null);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [latch]
    data.latch = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [frequency]
    data.frequency = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [period]
    data.period = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [window]
    data.window = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'soem_beckhoff_drivers/EncoderInMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b22beb20aeb227634f7e90cad065f8e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 status
    uint16 value
    uint16 latch
    uint32 frequency
    uint16 period
    uint16 window
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EncoderInMsg(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    if (msg.latch !== undefined) {
      resolved.latch = msg.latch;
    }
    else {
      resolved.latch = 0
    }

    if (msg.frequency !== undefined) {
      resolved.frequency = msg.frequency;
    }
    else {
      resolved.frequency = 0
    }

    if (msg.period !== undefined) {
      resolved.period = msg.period;
    }
    else {
      resolved.period = 0
    }

    if (msg.window !== undefined) {
      resolved.window = msg.window;
    }
    else {
      resolved.window = 0
    }

    return resolved;
    }
};

module.exports = EncoderInMsg;
