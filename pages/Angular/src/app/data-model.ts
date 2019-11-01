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
    name: 'SKU Performance Report (EDW Version)',
    addresses: [
      {street: 'The report provides visibility to a variety of product specific financial metrics, such as landed cost, price, sales, corporate and retail inventory units, defective rates, etc. It allows for easy identification of top/bottom SKUs for the metrics in the stated time period.',  city: 'Sean Stokes, Category Management & Integrated Planning', state: 'Call Decision Support (ext. 3444) for assistance.', zip:' Report requires that your workstation be connected to the EDW. See NetLaunch bulletin page for details.'}
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
