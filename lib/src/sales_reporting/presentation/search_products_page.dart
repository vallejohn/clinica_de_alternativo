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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: TextField(
          controller: _searchProductController,
          decoration: const InputDecoration(
            suffixIcon: Icon(Icons.search),
            hintText: 'Search Product',
            border: InputBorder.none
          ),
        ),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 20,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (){

            },
            child: ListTile(
              title: Text('Sample $index'),
            ),
          );
        },
      ),
    );
  }
}
