class ItemStore {
  static final Map<dynamic, dynamic> _item = <dynamic, dynamic>{};
  static final ItemStore _cache = ItemStore._internal();

  // factoryコンストラクタを使用することで、オブジェクトを常に生成せずに、キャッシュがあればそれを使うようになる
  factory ItemStore() {
    return _cache;
  }

  // コンストラクタをプライベートアクセスにする
  // _internal()は正直なんでもいい
  ItemStore._internal();

  set(dynamic key, dynamic value) => _item[key] = value;
  get(dynamic key) => _item[key];
}
