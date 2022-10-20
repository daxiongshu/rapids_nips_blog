# This repo contains the code for the blog: [Achieving 100x Faster Single-Cell Modality Prediction with NVIDIA RAPIDS cuML](https://developer.nvidia.com/blog/achieving-100x-faster-single-cell-modality-prediction-with-nvidia-rapids-cuml/)

### Download data:
`./download_data.sh`

### Install the libraries:
- `conda create -n rapids-22.10 -c rapidsai -c nvidia -c conda-forge rapids=22.10 python=3.9 cudatoolkit=11.5`
- `pip install anndata`

### CPU baseline:
- run `baseline.ipynb`

### GPU Implementation:
- run `gpu.ipynb`

This work is based on the [first-place solution](https://github.com/openproblems-bio/neurips2021_multimodal_topmethods/tree/main/src/joint_embedding/methods/Guanlab-dengkw) of the NeurIPS Modality Prediction Challenge “GEX to ADT” from **Kaiwen Deng** of University of Michigan. Please also check the [leaderboard](https://eval.ai/web/challenges/challenge-page/1111/leaderboard/2860) for this competition and other [top models](https://github.com/openproblems-bio/neurips2021_multimodal_topmethods/tree/main/src/predict_modality/methods). 

