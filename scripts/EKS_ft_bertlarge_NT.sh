CUDA_VISIBLE_DEVICES=2 python3.6 main.py \
  --use_tpu=False \
  --do_train=True \
  --do_eval=True \
  --raw_data_dir=data/ace/csv_hybrid \
  --sup_train_data_dir=data/proc_data/ace/csv_NT/train \
  --unsup_data_dir=data/proc_data/ace/csv_raw+NT/unsup \
  --eval_data_dir=data/proc_data/ace/csv_raw+NT/dev \
  --bert_config_file=pretrained_models/bert_finetune/bert_ft_large_NT/bert_config.json \
  --vocab_file=pretrained_models/bert_finetune/bert_ft_large_NT/vocab.txt \
  --init_checkpoint=pretrained_models/bert_finetune/bert_ft_large_NT/bert_model.ckpt \
  --task_name=IMDB \
  --train_batch_size=8 \
  --model_dir=ckpt/EKS_ft_bertlarge_NT \
  --num_train_steps=20000 \
  --learning_rate=2e-06 \
  --num_warmup_steps=1000 \
  --unsup_ratio=3 \
  --tsa="linear_schedule" \
  --aug_ops=bt-0.9 \
  --aug_copy=1 \
  --uda_coeff=1 \
  $@
