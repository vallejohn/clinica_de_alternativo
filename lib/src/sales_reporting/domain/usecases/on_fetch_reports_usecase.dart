part of '../sales_reporting_usecases.dart';

class OnFetchReportsUseCase extends UseCaseWithParams<SalesReportDocuments, FetchSalesReportsParam>{
  final SalesReportRepository _salesReportRepository;

  OnFetchReportsUseCase(this._salesReportRepository);
  @override
  Future<Either<Failure, SalesReportDocuments>> call(FetchSalesReportsParam params) {
    return _salesReportRepository.onFetchReports(params);
  }
}