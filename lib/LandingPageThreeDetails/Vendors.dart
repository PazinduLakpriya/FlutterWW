List<Place> places = [
  Place(
      name: 'Photography',
      place: 'Keyrang, Thailand',
      imgPath:
      // 'https://d36tnp772eyphs.cloudfront.net/blogs/1/2011/05/thailand-1200x819.jpg',
      'https://images.unsplash.com/photo-1523467327888-a8a445992901?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjZ8fHBob3RvZ3JhcGh5fGVufDB8fDB8&auto=format&fit=crop&w=500&q=60',
      rating: 4.0
  ),
  Place(
      name: 'Invitations',
      place: 'Hibru, France',
      imgPath:
      'https://images.unsplash.com/photo-1425421543490-6a133856ff32?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NTN8fHdlZGRpbmclMjBpbnZpdGF0aW9ufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
      rating: 4.5),
  Place(
      name: 'Flowers',
      place: 'Porto, Portugal',
      imgPath:
      'https://images.unsplash.com/photo-1604531826103-7c626b90a5f4?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjN8fHdlZGRpbmclMjBib3VxdWV0fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
      rating: 4.8),
  Place(
      name: 'Out-Door Weddings',
      place: 'Pantelleria, Italy',
      imgPath:
      'https://images.unsplash.com/photo-1588849538263-fbc2b7b8965f?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
      rating: 4.8),
  Place(
      name: 'Hotels',
      place: 'Keyrang, Thailand',
      imgPath:
      'https://images.unsplash.com/photo-1584833594802-59fe74aeb3d6?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=333&q=80',
      rating: 4.0),
  Place(
      name: 'In-Door Weddings',
      place: 'Hibru, France',
      imgPath:
      'https://images.unsplash.com/photo-1519167758481-83f550bb49b3?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1074&q=80',
      rating: 4.5),
  Place(
      name: 'Jewelry',
      place: 'Porto, Portugal',
      imgPath:
      'https://images.unsplash.com/photo-1543295204-2ae345412549?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1050&q=80',
      rating: 4.8),
  Place(
      name: 'Fashion And Beauty',
      place: 'Porto, Portugal',
      imgPath:
      'https://images.unsplash.com/photo-1521467752200-3bccf80f16ed?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
      rating: 4.8),
];

class Place {
  String name;
  String place;
  String imgPath;
  double rating;

  Place({this.name, this.place, this.imgPath, this.rating});
}
