import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:httprequest/load_data_source.dart';
import 'package:httprequest/posts_model.dart';


class PageDetailPosts extends StatefulWidget {
  const PageDetailPosts({Key? key}) : super(key: key);

  @override
  _PageDetailPostsState createState() => _PageDetailPostsState();
}

class _PageDetailPostsState extends State<PageDetailPosts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Countries Detail"),
      ),
      body: _buildDetailPostsBody(),
    );
  }

  Widget _buildDetailPostsBody() {
    return Container(
      child: FutureBuilder(
        future: PostsDataSource.instance.loadPosts(),
        builder: (
            BuildContext context,
            AsyncSnapshot<dynamic> snapshot,
            ) {
          if (snapshot.hasError) {
            return _buildErrorSection();
          }

          if (snapshot.hasData) {
            PostsModel postsModel =
            PostsModel.fromJson(snapshot.data);
            return _buildSuccessSection(postsModel);
          }

          return _buildLoadingSection();
        },
      ),
    );
  }

  Widget _buildErrorSection() {
    return Text("Error");
  }

  Widget _buildEmptySection() {
    return Text("Empty");
  }

  Widget _buildLoadingSection() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildSuccessSection(PostsModel data) {
    return ListView.builder(
      itemCount: data.posts?.length,
      itemBuilder: (BuildContext context, int index) {
        return _buildItemPosts("${data.posts?[index].id}");
      },
    );
  }

  Widget _buildItemPosts(String value) {
    return Text(value);
  }
}
