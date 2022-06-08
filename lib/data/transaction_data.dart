class Transaction {
  final String name;
  final String paidWith;
  final String amount;

  Transaction(this.name, this.paidWith, this.amount);
}

final List<Transaction> transactionData = [
  Transaction('Hamro\'s Cafe', 'Nabil Bank Platinum Card', '660'),
  Transaction('Latitude Dining', 'Global Bank Elite Card', '1020'),
  Transaction('Green Leaf Hotel', 'NMB Bank VIP Card', '3420'),
  Transaction('KFC N Krunch', 'Nabil Bank Platinum Card', '180'),
  Transaction('Ktm Tea House', 'Global Bank Elite Card', '80'),
  Transaction('CodeHimalaya\'s Cafe', 'NMB Bank Platinum Card', '660'),
  Transaction('Everest\'s Cafe', 'Nabil Bank Platinum Card', '660'),
  Transaction('Nepali\'s Cafe', 'Global Bank Platinum Card', '660'),
];
