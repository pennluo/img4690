#include "linear_blending.h"

cv::Mat linearBlending(const cv::Mat& img_1, const cv::Mat& img_2, const cv::Mat& weights)
{
  // TODO: Blend the two images according to the weights: result = weights*img_1 + (1-weights)*img_2
  // No need to loop through all pixels!
  // Hint: https://docs.opencv.org/3.3.1/d1/d10/classcv_1_1MatExpr.html
  return img_1.mul(weights) + img_2.mul(cv::Vec3f::all(1.0f) - weights);
}
