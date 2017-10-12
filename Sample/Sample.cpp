// Sample.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <iostream>

extern "C" void F1();
extern "C" void F2();

void F3()
{
  std::cout << "I am F3() from cpp code." << std::endl;
}

int _tmain(int argc, _TCHAR* argv[])
{
  F1();
  F2();
  F3();
  return 0;
}
