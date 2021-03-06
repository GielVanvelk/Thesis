# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from lwr_fri_msgs/FriJointCommand.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class FriJointCommand(genpy.Message):
  _md5sum = "10f89dabbe358204afa3f190e7d10f5f"
  _type = "lwr_fri_msgs/FriJointCommand"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """float32[7] jntPos
float32[7] jntVel
float32[7] addJntTrq """
  __slots__ = ['jntPos','jntVel','addJntTrq']
  _slot_types = ['float32[7]','float32[7]','float32[7]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       jntPos,jntVel,addJntTrq

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(FriJointCommand, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.jntPos is None:
        self.jntPos = [0.] * 7
      if self.jntVel is None:
        self.jntVel = [0.] * 7
      if self.addJntTrq is None:
        self.addJntTrq = [0.] * 7
    else:
      self.jntPos = [0.] * 7
      self.jntVel = [0.] * 7
      self.addJntTrq = [0.] * 7

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      buff.write(_get_struct_7f().pack(*self.jntPos))
      buff.write(_get_struct_7f().pack(*self.jntVel))
      buff.write(_get_struct_7f().pack(*self.addJntTrq))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 28
      self.jntPos = _get_struct_7f().unpack(str[start:end])
      start = end
      end += 28
      self.jntVel = _get_struct_7f().unpack(str[start:end])
      start = end
      end += 28
      self.addJntTrq = _get_struct_7f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      buff.write(self.jntPos.tostring())
      buff.write(self.jntVel.tostring())
      buff.write(self.addJntTrq.tostring())
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 28
      self.jntPos = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=7)
      start = end
      end += 28
      self.jntVel = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=7)
      start = end
      end += 28
      self.addJntTrq = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=7)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_7f = None
def _get_struct_7f():
    global _struct_7f
    if _struct_7f is None:
        _struct_7f = struct.Struct("<7f")
    return _struct_7f
