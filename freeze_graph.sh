~/tensorflow/bazel-bin/tensorflow/python/tools/freeze_graph \
--input_graph=semantic_model.pb \
--input_meta_graph=semantic_model.meta \
--input_binary=true \
--input_checkpoint=semantic_model \
--output_graph=semantic_frozen_graph.pb \
--input_names=image_input \
--output_node_names=vsk_logits
