#pragma once

#define Avc2CodeValid 1

#if Avc2CodeValid

#define Avc2CommandLine 1
#define FrameIFixedVersion1 1
#define FrameIFixedVersion2 0
#define ReferenceFrameFixed 1
#define SpsFixed 1
#define DecFrameFixed 1
#define IntraBlockCopy_16_16 1
#define IntraBlockCopy_8_8 1
#define Avc2CliLog 1
#define RecFrameOutput 1
#define BatResOutput 1
#define Pixel_pred 0
#define MotionVectorOutout 0
#define unfilter_frame_correct 1
#define WriteSei 1
#define HashME 1
#define PrintHashInfo 1
#define Hash_16 0
#define Hash_8 1

int StrideY_twopass;
int StrideUV_twopass;
unsigned char * Pixel_pred_bufY;

#else

#define Avc2CommandLine 0
#define FrameIFixedVersion1 0
#define FrameIFixedVersion2 0
#define ReferenceFrameFixed 0
#define SpsFixed 0
#define DecFrameFixed 0
#define IntraBlockCopy_16_16 0
#define IntraBlockCopy_8_8 0
#define Avc2CliLog 0
#define RecFrameOutput 0
#define RecFrameOutput 0
#define BatResOutput 0

#endif

#if HashME
#define INTRABC_HASH_TABLESIZE 65536
#endif // HashME

#if PrintHashInfo
#define PrintPixelKey 1
#define PrintKeyNum 0
#endif