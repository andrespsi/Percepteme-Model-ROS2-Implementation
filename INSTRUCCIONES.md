# Instrucciones para Perceptema One

Este workspace contiene todo lo necesario para compilar y ejecutar el sistema robótico autónomo "Perceptema One". La estructura sigue las mejores prácticas de ROS 2 y Python para sistemas modulares, escalables y fácilmente mantenibles.

## Estructura de Paquetes

- **perceptema_core**: Núcleo cognitivo y memoria, lógica de IA, modelos y componentes centrales.
- **perceptema_io**: Interfaces ROS 2 para percepción (sensores) y actuación (motores/sonido).
- **perceptema_bringup**: Archivos de lanzamiento (launch) para iniciar todo el sistema desde un solo comando.

## Pasos para Compilación y Ejecución

1. **Requisitos previos**:
    - ROS 2 Humble o posterior.
    - Python 3.8+.
    - Dependencias Python: `torch`, `timm`, `opencv-python`, `numpy`, `scipy`, `numba`, `cv_bridge`, `audio_common_msgs` (si usas audio).
    - Mensajes personalizados (`perceptema_msgs`) deben estar generados y disponibles (ajusta los imports según tu mensaje real).

2. **Instala dependencias del sistema**:
    ```bash
    sudo apt update
    sudo apt install ros-humble-cv-bridge ros-humble-audio-common-msgs python3-opencv python3-pip
    pip3 install torch timm numpy scipy numba opencv-python
    ```

3. **Compila el workspace**:
    ```bash
    cd <tu_workspace>
    colcon build --symlink-install
    ```

4. **Fuente el entorno**:
    ```bash
    source install/setup.bash
    ```

5. **Lanza el sistema completo**:
    ```bash
    ros2 launch perceptema_bringup agent.launch.py
    ```

6. **Observa la consola y el movimiento/sonido del robot**.

---

**Notas Importantes**:

- Los archivos `package.xml` y `setup.py` están generados para cada paquete con dependencias ROS y Python bien definidas.
- El código está altamente comentado para facilitar la comprensión y extensión.
- El sistema es modular y cada nodo puede ejecutarse/depurarse por separado.
- Si defines tus propios mensajes ROS personalizados, asegúrate de que estén correctamente generados y disponibles en el workspace.