package models

import (
	"context"
	"database/sql"
	"log"
	"sync"

	_ "github.com/go-sql-driver/mysql"
)

var (
	db    *sql.DB
	onceM sync.Once
	onceR sync.Once
	err   error
)

var ctx = context.Background()

func InitConnectDataBase() {
	onceM.Do(func() {
		db, err = sql.Open("mysql", "root:Dung13524685@tcp(192.168.0.107:3306)/telemedicine")
		if err != nil {
			log.Println("error connect database : ", err)
		} else {
			log.Println("====InitConnectMySql====")
			log.Println(db)
			log.Println("========================")
		}
	})
}
