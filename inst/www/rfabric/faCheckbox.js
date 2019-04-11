function CheckboxInput(_ref) {
  var configuration = _ref.configuration || {},
      value = _ref.value,
      setValue = _ref.setValue;
  return React.createElement(Fabric.Checkbox,
    Object.assign(
      configuration,
      {
        onChange: function (evt, checked) {
          return setValue(checked);
        },
        checked: value
      }
    )
  );
};

reactR.reactShinyInput('.faCheckbox', 'rfabric.faCheckbox', CheckboxInput);
