CUDA_VISIBLE_DEVICES=2 python3 batch_inference.py --model_path log1_dublin_notShifted/epoch_49.ckpt --dump_dir log1_dublin_notShifted/prediction --output_filelist log1_dublin_notShifted/prediction_all.txt --room_data_filelist meta/area1_data_label_dublin.txt --area 1 --visu --jenis dublin  

CUDA_VISIBLE_DEVICES=2 python3 batch_inference.py --model_path log3_dublin_notShifted/epoch_49.ckpt --dump_dir log3_dublin_notShifted/prediction --output_filelist log3_dublin_notShifted/prediction_all.txt --room_data_filelist meta/area3_data_label_dublin.txt --area 3 --visu --jenis dublin  

CUDA_VISIBLE_DEVICES=2 python3 batch_inference.py --model_path log4_dublin_notShifted/epoch_49.ckpt --dump_dir log4_dublin_notShifted/prediction --output_filelist log4_dublin_notShifted/prediction_all.txt --room_data_filelist meta/area4_data_label_dublin.txt --area 4 --visu --jenis dublin  

CUDA_VISIBLE_DEVICES=2 python3 batch_inference.py --model_path log5_dublin_notShifted/epoch_49.ckpt --dump_dir log5_dublin_notShifted/prediction --output_filelist log5_dublin_notShifted/prediction_all.txt --room_data_filelist meta/area5_data_label_dublin.txt --area 5 --visu --jenis dublin  

CUDA_VISIBLE_DEVICES=2 python3 batch_inference.py --model_path log6_dublin_notShifted/epoch_49.ckpt --dump_dir log6_dublin_notShifted/prediction --output_filelist log6_dublin_notShifted/prediction_all.txt --room_data_filelist meta/area6_data_label_dublin.txt --area 6 --visu --jenis dublin  