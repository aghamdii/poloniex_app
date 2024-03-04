abstract class DataMapper<FROM, TO> {
  const DataMapper();

  TO map(FROM data);
}
