class CurrencyModel{
  final String name;
  final double real;
  final double dolar;
  final double euro;
  final double bitcoin;

  CurrencyModel(this.name, this.real, this.dolar, this.euro, this.bitcoin);

  static List<CurrencyModel> get getCurrencies{
    return<CurrencyModel>[
      CurrencyModel(name:'Real', real:1.0, dolar:0.18, euro:0.15, bitcoin:0.000016)
    ]
  }
}