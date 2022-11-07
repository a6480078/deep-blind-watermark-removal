
set -ex
cd $(dirname $0)
CUDA_VISIBLE_DEVICES=0 python ../test.py \
  -c clwdtest/10kgray_ssim\
  --resume /root/bru/splitnet/watermark/examples/eval/10kgray/1e3_bs4_256_hybrid_ssim_vgg_vx__images_vvv4n/model_best.pth.tar\
  --arch vvv4n\
  --machine vx\
  --input-size 256\
  --test-batch 1\
  --evaluate\
  --base-dir /root/bru/splitnet/watermark/img_CLWD/CLWD\
  --data _images
