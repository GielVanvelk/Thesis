// Auto-generated. Do not edit!

// (in-package soem_ebox.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class EBOXOut {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.trigger = null;
      this.digital = null;
      this.analog = null;
      this.timestamp = null;
      this.encoder = null;
    }
    else {
      if (initObj.hasOwnProperty('trigger')) {
        this.trigger = initObj.trigger
      }
      else {
        this.trigger = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('digital')) {
        this.digital = initObj.digital
      }
      else {
        this.digital = new Array(8).fill(0);
      }
      if (initObj.hasOwnProperty('analog')) {
        this.analog = initObj.analog
      }
      else {
        this.analog = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = 0;
      }
      if (initObj.hasOwnProperty('encoder')) {
        this.encoder = initObj.encoder
      }
      else {
        this.encoder = new Array(2).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EBOXOut
    // Check that the constant length array field [trigger] has the right length
    if (obj.trigger.length !== 2) {
      throw new Error('Unable to serialize array field trigger - length must be 2')
    }
    // Serialize message field [trigger]
    bufferOffset = _arraySerializer.bool(obj.trigger, buffer, bufferOffset, 2);
    // Check that the constant length array field [digital] has the right length
    if (obj.digital.length !== 8) {
      throw new Error('Unable to serialize array field digital - length must be 8')
    }
    // Serialize message field [digital]
    bufferOffset = _arraySerializer.bool(obj.digital, buffer, bufferOffset, 8);
    // Check that the constant length array field [analog] has the right length
    if (obj.analog.length !== 2) {
      throw new Error('Unable to serialize array field analog - length must be 2')
    }
    // Serialize message field [analog]
    bufferOffset = _arraySerializer.float32(obj.analog, buffer, bufferOffset, 2);
    // Serialize message field [timestamp]
    bufferOffset = _serializer.uint32(obj.timestamp, buffer, bufferOffset);
    // Check that the constant length array field [encoder] has the right length
    if (obj.encoder.length !== 2) {
      throw new Error('Unable to serialize array field encoder - length must be 2')
    }
    // Serialize message field [encoder]
    bufferOffset = _arraySerializer.int32(obj.encoder, buffer, bufferOffset, 2);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EBOXOut
    let len;
    let data = new EBOXOut(null);
    // Deserialize message field [trigger]
    data.trigger = _arrayDeserializer.bool(buffer, bufferOffset, 2)
    // Deserialize message field [digital]
    data.digital = _arrayDeserializer.bool(buffer, bufferOffset, 8)
    // Deserialize message field [analog]
    data.analog = _arrayDeserializer.float32(buffer, bufferOffset, 2)
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [encoder]
    data.encoder = _arrayDeserializer.int32(buffer, bufferOffset, 2)
    return data;
  }

  static getMessageSize(object) {
    return 30;
  }

  static datatype() {
    // Returns string type for a message object
    return 'soem_ebox/EBOXOut';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2e8010960c65b8a2e79190aa526151a3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool[2] trigger
    bool[8] digital
    float32[2] analog
    uint32 timestamp
    int32[2] encoder
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EBOXOut(null);
    if (msg.trigger !== undefined) {
      resolved.trigger = msg.trigger;
    }
    else {
      resolved.trigger = new Array(2).fill(0)
    }

    if (msg.digital !== undefined) {
      resolved.digital = msg.digital;
    }
    else {
      resolved.digital = new Array(8).fill(0)
    }

    if (msg.analog !== undefined) {
      resolved.analog = msg.analog;
    }
    else {
      resolved.analog = new Array(2).fill(0)
    }

    if (msg.timestamp !== undefined) {
      resolved.timestamp = msg.timestamp;
    }
    else {
      resolved.timestamp = 0
    }

    if (msg.encoder !== undefined) {
      resolved.encoder = msg.encoder;
    }
    else {
      resolved.encoder = new Array(2).fill(0)
    }

    return resolved;
    }
};

module.exports = EBOXOut;
