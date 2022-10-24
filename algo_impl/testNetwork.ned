//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

package v2x_simulation.simulations.algo_impl;
//package inet.showcases.routing.manet;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.ManetRouter;
import inet.node.gpsr.GpsrRouter;
import inet.physicallayer.ieee80211.packetlevel.Ieee80211ScalarRadioMedium;
import inet.visualizer.integrated.IntegratedMultiVisualizer;
//
// TODO auto-generated type
//
network TestNetwork
{
    parameters:
        @display("bgb=1500,1000;bgl=2");
        @statistic[numRcvdPk](source=count(source.app[0].pingRxSeq); record=figure; targetFigure=numRcvdPkCounter; checkSignals=false);
        @figure[numRcvdPkCounter](type=counter; pos=65,400; label="Received ping replies"; decimalPlaces=4);
        @statistic[numLost](source=count(source.app[0].numLost); record=figure; targetFigure=numLostPkCounter; checkSignals=false);
        @figure[numLostPkCounter](type=counter; pos=65,500; label="Pings lost"; decimalPlaces=4);
        @figure[forest](type=image; image="showcases/forest"; pos=0,0; transform=scale(0.7),translate(1100,450));
        @figure[tree1](type=image; image="showcases/tree"; pos=0,0; transform=scale(0.1),translate(1000,350));
        @figure[tree2](type=image; image="showcases/tree"; pos=0,0; transform=scale(0.1),translate(1065,260));
        @figure[tree3](type=image; image="showcases/tree"; pos=0,0; transform=scale(0.1),translate(1140,380));
        @figure[tree4](type=image; image="showcases/tree"; pos=0,0; transform=scale(0.1),translate(1080,470));
        @figure[tree5](type=image; image="showcases/tree"; pos=0,0; transform=scale(0.1),translate(990,530));
        @figure[tree6](type=image; image="showcases/tree"; pos=0,0; transform=scale(0.1),translate(1050,600));
        @figure[tree7](type=image; image="showcases/tree"; pos=0,0; transform=scale(0.1),translate(1170,620));
    submodules:
        radioMedium: Ieee80211ScalarRadioMedium {
            @display("p=100,100");
        }
        visualizer: IntegratedMultiVisualizer {
            @display("p=100,200");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=100,300");
        }
        source: ManetRouter {
            @display("p=329.31198,353.408;i=misc/solarpanel");
        }
        destination: ManetRouter {
            @display("p=819.264,371.47998;i=misc/sensorgateway");
        }
        node9: ManetRouter {
            @display("p=682.72,510.03198;i=misc/solarpanel");
        }
        node11: ManetRouter {
            @display("p=562.24,371.47998;i=misc/solarpanel");
        }
        node12: ManetRouter {
            @display("p=407.624,489.952;i=misc/solarpanel");
        }
}




