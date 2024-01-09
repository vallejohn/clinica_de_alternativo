part of 'core.dart';

final appLogger = AppLogger('AppLogger', noBoxingByDefault: true, includeStackTrace: false);

class AppLogger extends Logger {
  final String className;
  final bool includeStackTrace;
  final bool noBoxingByDefault;
  final bool printIcons;

  AppLogger(this.className, {this.includeStackTrace = true, this.noBoxingByDefault = false, this.printIcons = true})
      : super(
          filter: _AppLogFilter(),
          printer: _AppLogPrinter(className, includeStackTrace, noBoxingByDefault, printIcons),
        );
}

class _AppLogFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) {
    return true;
  }
}

class _AppLogPrinter extends PrettyPrinter {
  final String className;
  final bool includeStackTrace;
  final bool removeBox;
  final bool printIcons;
  _AppLogPrinter(this.className, this.includeStackTrace, this.removeBox, this.printIcons)
      : super(
            printEmojis: printIcons,
            methodCount: includeStackTrace? 1 : 0,
            stackTraceBeginIndex: 2,
            noBoxingByDefault: removeBox,);

  @override
  List<String> log(LogEvent event) {
    return super.log(
      LogEvent(
        event.level,
        '[$className] ${event.message}',
        error: event.error,
        stackTrace: event.stackTrace,
      ),
    );
  }
}
