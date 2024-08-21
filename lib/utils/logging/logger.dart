import 'package:logger/logger.dart';

class DLoggerHelper {
  // Logger instance with a pretty printer for readable logs
  static final Logger _logger = Logger(
    printer: PrettyPrinter(),
    level: Level.debug, // Set the log level as needed
  );

  // Method to log debug messages
  static void debug(String message) {
    _logger.d(message);
  }

  // Method to log info messages
  static void info(String message) {
    _logger.i(message);
  }

  // Method to log warning messages
  static void warning(String message) {
    _logger.w(message);
  }

  // Method to log error messages with optional error details
  static void error(String message, [dynamic error]) {
    _logger.e(message, error: error, stackTrace: StackTrace.current);
  }
}
