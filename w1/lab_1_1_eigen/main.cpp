#include "Eigen/Eigen"
#include <iostream>

int main()
{
//  Eigen::Matrix3d mat = Eigen::Matrix3d::Zero();
//  std::cout << mat;

  Eigen::Vector3f t;
  t << 1.0, 0.0, 3.0;
  std::cout << 't' << std::endl;
  std::cout << t << '\n';

  Eigen::Matrix3f A;
  A << 1.0, 0.0, 3.0,
       4.0, 5.0, 6.0,
       7.0, 8.0, 9.0;
  std::cout << 'A' << std::endl;
  std::cout << A << '\n';

  Eigen::Matrix3f I;
  I << 1.0, 0.0, 0.0,
       0.0, 1.0, 0.0,
       0.0, 0.0, 1.0;
  std::cout << 'I' << std::endl;
  std::cout << I << '\n';



}
