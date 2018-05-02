import org.omnetpp.queueing.Classifier;
import org.omnetpp.queueing.PassiveQueue;
import org.omnetpp.queueing.Queue;
import org.omnetpp.queueing.Server;
import org.omnetpp.queueing.Sink;
import org.omnetpp.queueing.Source;


network AmbulanceProject
{
    @display("bgb=737,365");
    submodules:
        low_severity: Source {
            @display("p=82,58");
        }
        high_severity: Source {
            @display("p=87,238");
        }
        classifier: Classifier {
            @display("p=185,142");
        }
        medium_severity: Source {
            @display("p=85,142");
        }
        low_severity_queue: PassiveQueue {
            @display("p=340,58");
        }
        medium_severity_queue: PassiveQueue {
            @display("p=340,149");
        }
        high_severity_queue: PassiveQueue {
            @display("p=340,271");
        }
        ambulance: Server {
            @display("p=516,149");
        }
        hospital: Sink {
            @display("p=618,152");
        }
    connections:
        low_severity.out --> classifier.in++;
        high_severity.out --> classifier.in++;
        medium_severity.out --> classifier.in++;
        classifier.out++ --> low_severity_queue.in++;
        classifier.out++ --> medium_severity_queue.in++;
        classifier.rest --> high_severity_queue.in++;
        high_severity_queue.out++ --> ambulance.in++;
        medium_severity_queue.out++ --> ambulance.in++;
        low_severity_queue.out++ --> ambulance.in++;
        ambulance.out --> hospital.in++;
}
