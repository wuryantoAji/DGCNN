CUDA_VISIBLE_DEVICES=2 python3 batch_inference.py --model_path log2/epoch_49.ckpt --dump_dir log2/prediction --output_filelist log2/prediction_all.txt --room_data_filelist meta/area2_data_label_margonda.txt --area 2 --visu  
CUDA_VISIBLE_DEVICES=2 python3 batch_inference_build_only.py --model_path log2/epoch_49.ckpt --dump_dir log2/prediction --output_filelist log2/prediction_build_only.txt --room_data_filelist meta/area2_data_label_margonda.txt --area 2 --visu  

CUDA_VISIBLE_DEVICES=2 python3 batch_inference.py --model_path log3/epoch_49.ckpt --dump_dir log3/prediction --output_filelist log3/prediction_all.txt --room_data_filelist meta/area3_data_label_margonda.txt --area 3 --visu  
CUDA_VISIBLE_DEVICES=2 python3 batch_inference_build_only.py --model_path log3/epoch_49.ckpt --dump_dir log3/prediction --output_filelist log3/prediction_build_only.txt --room_data_filelist meta/area3_data_label_margonda.txt --area 3 --visu  

CUDA_VISIBLE_DEVICES=2 python3 batch_inference.py --model_path log4/epoch_49.ckpt --dump_dir log4/prediction --output_filelist log4/prediction_all.txt --room_data_filelist meta/area4_data_label_margonda.txt --area 4 --visu  
CUDA_VISIBLE_DEVICES=2 python3 batch_inference_build_only.py --model_path log4/epoch_49.ckpt --dump_dir log4/prediction --output_filelist log4/prediction_build_only.txt --room_data_filelist meta/area4_data_label_margonda.txt --area 4 --visu  

CUDA_VISIBLE_DEVICES=2 python3 batch_inference.py --model_path log5/epoch_49.ckpt --dump_dir log5/prediction --output_filelist log5/prediction_all.txt --room_data_filelist meta/area5_data_label_margonda.txt --area 5 --visu  
CUDA_VISIBLE_DEVICES=2 python3 batch_inference_build_only.py --model_path log5/epoch_49.ckpt --dump_dir log5/prediction --output_filelist log5/prediction_build_only.txt --room_data_filelist meta/area5_data_label_margonda.txt --area 5 --visu  

CUDA_VISIBLE_DEVICES=2 python3 batch_inference.py --model_path log6/epoch_49.ckpt --dump_dir log6/prediction --output_filelist log6/prediction_all.txt --room_data_filelist meta/area6_data_label_margonda.txt --area 6 --visu  
CUDA_VISIBLE_DEVICES=2 python3 batch_inference_build_only.py --model_path log6/epoch_49.ckpt --dump_dir log6/prediction --output_filelist log6/prediction_build_only.txt --room_data_filelist meta/area6_data_label_margonda.txt --area 6 --visu  
