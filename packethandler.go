package main

import (
	
	"github.com/JetmirH/server-shared"
	//"github.com/thethingsnetwork/server-shared"
)

type PacketHandler interface {
	Configure() error
	HandleStatus(*shared.GatewayStatus)
	HandlePacket(*shared.RxPacket)
	//Added by Jetmir
	HandleDevStats(*shared.DevStats) 
}
