# wheelevent.js

The mouse wheel event (y axis).

## Usage

[Download](https://raw.githubusercontent.com/Narazaka/wheelevent.js/master/wheelevent.js) or install by

```
bower install wheelevent.js
```

then

```
<script src="wheelevent.js"></script>
<script>
window.onload = function(){
  var target = document.getElementById('target');
  var onWheel = function(event, delta){
    console.log(delta);
  };
  wheelevent(target, onWheel);
};
</script>
```

## Compatibility

- IE5+(checked by IE11 emulate)
- Firefox
- Google Chrome

Since event is raw, delta value magnification is different in each browsers.

## License

(C) 2015 Narazaka : Licensed under The MIT License - http://narazaka.net/license/MIT?2015
