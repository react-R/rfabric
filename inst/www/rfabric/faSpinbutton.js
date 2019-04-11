function SpinbuttonInput(_ref) {
  var configuration = _ref.configuration || {},
      value = _ref.value;
      setValue = _ref.setValue;

  return React.createElement(Fabric.SpinButton,
    Object.assign(
      configuration,
      {
        onChange: function(evt, val) {
          return setValue(val);
        },
        defaultvalue: value
      }
    )
  );
}

reactR.reactShinyInput('.faSpinbutton', 'rfabric.faSpinbutton', SpinbuttonInput);
