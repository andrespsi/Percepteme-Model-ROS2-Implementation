# Mensaje para la telemetría interna del cerebro Perceptema v7.2

std_msgs/Header header

# El estado de Significación (S) actual del agente
float32[3] significance_s_vector

# Los 5 Perceptemas más activos en este ciclo
# Almacenamos sus IDs y sus pesos (w_i) para análisis
int32[5] active_perceptema_ids
float32[5] active_perceptema_weights

# La acción seleccionada y su utilidad calculada
string chosen_action
float32 chosen_action_utility