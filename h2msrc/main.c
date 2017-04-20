#include <stdio.h>  
#include "MP4Encoder.h"  
  
int main(int argc, char** argv)  
{  
    MP4Encoder mp4Encoder;  
    // convert H264 file to mp4 file  
    mp4Encoder.WriteH264File(argv[1], argv[2]);  
}
