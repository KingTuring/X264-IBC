#pragma once

#define Avc2CodeValid 0

#if Avc2CodeValid

#define Avc2CommandLine 1
#define FrameIFixedVersion1 1
#define FrameIFixedVersion2 0
#define ReferenceFrameFixed 1
#define SpsFixed 0
#define DecFrameFixed 1
#define IntraBlockCopy_16_16 1
#define IntraBlockCopy_8_8 1
#define Avc2CliLog 1
#define RecFrameOutput 1
#define BatResOutput 1

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
#define BatResOutput 0

#endif