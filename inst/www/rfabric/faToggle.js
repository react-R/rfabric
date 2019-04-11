function ToggleInput(_ref) {
  var configuration = _ref.configuration || {},
      value = _ref.value;
      setValue = _ref.setValue;

  return React.createElement(Fabric.Toggle,
    Object.assign(
      configuration,
      {
        onChange: function(evt, val) {
          return setValue(val);
        },
        defaultChecked: value
      }
    )
  );
}

reactR.reactShinyInput('.faToggle', 'rfabric.faToggle', ToggleInput);
