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

class EBOXDigital {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.digital = null;
    }
    else {
      if (initObj.hasOwnProperty('digital')) {
        this.digital = initObj.digital
      }
      else {
        this.digital = new Array(8).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EBOXDigital
    // Check that the constant length array field [digital] has the right length
    if (obj.digital.length !== 8) {
      throw new Error('Unable to serialize array field digital - length must be 8')
    }
    // Serialize message field [digital]
    bufferOffset = _arraySerializer.bool(obj.digital, buffer, bufferOffset, 8);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EBOXDigital
    let len;
    let data = new EBOXDigital(null);
    // Deserialize message field [digital]
    data.digital = _arrayDeserializer.bool(buffer, bufferOffset, 8)
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'soem_ebox/EBOXDigital';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aec3537187e55892c1c92ecc0b9bccdf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool[8] digital
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EBOXDigital(null);
    if (msg.digital !== undefined) {
      resolved.digital = msg.digital;
    }
    else {
      resolved.digital = new Array(8).fill(0)
    }

    return resolved;
    }
};

module.exports = EBOXDigital;
