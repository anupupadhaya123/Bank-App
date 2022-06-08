class BankCard {
  final String cardName;
  final String bank;
  final String no;
  final String userName;
  final String cardProvider;

  BankCard(this.cardName, this.bank, this.no, this.userName, this.cardProvider);
}

final List<BankCard> cardData = [
  BankCard(
    'Nabil Bank Platinum Card',
    'nabil-bank',
    '4621 XXXX XXXX 5406',
    'Rohan Nepali',
    'mastercard',
  ),
  BankCard(
    'Global Bank Elite Card',
    'global-bank',
    '5842 XXXX XXXX 1011',
    'Akhilesh Sharma',
    'mastercard',
  ),
  BankCard(
    'NMB Bank VIP Card',
    'nmb-bank',
    '8869 XXXX XXXX 4404',
    'Suraj Pandey',
    'visa',
  ),
];
