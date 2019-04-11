function RatingInput(_ref) {
  var configuration = _ref.configuration || {},
      value = _ref.value,
      setValue = _ref.setValue;
  return React.createElement(Fabric.Rating,
    Object.assign(
      configuration,
      {
        onChange: function (evt, rating) {
          return setValue(rating);
        },
        rating: value
      }
    )
  );
}

reactR.reactShinyInput('.faRating', 'rfabric.faRating', RatingInput);
