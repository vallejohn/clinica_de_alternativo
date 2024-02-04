import 'package:equatable/equatable.dart';

class SalesFilterModel<T> extends Equatable{
  final T? value;
  final bool selected;

  const SalesFilterModel({this.value, this.selected = false});

  SalesFilterModel<T> copyWith({
    T? value,
    bool? selected,
  }){
    return SalesFilterModel<T>(
      value: value?? this.value,
      selected: selected?? this.selected,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [value, selected];
}