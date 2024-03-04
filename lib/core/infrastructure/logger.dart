import 'dart:developer';
import 'package:logging/logging.dart' as logging;

class Logger {
  static void setupLogger() {
    logging.Logger.root.level = logging.Level.ALL;
    logging.Logger.root.onRecord.listen((record) {
      final code = switch (record.level) {
        logging.Level.INFO => 36,
        logging.Level.FINE => 32,
        logging.Level.WARNING => 33,
        logging.Level.SEVERE => 31,
        _ => 0,
      };

      log(
        '\x1B[${code}m${record.message}\x1B[0m',
        name: '\x1B[${code}m${'poloniex'}\x1B[0m',
        level: record.level.value,
        error: record.error,
        stackTrace: record.stackTrace,
        sequenceNumber: record.sequenceNumber,
        time: record.time,
        zone: record.zone,
      );
    });
  }

  static final _logger = logging.Logger('Poloniex');

  static void d(String message, {Object? ex, StackTrace? stacktrace}) {
    _logger.log(logging.Level.INFO, message, ex, stacktrace);
  }

  static void v(String message, {Object? ex, StackTrace? stacktrace}) {
    _logger.log(logging.Level.FINE, message, ex, stacktrace);
  }

  static void w(String message, {Object? ex, StackTrace? stacktrace}) {
    _logger.log(logging.Level.WARNING, message, ex, stacktrace);
  }

  static void e(
    String message, {
    Object? ex,
    StackTrace? stacktrace,
  }) {
    _logger.log(logging.Level.SEVERE, message, ex, stacktrace);
  }
}
