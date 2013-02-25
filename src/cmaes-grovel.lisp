;;; Copyright (c) 2012 Yannick Drant, Matthieu Lagacherie, All Rights Reserved

(in-package :cl-cmaes)

(include "cmaes_interface.h")
(cc-flags "-Isrc/cma")

(cstruct cmaes "cmaes_t")

