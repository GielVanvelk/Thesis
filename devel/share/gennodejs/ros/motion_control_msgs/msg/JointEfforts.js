// Auto-generated. Do not edit!

// (in-package motion_control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class JointEfforts {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.names = null;
      this.efforts = null;
    }
    else {
      if (initObj.hasOwnProperty('names')) {
        this.names = initObj.names
      }
      else {
        this.names = [];
      }
      if (initObj.hasOwnProperty('efforts')) {
        this.efforts = initObj.efforts
      }
      else {
        this.efforts = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointEfforts
    // Serialize message field [names]
    bufferOffset = _arraySerializer.string(obj.names, buffer, bufferOffset, null);
    // Serialize message field [efforts]
    bufferOffset = _arraySerializer.float64(obj.efforts, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointEfforts
    let len;
    let data = new JointEfforts(null);
    // Deserialize message field [names]
    data.names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [efforts]
    data.efforts = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.names.forEach((val) => {
      length += 4 + val.length;
    });
    length += 8 * object.efforts.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'motion_control_msgs/JointEfforts';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b6430b8ec0693b7af8da0bcb29973d67';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] names
    float64[] efforts
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointEfforts(null);
    if (msg.names !== undefined) {
      resolved.names = msg.names;
    }
    else {
      resolved.names = []
    }

    if (msg.efforts !== undefined) {
      resolved.efforts = msg.efforts;
    }
    else {
      resolved.efforts = []
    }

    return resolved;
    }
};

module.exports = JointEfforts;
