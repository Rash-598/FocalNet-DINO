coco_path=$1
checkpoint=$2
python main.py \
  --output_dir logs/DINO/R50-MS4-%j \
	-c /home/t-sharmara/cvpr_focal_net/results/sim10k/config_cfg.py --coco_path /home/t-sharmara/cvpr_focal_net/da_datasets/cityscapes/cityscapes_target  \
	--eval --resume /home/t-sharmara/cvpr_focal_net/results/sim10k/checkpoint_best_regular.pth \
	--options dn_scalar=100 embed_init_tgt=TRUE \
	dn_label_coef=1.0 dn_bbox_coef=1.0 use_ema=False \
	dn_box_noise_scale=1.0
