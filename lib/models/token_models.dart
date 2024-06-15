class TokenResponse {
  String? status;
  int? page;
  int? pageSize;
  String? cursor;
  List<TokenData>? result;

  TokenResponse({
    this.status,
    this.page,
    this.pageSize,
    this.cursor,
    this.result,
  });

  factory TokenResponse.fromJson(Map<String, dynamic> json) {
    return TokenResponse(
      status: json['status'],
      page: json['page'],
      pageSize: json['page_size'],
      cursor: json['cursor'],
      result: List<TokenData>.from(
          json['result'].map((x) => TokenData.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'page': page,
      'page_size': pageSize,
      'cursor': cursor,
      'result': List<dynamic>.from(result!.map((x) => x.toJson())),
    };
  }
}

class TokenData {
  String? amount;
  String? tokenId;
  String? tokenAddress;
  String? contractType;
  String? ownerOf;
  String? lastMetadataSync;
  String? lastTokenUriSync;
  String? metadata;
  String? blockNumber;
  String? blockNumberMinted;
  String? name;
  String? symbol;
  String? tokenHash;
  String? tokenUri;
  String? minterAddress;
  bool? verifiedCollection;
  bool? possibleSpam;
  NormalizedMetadata? normalizedMetadata;
  String? collectionLogo;
  String? collectionBannerImage;

  TokenData({
    this.amount,
    this.tokenId,
    this.tokenAddress,
    this.contractType,
    this.ownerOf,
    this.lastMetadataSync,
    this.lastTokenUriSync,
    this.metadata,
    this.blockNumber,
    this.blockNumberMinted,
    this.name,
    this.symbol,
    this.tokenHash,
    this.tokenUri,
    this.minterAddress,
    this.verifiedCollection,
    this.possibleSpam,
    this.normalizedMetadata,
    this.collectionLogo,
    this.collectionBannerImage,
  });

  factory TokenData.fromJson(Map<String, dynamic> json) {
    return TokenData(
      amount: json['amount'],
      tokenId: json['token_id'],
      tokenAddress: json['token_address'],
      contractType: json['contract_type'],
      ownerOf: json['owner_of'],
      lastMetadataSync: json['last_metadata_sync'],
      lastTokenUriSync: json['last_token_uri_sync'],
      metadata: json['metadata'],
      blockNumber: json['block_number'],
      blockNumberMinted: json['block_number_minted'],
      name: json['name'],
      symbol: json['symbol'],
      tokenHash: json['token_hash'],
      tokenUri: json['token_uri'],
      minterAddress: json['minter_address'],
      verifiedCollection: json['verified_collection'],
      possibleSpam: json['possible_spam'],
      normalizedMetadata:
          NormalizedMetadata.fromJson(json['normalized_metadata']),
      collectionLogo: json['collection_logo'],
      collectionBannerImage: json['collection_banner_image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'amount': amount,
      'token_id': tokenId,
      'token_address': tokenAddress,
      'contract_type': contractType,
      'owner_of': ownerOf,
      'last_metadata_sync': lastMetadataSync,
      'last_token_uri_sync': lastTokenUriSync,
      'metadata': metadata,
      'block_number': blockNumber,
      'block_number_minted': blockNumberMinted,
      'name': name,
      'symbol': symbol,
      'token_hash': tokenHash,
      'token_uri': tokenUri,
      'minter_address': minterAddress,
      'verified_collection': verifiedCollection,
      'possible_spam': possibleSpam,
      'normalized_metadata': normalizedMetadata!.toJson(),
      'collection_logo': collectionLogo,
      'collection_banner_image': collectionBannerImage,
    };
  }
}

class NormalizedMetadata {
  String? name;
  String? description;
  String? animationUrl;
  String? externalLink;
  String? image;
  List<dynamic>? attributes;

  NormalizedMetadata({
    this.name,
    this.description,
    this.animationUrl,
    this.externalLink,
    this.image,
    this.attributes,
  });

  factory NormalizedMetadata.fromJson(Map<String, dynamic> json) {
    return NormalizedMetadata(
      name: json['name'],
      description: json['description'],
      animationUrl: json['animation_url'],
      externalLink: json['external_link'],
      image: json['image'],
      attributes: List<dynamic>.from(json['attributes'].map((x) => x)),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
      'animation_url': animationUrl,
      'external_link': externalLink,
      'image': image,
      'attributes': List<dynamic>.from(attributes!.map((x) => x)),
    };
  }
}
