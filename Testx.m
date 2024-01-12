classdef Testx < handle

  properties (SetAccess = private, GetAccess = public)

    x;
    Ts;

  endproperties


  methods
    #constructor
    function self = Testx (x)
      self.x = x;
      self.Ts = 6;

      disp ("New instance createdsewe.");

    endfunction


    function sam(self, a , b)
      self.Ts = a+b;


    endfunction

  endmethods
endclassdef

