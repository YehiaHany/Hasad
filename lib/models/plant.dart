class Plant {
  final String title;
  final String imageUrl;
  final String category;
  final double price;
  final double rating;
  final String description;
  final double height;
  final double diameter;
  final double weight;
  final String type;
  final bool isPopular;
  final bool isFavorite;
  int wateringFrequency;

  Plant({
    required this.title,
    required this.imageUrl,
    required this.category,
    required this.price,
    required this.rating,
    required this.description,
    required this.height,
    required this.diameter,
    required this.weight,
    required this.type,
    required this.isPopular,
    required this.isFavorite,
    required this.wateringFrequency,
  });
  static List<Plant> getAllPlants() {
    return [
      Plant(
        title: 'موز',
        imageUrl: 'assets/images/banana.png',
        category: 'فاكهه',
        price: 30,
        rating: 4.5,
        description:
            'تتميز الموز بقشره الخارجي الأصفر السميك واللحم الداخلي الأبيض أو الأصفر الذي يكون غنيًا بالمواد الغذائية والطاقة. يحتوي الموز على مجموعة واسعة من الفيتامينات والمعادن، بما في ذلك فيتامين C وفيتامين B6 والبوتاسيوم والمغنيسيوم والفولات.',
        height: 5.0,
        diameter: 3.0,
        weight: 600,
        type: 'كافنديش',
        isPopular: true,
        isFavorite: false,
        wateringFrequency: 10,
      ),
      Plant(
        title: 'تفاح',
        imageUrl: 'assets/images/apple.jpg',
        category: 'فاكهه',
        price: 50,
        rating: 4.2,
        description:
            ' تحتوي التفاح على مجموعة متنوعة من العناصر الغذائية الضرورية، بما في ذلك الألياف والفيتامينات. تُعتبر الألياف في التفاح مفيدة لصحة الجهاز الهضمي وتعزز الشعور بالشبع، بينما تساعد الفيتامينات والمعادن في دعم جهاز المناعة والحفاظ على صحة الجلد والعيون والأنسجة الأخرى في الجسم',
        height: 2.5,
        diameter: 2.0,
        weight: 300,
        type: 'أمريكاني',
        isPopular: false,
        isFavorite: true,
        wateringFrequency: 12,
      ),
      Plant(
        title: 'بطاطس',
        imageUrl: 'assets/images/potatos.png',
        category: 'خضراوات',
        price: 20,
        rating: 4.8,
        description:
            'نبات البطاطس (سولانوم توبيروسوم) من النباتات العشبية المعمرة  ينتج محاصيل درنية صالحة للأكل تكونت تحت الأرض. وهو عضو في عائلة سولاناسي.  يفضل النبات  التربة الخصبة قليلة الحمضية ، ذات  التصريف الجيد',
        height: 3.0,
        diameter: 2.5,
        weight: 900,
        type: 'روزيتا',
        isPopular: true,
        isFavorite: true,
        wateringFrequency: 15,
      ),
      Plant(
        title: 'خيار',
        imageUrl: 'assets/images/cucumber.png',
        category: 'خضراوات',
        price: 25,
        rating: 4.0,
        description:
            'نباتات الخيار بأوراقها الخضراء الكبيرة والمتشابكة والمسننة، وهي نباتات متسلقة تحتاج إلى دعامات لدعم نموها. ينمو الخيار بشكل جيد في التربة الرطبة والجيدة التصريف، ويفضل المناخ الدافئ. يتميز بثماره الطويلة والمدورة التي تتراوح في الألوان بين الأخضر والأصفر، وتكون قابلة للأكل عندما تكون لينة وغير ناضجة، مع زيادة الليونة مع نضجها',
        height: 1.5,
        diameter: 1.0,
        weight: 375,
        type: 'حنظلي',
        isPopular: true,
        isFavorite: false,
        wateringFrequency: 12,
      ),
      Plant(
        title: 'بصل',
        imageUrl: 'assets/images/onion.png',
        category: 'خضراوات',
        price: 12,
        rating: 4.7,
        description:
            'يتميز البصل ببصيلاته الكروية الصغيرة التي تتشكل طبقات على شكل حلقات والتي تُعرف بالقشرة الخارجية، وهي ما يُستهلك من النبات. يتنوع لون البصل بين الأبيض والأحمر والأصفر حسب الصنف والمنطقة الزراعية.',
        height: 6.0,
        diameter: 4.0,
        weight: 600,
        type: 'أحمر',
        isPopular: false,
        isFavorite: true,
        wateringFrequency: 7,
      ),
      Plant(
        title: 'طماطم',
        imageUrl: 'assets/images/tomato.jpg',
        category: 'خضراوات',
        price: 16,
        rating: 4.3,
        description:
            'تتميز الطماطم بثمارها اللامعة ذات اللون الأحمر (وأحيانًا الأصفر أو البرتقالي) والتي يمكن أن تكون مدورة أو بيضاوية الشكل. تعتبر الطماطم مصدرًا ممتازًا لفيتامين C وفيتامين A والبوتاسيوم ومضادات الأكسدة، وتحتوي أيضًا على مواد مضادة للالتهابات ومضادة للسرطان',
        height: 1.0,
        diameter: 1.0,
        weight: 800,
        type: 'كريزيه',
        isPopular: true,
        isFavorite: true,
        wateringFrequency: 2,
      ),
      Plant(
          title: 'Yucca',
          imageUrl: 'assets/images/yucca.png',
          category: 'Outdoor',
          price: 29.99,
          rating: 4.6,
          description:
              'Make a bold statement in your outdoor garden with the Yucca plant. Known for its tall and spiky appearance, this outdoor beauty stands at 4.0 feet with a diameter of 2.0 feet. Priced at \$29.99, the Yucca brings a touch of the wild to your outdoor landscape. While it might not be the most popular, its unique characteristics make it a standout choice for those seeking a distinctive outdoor plant.',
          height: 4.0,
          diameter: 2.0,
          weight: 1.2,
          type: 'Outdoor',
          isPopular: false,
          isFavorite: false,
          wateringFrequency: 8),
      Plant(
        title: 'Zamioculcas',
        imageUrl: 'assets/images/zamioculcas.png',
        category: 'Houseplant',
        price: 22.99,
        rating: 4.4,
        description:
            'Meet the Zamioculcas, also known as the ZZ plant, a low-maintenance indoor companion. Priced at \$22.99, this houseplant stands at 1.5 feet with a diameter of 1.5 feet. With a popularity rating that speaks to its easy care and aesthetic appeal, the Zamioculcas is a favorite among indoor plant enthusiasts. Add a touch of green to your home with this stylish and hassle-free choice.',
        height: 1.5,
        diameter: 1.5,
        weight: 0.7,
        type: 'Indoor',
        isPopular: true,
        isFavorite: true,
        wateringFrequency: 18,
      ),
    ];
  }
}
