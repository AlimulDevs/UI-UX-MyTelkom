class SimCard {
  String jenis;
  double isi;
  String satuan;

  SimCard({required this.jenis, required this.isi, required this.satuan});
}

List<SimCard> simCard = [
  SimCard(jenis: 'Internet', isi: 12.19, satuan: 'GB'),
  SimCard(jenis: 'Telpon', isi: 0, satuan: 'Min'),
  SimCard(jenis: 'SMS', isi: 23, satuan: 'SMS'),
];
