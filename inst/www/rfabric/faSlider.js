function SliderInput(_ref) {
  var configuration = _ref.configuration || {},
      value = _ref.value;
      setValue = _ref.setValue;

  return React.createElement(Fabric.Slider,
    Object.assign(
      configuration,
      {
        onChange: function(val) {
          return setValue(val);
        },
        value: value
      }
    )
  );
}

reactR.reactShinyInput('.faSlider', 'rfabric.faSlider', SliderInput);
