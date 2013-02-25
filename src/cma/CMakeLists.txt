ADD_LIBRARY(cmaes SHARED cmaes.c)
#INCLUDE(${SWIG_USE_FILE})

#SWIG_ADD_MODULE(cmaes cffi cmaes.i cmaes.c)

