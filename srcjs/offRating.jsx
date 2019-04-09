const RatingInput( configuration, value, setValue ) {
  return <input type='text' value={value} onChange={e => setValue(e.target.value)}/>;
};

reactR.reactShinyInput('.OffRating', 'officeInputs.OffRating', RatingInput);
