cmake_minimum_required(VERSION 3.8)
project(perceptema_core)

find_package(ament_cmake REQUIRED)
find_package(ament_cmake_python REQUIRED)
find_package(rclpy REQUIRED)
find_package(std_msgs REQUIRED)

# === INICIO DE LA MODIFICACIÓN ===
# Busca el paquete generador de mensajes y define nuestros mensajes a generar.
find_package(rosidl_default_generators REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/PerceptemaState.msg"
  # Agrega aquí futuros mensajes .msg o servicios .srv
)
# === FIN DE LA MODIFICACIÓN ===

ament_python_install_package()

ament_package()