package main

import (
	
	"github.com/JetmirH/server-shared"
	//"github.com/thethingsnetwork/server-shared"
)

type Consumer interface {
	Configure() error
	Consume() (*shared.ConsumerQueues, error)
}
