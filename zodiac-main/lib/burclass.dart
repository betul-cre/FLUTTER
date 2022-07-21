class Burc {
  final String _burcname;
  final String _burctarih;
  final String _burcdetay;
  final String _burckucukresim;
  final String _burcbuyukresim;

  get burcname => this._burcname;
  get burctarih => this._burctarih;
  get burcdetay => this._burcdetay;
  get burckucukresim => this._burckucukresim;
  get burcbuyukresim => this._burcbuyukresim;

  Burc(this._burcname, this._burctarih, this._burcdetay, this._burckucukresim,
      this._burcbuyukresim);

  @override
  String toString() {
    // TODO: implement toString
  }
}
