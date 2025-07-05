require("dotenv").config(); // Load environment variables

const express = require("express");
const cors = require("cors");
const userRoutes = require("./routes/UserRoutes");
const mongoose = require("mongoose");

const app = express();

app.use(cors());
app.use(express.json());

const mongoURL = process.env.MONGO_URL;
const port = process.env.PORT || 5000;

mongoose
  .connect(mongoURL, {
    useNewUrlParser: true,
    useUnifiedTopology: true,
  })
  .then(() => {
    console.log("DB Connection Successful");
  })
  .catch((err) => {
    console.log("MongoDB Connection Error:", err.message);
  });

app.use("/api/user", userRoutes);

app.listen(port, () => {
  console.log(`Server started on port ${port}...`);
});

