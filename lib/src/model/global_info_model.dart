class GlobalInfo {
  int cases;
  int deaths;
  int recovered;
  int active;
  int critical;
  int totalTests;

  GlobalInfo(
      {this.cases,
      this.deaths,
      this.recovered,
      this.active,
      this.critical,
      this.totalTests});

  GlobalInfo.fromJson(Map<String, dynamic> json) {
    cases = json['cases'];
    deaths = json['deaths'];
    recovered = json['recovered'];
    active = json['active'];
    critical = json['critical'];
    totalTests = json['totalTests'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cases'] = this.cases;
    data['deaths'] = this.deaths;
    data['recovered'] = this.recovered;
    data['active'] = this.active;
    data['critical'] = this.critical;
    data['totalTests'] = this.totalTests;
    return data;
  }
}
