~/tensorflow/bazel-bin/tensorflow/python/tools/optimize_for_inference \
--input=semantic_frozen_graph.pb \
--output=semantic_optimized_graph.pb \
--frozen_graph=True \
--input_names=image_input \
--output_names=vsk_logits
