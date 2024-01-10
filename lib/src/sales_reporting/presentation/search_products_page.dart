part of 'pages.dart';

@RoutePage()
class SearchProductsPage extends StatefulWidget {
  const SearchProductsPage({super.key});

  @override
  State<SearchProductsPage> createState() => _SearchProductsPageState();
}

class _SearchProductsPageState extends State<SearchProductsPage> {
  final TextEditingController _searchProductController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SearchProductCubit>.value(
      value: BlocProvider.of<SearchProductCubit>(context)..onFetchList(),
      child: BlocBuilder<SearchProductCubit, SearchProductState>(
        builder: (searchContext, searchState) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Theme
                  .of(context)
                  .colorScheme
                  .inversePrimary,
              title: TextField(
                controller: _searchProductController,
                onChanged: (String value){
                  searchContext.read<SearchProductCubit>().onSearch(value);
                },
                decoration: const InputDecoration(
                    suffixIcon: Icon(Icons.search),
                    hintText: 'Search Product',
                    border: InputBorder.none
                ),
              ),
            ),
            body: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: searchState.products.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    searchContext.read<SearchProductCubit>().onSelectProduct(searchState.products[index]);
                    Navigator.pop(context);
                  },
                  child: ListTile(
                    title: Text(searchState.products[index].name),
                  ),
                );
              },
            ),
          );
        }
      ),
    );
  }
}
