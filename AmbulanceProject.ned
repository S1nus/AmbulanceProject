import org.omnetpp.queueing.Classifier;
import org.omnetpp.queueing.Queue;
import org.omnetpp.queueing.Sink;
import org.omnetpp.queueing.Source;


network AmbulanceProject
{
    @display("bgb=527,332");
    submodules:
        low_severity: Source {
            @display("p=82,58");
        }
        medium_severity: Source {
            @display("p=83,140");
        }
        high_severity: Source {
            @display("p=87,238");
        }
        dispatch: Classifier {
            @display("p=230,142");
        }
        ambulance1: Queue {
            @display("p=333,58");
        }
        ambulance2: Queue {
            @display("p=333,142");
        }
        ambulance3: Queue {
            @display("p=333,251");
        }
        hospital: Sink {
            @display("p=433,157");
        }
    connections:
        low_severity.out --> dispatch.in++;
        medium_severity.out --> dispatch.in++;
        high_severity.out --> dispatch.in++;
        dispatch.out++ --> ambulance1.in++;
        dispatch.out++ --> ambulance2.in++;
        dispatch.rest --> ambulance3.in++;
        ambulance1.out --> hospital.in++;
        ambulance2.out --> hospital.in++;
        ambulance3.out --> hospital.in++;
}
