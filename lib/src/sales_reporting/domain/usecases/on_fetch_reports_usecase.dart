part of '../sales_reporting_usecases.dart';

class OnFetchReportsUseCase extends UseCaseWithNoParams<List<SalesReport>>{
  final SalesReportRepository _salesReportRepository;

  OnFetchReportsUseCase(this._salesReportRepository);
  @override
  Future<Either<Failure, List<SalesReport>>> call() {
    return _salesReportRepository.onFetchReports();
  }
}