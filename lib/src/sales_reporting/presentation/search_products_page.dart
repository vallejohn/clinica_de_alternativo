part of 'pages.dart';

@RoutePage()
class SearchProductsPage extends StatefulWidget {
  const SearchProductsPage({super.key});

  @override
  State<SearchProductsPage> createState() => _SearchProductsPageState();
}

class _SearchProductsPageState extends State<SearchProductsPage> with AutomaticKeepAliveClientMixin{
  final TextEditingController _searchProductController = TextEditingController();

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
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
                final productType = searchState.products[index].type;
                return ListTileItem(
                  leadingIcon: CircleAvatar(child: Text(searchState.products[index].name[0], style: TextStyle(color: Theme.of(context).colorScheme.primary),),),
                  title: Text(searchState.products[index].name),
                  subtitle: productType?.name,
                  onPressed: (){
                    searchContext.read<SearchProductCubit>().onSelectProduct(searchState.products[index]);
                    Navigator.pop(context);
                  },
                );
              },
            ),
          );
        }
      ),
    );
  }
}
