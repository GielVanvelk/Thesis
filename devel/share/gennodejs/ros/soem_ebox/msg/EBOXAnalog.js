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

class EBOXAnalog {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.analog = null;
    }
    else {
      if (initObj.hasOwnProperty('analog')) {
        this.analog = initObj.analog
      }
      else {
        this.analog = new Array(2).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EBOXAnalog
    // Check that the constant length array field [analog] has the right length
    if (obj.analog.length !== 2) {
      throw new Error('Unable to serialize array field analog - length must be 2')
    }
    // Serialize message field [analog]
    bufferOffset = _arraySerializer.float32(obj.analog, buffer, bufferOffset, 2);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EBOXAnalog
    let len;
    let data = new EBOXAnalog(null);
    // Deserialize message field [analog]
    data.analog = _arrayDeserializer.float32(buffer, bufferOffset, 2)
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'soem_ebox/EBOXAnalog';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'da0d2d69b62902fa94381342826fb037';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[2] analog
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EBOXAnalog(null);
    if (msg.analog !== undefined) {
      resolved.analog = msg.analog;
    }
    else {
      resolved.analog = new Array(2).fill(0)
    }

    return resolved;
    }
};

module.exports = EBOXAnalog;
