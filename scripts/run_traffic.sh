CUDA_VISIBLE_DEVICES=2 nohup python run_short.py --dataset_name traffic --window_size 168 --horizon  3 --hiddim 512 --lr 3e-5 --chunk_size 14 --batch_size 4 --model_name 'LightTS' --epochs 150 > traffic3.log 2>&1 &
CUDA_VISIBLE_DEVICES=3 nohup python run_short.py --dataset_name traffic --window_size 168 --horizon  6 --hiddim 256 --lr 3e-5 --chunk_size 14 --batch_size 4 --model_name 'LightTS' --single_step 1 --epochs 150 > traffic6s.log 2>&1 &
CUDA_VISIBLE_DEVICES=1 nohup python run_short.py --dataset_name traffic --window_size 168 --horizon 12 --hiddim 256 --lr 3e-5 --chunk_size 14 --batch_size 4 --model_name 'LightTS' --single_step 1 --epochs 150 > traffic12s.log 2>&1 &
CUDA_VISIBLE_DEVICES=0 nohup python run_short.py --dataset_name traffic --window_size 168 --horizon 24 --hiddim 256 --lr 3e-5 --chunk_size 14 --batch_size 4 --model_name 'LightTS' --single_step 1 --epochs 150 > traffic24s.log 2>&1 &
