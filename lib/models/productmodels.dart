// To parse this JSON data, do
//
//     final productmodels = productmodelsFromJson(jsonString);

import 'dart:convert';

List<Productmodels> productmodelsFromJson(String str) => List<Productmodels>.from(json.decode(str).map((x) => Productmodels.fromJson(x)));

String productmodelsToJson(List<Productmodels> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Productmodels {
    Productmodels({
        this.id,
        this.title,
        this.price,
        this.description,
        this.category,
        this.image,
        this.rating,
    });

   final int? id;
   final String? title;
   final double? price;
   final String? description;
   final String? category;
   final String? image;
   final Rating? rating;

    factory Productmodels.fromJson(Map<String, dynamic> json) => Productmodels(
        id: json["id"],
        title: json["title"],
        price: json["price"].toDouble(),
        description: json["description"],
        category:json["category"],
        image: json["image"],
        rating: Rating.fromJson(json["rating"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
        "description": description,
        "category":category,
        "image": image,
        "rating": rating!.toJson(),
    };
}


class Rating {
    Rating({
        this.rate,
        this.count,
    });

   final double? rate;
   final int? count;

    factory Rating.fromJson(Map<String, dynamic> json) => Rating(
        rate: json["rate"].toDouble(),
        count: json["count"],
    );

    Map<String, dynamic> toJson() => {
        "rate": rate,
        "count": count,
    };
}

