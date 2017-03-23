export class Hero {
  id = 0;
  name = '';
  addresses: Address[];
}

export class Address {
  street = '';
  city = '';
  state = '';
  zip = '';
}

export const heroes: Hero[] = [
  {
    id: 1,
    name: 'Retail Net Sales (Daily Report)',
    addresses: [
      {street: '123 Main',  city: 'Anywhere', state: '', zip:''}
    ]
  },
  {
    id: 2,
    name: 'Shipments (Daily Report)',
    addresses: [
      {street: '123 Main',  city: 'Anywhere', state: '', zip:''}
    ]
  },
  {
    id: 3,
    name: 'Financial Review (Weekly Report)',
    addresses: [ ]
  },
];

export const states = ['CA', 'MD', 'OH', 'VA'];
