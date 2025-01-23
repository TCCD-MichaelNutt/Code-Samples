// C++
#include <iostream>
#include <string>

void greet(std::string world) {
  std::cout << "Hello, " << world << "!" << std::endl;
}

int main() {
  greet("World");
  return 0;
}