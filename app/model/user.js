module.exports = app => {
  const mongoose = app.mongoose;
  const UserSchema = new mongoose.Schema({
    userName: { type: String, required: true  },
    password: { type: String, required: true },
    subOn: { type: Date , default: Date.now },
    lastLogin : { type: Date, default: Date.now },
    email: { type: String },
    phone: { type: String },
    birthDay: { type: Date, default: Date('1970-01-01') },
    blogUrl: { type: String },
  });

  return mongoose.model('User', UserSchema);
}
