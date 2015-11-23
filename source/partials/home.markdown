Twix is a simple but opinionated JS library for working with date ranges, and includes a customizable smart formatter. It's written in CoffeeScript and it depends on [Moment.js](http://momentjs.com/).

```js
var t = moment("1982-01-25T09:30").twix("1982-01-25T13:30");

t.format();  //=> Jan 25, 1982, 9:30 AM - 1:30 PM

t.simpleFormat("MMM Do [at] HH:mm")  //=> 'Jan 25th at 09:30 - Jan 25th at 13:30'

t.isSame("day");               //=> true
t.humanizeLength();            //=> "4 hours"
t.count("days");               //=> 1
t.isPast()                     //=> true
t.contains("1982-01-25T10:00") //=> true

var t2 = moment("1982-01-23T13:30").twix("1982-01-25T12:30");
t.overlaps(t2) //=> true
t.engulfs(t2)  //=> false
t.equals(t2)   //=> false

t.intersection(t2).format() //=> 'Jan 25, 1982, 9:30 AM - 12:30 PM'
t.union(t2).format()        //=> 'Jan 23, 1:30 PM - Jan 25, 1:30 PM, 1982'

t.split(2, 'hour')
  .map(function(st){return st.format({showDate: false});}) //=> [ '9:30 - 11:30 AM', '11:30 AM - 1:30 PM' ]
```

And a lot more. See the [docs](docs.html).
