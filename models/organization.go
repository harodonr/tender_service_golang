package models

import "gorm.io/gorm"

type Organization struct {
	ID          uint    `gorm:"primary key;autoIncrement" json:"id"`
	Name        string  `json:"name"`
	Description *string `json:"description"`
	Type        *string `json:"type"`
	Created_at  string  `json:"created_at"`
	Updated_at  string  `json:"updated_at"`
}

func MigrateOrganization(db *gorm.DB) error {
	err := db.AutoMigrate(&Organization{})
	return err
}
