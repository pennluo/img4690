#ifndef LAB_2_BLENDING_LAB_2_H
#define LAB_2_BLENDING_LAB_2_H

#include "opencv2/core.hpp"

/// \brief Runs lab 2.
void lab2();

/// \brief Shows an image in a window with the corresponding title.
/// \param title Window title (and name).
/// \param img The image to show.
void showResult(const std::string& title, cv::Mat img);

#endif //LAB_2_BLENDING_LAB_2_H
