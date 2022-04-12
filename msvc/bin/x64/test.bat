@echo off
:: 定QP IBC off
for %%x in (SlideEditing_1280x720_30) do (
     for %%i in (22,27,32,37) do (
         echo x264cli.exe --profile main --preset fast --qp %%i --input-res 1280x720 --frames 30 --fps 30 --threads 1 -I 10 --ssim --psnr --tune zerolatency -o %%x_qp_%%i.264 %%x.yuv)
)

:: 定QP IBC on
for %%x in (SlideEditing_1280x720_30) do (
     for %%i in (22,27,32,37) do (
         x264cli.exe --IBC --profile main --preset fast --qp %%i --input-res 1280x720 --frames 30 --fps 30 --threads 1 -I 10 --ssim --psnr --tune zerolatency -o %%x_qp_%%i.264 %%x.yuv)
)

:: 定码率 IBC off
for %%x in (SlideEditing_1280x720_30) do (
     for %%i in (5500,4200,3000,2200) do (
         echo x264clid.exe --profile main --preset fast --bitrate %%i --input-res 1280x720 --frames 30 --fps 30 --threads 1 -I 10 --ssim --psnr --tune zerolatency -o %%x_br_%%i.264 %%x.yuv)
)

:: 定码率 IBC on
for %%x in (SlideEditing_1280x720_30) do (
     for %%i in (5500,4200,3000,2200) do (
         echo x264clid.exe --IBC --profile main --preset fast --bitrate %%i  --input-res 1280x720 --frames 30 --fps 30 --threads 1 -I 10 --ssim --psnr --tune zerolatency -o %%x_br_%%i.264 %%x.yuv)
)

--bitrate 2000
--frames 30
--log-level debug
--qp 37

18461000.000 s
  3578000.000 s
encoded 300 frames, 83.85 fps, 4011.80 kb/s
4229.49 kb/s


  8363000.000 
10783000.000

  3555000.000
  3837000.000
  