module.exports = app => {
  const mongoose = app.mongoose;
  const ObjectId = mongoose.Schema.Types.ObjectId;

  const AskSchema = new mongoose.Schema({
    title: { type: String, required: true  },
    askbody: { type: String, required: true  },
    subOn: { type: Date , default: Date.now },
    // birthDay: { type: Date, default: Date('1970-01-01') },
    labels: [{ type: String }],
    userId: { type: ObjectId },
    reward: { type: Number },
    showNum: { type: Number, default: 0},
    isClosed: { type: Boolean, default: false },
    closedDate: { type: Date, default: Date.now },
    comment: [{
      commentBody: {type: String, required: true },
      commentOn: { type: Date, default: Date.now },
      commentBy: { type: ObjectId },
      commentUp: { type: Number, default: 0},
      commentDown: { type: Number, default: 0},
      commentSelect: { type: Boolean, default: false }
    }]
  }); 

  return mongoose.model('Ask', AskSchema);
}
