part of '../sales_reporting_usecases.dart';

class SendReportUseCase extends UseCaseWithParams<List<SalesReport>, SalesReport>{
  final SalesReportRepository _salesReportRepository;

  SendReportUseCase(this._salesReportRepository);
  @override
  Future<Either<Failure, List<SalesReport>>> call(SalesReport params) {
    return _salesReportRepository.sendSalesReport(params);
  }
}