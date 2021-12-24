var moment = require('moment');

moment.locale('es');
console.log('Naci ' + moment('03/03/1983', 'DD/MM/YYYY').fromNow());

