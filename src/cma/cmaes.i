%module cmaes
%{
  #include "cmaes_interface.h"
%}
%insert("lisphead")  %{
  (in-package :cl-cmaes)
%}
%include "cmaes.h"
%include "cmaes_interface.h" 
