mongo --eval "
  db.auth('$MONGO_INITDB_ROOT_USERNAME', '$MONGO_INITDB_ROOT_PASSWORD');
  db = db.getSiblingDB('$MONGO_DATABASE');
  db.createUser({ user: '$MONGO_USER', pwd: '$MONGO_PASSWORD', roles: [{ role: 'readWrite', db: '$MONGO_DATABASE' }] });

  db.users.insert({ username: 'test', password: '\$2b\$10\$1pdSQa3qWU6dCMJxO/B19uQ6pUxty1GcSAUeuKdmDQBWTinPR3YjW' });

  db.entries.insert({ value: 0, createdAt: new Date(2021, 0, 1) });
  db.entries.insert({ value: 1, createdAt: new Date(2021, 5, 1) });
  db.entries.insert({ value: 2, createdAt: new Date(2021, 7, 13) });
  db.entries.insert({ value: 2, createdAt: new Date(2021, 2, 13) });
  db.entries.insert({ value: 1, createdAt: new Date(2021, 2, 3) });
  db.entries.insert({ value: 0, createdAt: new Date() });
  db.entries.insert({ value: 0, createdAt: new Date() });
  db.entries.insert({ value: 1, createdAt: new Date() });
  db.entries.insert({ value: 2, createdAt: new Date() });
"
