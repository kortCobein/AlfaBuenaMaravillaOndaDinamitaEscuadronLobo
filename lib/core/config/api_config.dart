/// Configuración central de comunicación remota.
///
/// Flutter NO debe consumir APIs externas directamente. Cuando el backend o
/// Function del team esté listo, cambia únicamente [baseUrl].
abstract final class ApiConfig {
  static const String baseUrl = 'https://backend-pendiente.invalid';

  static Uri uri(String path) {
    final normalizedPath = path.startsWith('/') ? path : '/$path';
    return Uri.parse('$baseUrl$normalizedPath');
  }
}
