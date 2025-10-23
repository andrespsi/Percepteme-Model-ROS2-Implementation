# Mensaje ROS 2: PerceptemaStimulus.msg (v1.2/v2.0 compatible)
# Representa un estímulo sensorial modular para el agente

Header header

# Vectores sensoriales procesados (todos como float32[])
float32[] visual
float32[] auditory
float32[] depth
float32[] lidar
float32[] proprioceptive

# Opcional: texto interpretado (output del módulo de lenguaje anclado)
string language_content

# Opcional: metadatos
string[] tags