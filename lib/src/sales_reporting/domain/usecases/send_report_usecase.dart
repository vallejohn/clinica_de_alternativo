part of '../sales_reporting_usecases.dart';

class SendReportUseCase extends UseCaseWithParams<bool, SalesReport>{
  final SalesReportRepository _salesReportRepository;

  SendReportUseCase(this._salesReportRepository);
  @override
  Future<Either<Failure, bool>> call(SalesReport params) {
    return _salesReportRepository.sendSalesReport(params);
  }
}