const path = require('path');
const express = require('express');

<<<<<<< HEAD
// Import user and vehicle routes
const routes = require('./controllers');
=======
const session = require('express-session');
const exphbs = require('express-handlebars');

const userRoutes = require('./controllers/routes/user-routes');
const vehicleRoutes = require('./controllers/routes/vehicle-routes');
>>>>>>> 3409800829c2505bd9c38aab996e76e1fc4a7a6d

const routes = require('./controllers');
const sequelize = require('./config/connection');

const app = express();
const PORT = process.env.PORT || 3001;

const sess = {
  secret: 'Super secret secret',
  resave: false,
  saveUninitialized: true,
};

app.use(session(sess));

const hbs = exphbs.create({ helpers });

app.engine('handlebars', hbs.engine);
app.set('view engine', 'handlebars');

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(express.static(path.join(__dirname, 'public')));

app.use(routes);

<<<<<<< HEAD
// Use the routes
app.use(routes)
=======
app.use('/users', userRoutes);
app.use('/vehicles', vehicleRoutes);
>>>>>>> 3409800829c2505bd9c38aab996e76e1fc4a7a6d

sequelize.sync({ force: false }).then(() => {
  app.listen(PORT, () => console.log('Now listening on port 3001'));
});