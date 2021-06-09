# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from soem_ebox/EBOXOut.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class EBOXOut(genpy.Message):
  _md5sum = "2e8010960c65b8a2e79190aa526151a3"
  _type = "soem_ebox/EBOXOut"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """bool[2] trigger
bool[8] digital
float32[2] analog
uint32 timestamp
int32[2] encoder"""
  __slots__ = ['trigger','digital','analog','timestamp','encoder']
  _slot_types = ['bool[2]','bool[8]','float32[2]','uint32','int32[2]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       trigger,digital,analog,timestamp,encoder

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(EBOXOut, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.trigger is None:
        self.trigger = [False] * 2
      if self.digital is None:
        self.digital = [False] * 8
      if self.analog is None:
        self.analog = [0.] * 2
      if self.timestamp is None:
        self.timestamp = 0
      if self.encoder is None:
        self.encoder = [0] * 2
    else:
      self.trigger = [False] * 2
      self.digital = [False] * 8
      self.analog = [0.] * 2
      self.timestamp = 0
      self.encoder = [0] * 2

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
      buff.write(_get_struct_2B().pack(*self.trigger))
      buff.write(_get_struct_8B().pack(*self.digital))
      buff.write(_get_struct_2f().pack(*self.analog))
      _x = self.timestamp
      buff.write(_get_struct_I().pack(_x))
      buff.write(_get_struct_2i().pack(*self.encoder))
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
      end += 2
      self.trigger = _get_struct_2B().unpack(str[start:end])
      self.trigger = list(map(bool, self.trigger))
      start = end
      end += 8
      self.digital = _get_struct_8B().unpack(str[start:end])
      self.digital = list(map(bool, self.digital))
      start = end
      end += 8
      self.analog = _get_struct_2f().unpack(str[start:end])
      start = end
      end += 4
      (self.timestamp,) = _get_struct_I().unpack(str[start:end])
      start = end
      end += 8
      self.encoder = _get_struct_2i().unpack(str[start:end])
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
      buff.write(self.trigger.tostring())
      buff.write(self.digital.tostring())
      buff.write(self.analog.tostring())
      _x = self.timestamp
      buff.write(_get_struct_I().pack(_x))
      buff.write(self.encoder.tostring())
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
      end += 2
      self.trigger = numpy.frombuffer(str[start:end], dtype=numpy.bool, count=2)
      self.trigger = list(map(bool, self.trigger))
      start = end
      end += 8
      self.digital = numpy.frombuffer(str[start:end], dtype=numpy.bool, count=8)
      self.digital = list(map(bool, self.digital))
      start = end
      end += 8
      self.analog = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=2)
      start = end
      end += 4
      (self.timestamp,) = _get_struct_I().unpack(str[start:end])
      start = end
      end += 8
      self.encoder = numpy.frombuffer(str[start:end], dtype=numpy.int32, count=2)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2B = None
def _get_struct_2B():
    global _struct_2B
    if _struct_2B is None:
        _struct_2B = struct.Struct("<2B")
    return _struct_2B
_struct_2f = None
def _get_struct_2f():
    global _struct_2f
    if _struct_2f is None:
        _struct_2f = struct.Struct("<2f")
    return _struct_2f
_struct_2i = None
def _get_struct_2i():
    global _struct_2i
    if _struct_2i is None:
        _struct_2i = struct.Struct("<2i")
    return _struct_2i
_struct_8B = None
def _get_struct_8B():
    global _struct_8B
    if _struct_8B is None:
        _struct_8B = struct.Struct("<8B")
    return _struct_8B