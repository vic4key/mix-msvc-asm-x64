// Sample.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <iostream>

extern "C" void F1();
extern "C" unsigned long fnNtGetCurrentProcessorNumber();

void F2()
{
  std::cout << "I am F2() in C++." << std::endl;
}

void F3()
{
  std::cout << "I am F3() : " << fnNtGetCurrentProcessorNumber() << std::endl;
}

int _tmain(int argc, _TCHAR* argv[])
{
  F1();
  F2();
  F3();
  return 0;
}