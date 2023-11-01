// user.js
const { DataTypes } = require('sequelize');
const sequelize = require('../config/connection'); // Import your Sequelize instance

const User = sequelize.define('User', {
  id: {
        type: DataTypes.INTEGER,
        primaryKey: true, // Specify this field as the primary key
        autoIncrement: true, // Enable auto-incrementing for the primary key
  },
  username: {
    type: DataTypes.STRING,
    allowNull: false,
    unique: true,
  },
  email: {
    type: DataTypes.STRING,
    allowNull: false,
    unique: true,
    validate: {
      isEmail: true, // Ensure the email is a valid email address
    },
  },
  password: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  first_name: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  last_name: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  street: {
    type: DataTypes.STRING,
  },
  city: {
    type: DataTypes.STRING,
  },
  state: {
    type: DataTypes.STRING,
  },
  zip: {
    type: DataTypes.STRING,
  },
  phone_number: {
    type: DataTypes.STRING,
  }, 
  updated_at: {
    type: DataTypes.DATE,
    defaultValue: sequelize.literal('CURRENT_TIMESTAMP'),
  },
  created_at: {
    type: DataTypes.DATE,
    defaultValue: sequelize.literal('CURRENT_TIMESTAMP'),
  }, 
  // Add more user-specific fields as needed
},
{
  sequelize,
  timestamps: true,
  freezeTableName: true,
  underscored: true,
  modelName: 'user',
}
);

module.exports = User;
