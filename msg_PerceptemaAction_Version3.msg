# Mensaje ROS 2: PerceptemaAction.msg (v1.2/v2.0 compatible)
# Representa una acción simbólica o motora para ejecutar en el robot

Header header

# Acción simbólica principal (avanzar, detenerse, explorar, etc.)
string action_name

# Parámetros de movimiento motor (Unitree G1, 12 DOF, opcional)
float32[] motor_command

# Texto de habla generado (si el módulo TTS está activo)
string tts_content

# Opcional: tags para debug/explicabilidad
string[] tags