#include <opencv.hpp>

using namespace cv;
int main(int argc, char **argv)
{
  Mat image;
  image = imread(argv[1], 1);
  namedWindow("Display Image", CV_WINDOW_AUTOSIZE);
  imshow("Display Image", image);
  waitKey(0);
  return 0;
}