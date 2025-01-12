FROM tensorflow/serving:2.8.0

COPY serving_model /models/diabetes-model

ENV MODEL_NAME=diabetes-model
ENV PORT=8501

CMD ["tensorflow_model_server", "--port=8500", "--rest_api_port=${PORT}", "--model_name=${MODEL_NAME}", "--model_base_path=/models/${MODEL_NAME}"]
