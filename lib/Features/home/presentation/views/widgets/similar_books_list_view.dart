import 'package:bookly_app/Features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:flutter/material.dart';

class SimilarbooksListView extends StatelessWidget {
  const SimilarbooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 8),
            child: FeaturedListViewItem(
              imageUrl:
                  'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pexels.com%2Fsearch%2Fbeautiful%2F&psig=AOvVaw1WbO4Me3mq-cxe_v0CediI&ust=1721392353186000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCKCE3K_MsIcDFQAAAAAdAAAAABAE',
            ),
          );
        },
      ),
    );
  }
}
