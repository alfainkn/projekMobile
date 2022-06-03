class HeroSuper {
  int id;
  String name;
  String fullName;
  String slug;
  String imageUrl;
  int intelligence;
  int strength;
  int speed;
  int durability;
  int power;
  int combat;
  String gender;
  String race;
  List height;
  List weight;
  String eyeColor;
  String hairColor;
  String alterEgos;
  List aliases;
  String placeOfBirth;
  String firstAppearance;
  String publisher;
  String alignment;
  String occupation;
  String base;
  String groupAffiliation;
  String relatives;

  HeroSuper(id, name, slug, imageUrl, fullName, intelligence, strength, speed,
      durability, power, combat, gender, race, height, weight, eyeColor, hairColor, alterEgos, aliases,
      placeOfBirth, firstAppearance, publisher, alignment, occupation, base, groupAffiliation, relatives) {
    id = this.id;
    name = this.name;
    fullName = this.fullName;
    slug = this.slug;
    imageUrl = this.imageUrl;
    intelligence = this.intelligence;
    strength = this.strength;
    speed = this.speed;
    durability = this.durability;
    power = this.power;
    combat = this.combat;
    gender = this.gender;
    race = this.race;
    height = this.height;
    weight = this.weight;
    eyeColor = this.eyeColor;
    hairColor = this.hairColor;
    alterEgos = this.alterEgos;
    aliases = this.aliases;
    placeOfBirth = this.placeOfBirth;
    firstAppearance = this.firstAppearance;
    publisher = this.publisher;
    alignment = this.alignment;
    occupation = this.occupation;
    base = this.base;
    groupAffiliation = this.groupAffiliation;
    relatives = this.relatives;
  }

  HeroSuper.fromJson(Map documentJson)
      : id = documentJson['id'],
        name = documentJson['name'],
        fullName = documentJson['biography']['fullName'],
        slug = documentJson['slug'],
        imageUrl = documentJson['images']['lg'],
        intelligence = documentJson['powerstats']['intelligence'],
        strength = documentJson['powerstats']['strength'],
        speed = documentJson['powerstats']['speed'],
        durability = documentJson['powerstats']['durability'],
        power = documentJson['powerstats']['power'],
        combat = documentJson['powerstats']['combat'],
        gender = documentJson['appearance']['gender'],
        race = documentJson['appearance']['race'],
        height = documentJson['appearance']['height'],
        weight = documentJson['appearance']['weight'],
        eyeColor = documentJson['appearance']['eyeColor'],
        hairColor = documentJson['appearance']['hairColor'],
        alterEgos = documentJson['biography']['alterEgos'],
        aliases = documentJson['biography']['aliases'],
        placeOfBirth = documentJson['biography']['placeOfBirth'],
        firstAppearance = documentJson['biography']['firstAppearance'],
        publisher = documentJson['biography']['publisher'],
        alignment = documentJson['biography']['alignment'],
        occupation = documentJson['work']['occupation'],
        base = documentJson['work']['base'],
        groupAffiliation = documentJson['connections']['groupAffiliation'],
        relatives = documentJson['connections']['relatives'];
}
