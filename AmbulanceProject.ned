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
        hospital: Sink {
            @display("p=664,91");
        }
        ambulance1: Server {
            @display("p=544,58");
        }
        ambulance2: Server {
            @display("p=544,130");
        }
        ambulance3: Server {
            @display("p=544,188");
        }
        ambulance4: Server {
            @display("p=544,247");
        }
        ambulance5: Server {
            @display("p=544,310;b=9,5");
        }
    connections:
        classifier.out++ --> low_severity_queue.in++;
        classifier.out++ --> medium_severity_queue.in++;
        classifier.rest --> high_severity_queue.in++;
        ambulance1.out --> hospital.in++;
        low_severity.out --> classifier.in++;
        medium_severity.out --> classifier.in++;
        high_severity.out --> classifier.in++;
        ambulance2.out --> hospital.in++;
        ambulance3.out --> hospital.in++;
        ambulance4.out --> hospital.in++;
        ambulance5.out --> hospital.in++;
        high_severity_queue.out++ --> ambulance5.in++;
        high_severity_queue.out++ --> ambulance4.in++;
        high_severity_queue.out++ --> ambulance3.in++;
        high_severity_queue.out++ --> ambulance2.in++;
        high_severity_queue.out++ --> ambulance1.in++;
        medium_severity_queue.out++ --> ambulance5.in++;
        medium_severity_queue.out++ --> ambulance4.in++;
        medium_severity_queue.out++ --> ambulance3.in++;
        medium_severity_queue.out++ --> ambulance2.in++;
        medium_severity_queue.out++ --> ambulance1.in++;
        low_severity_queue.out++ --> ambulance5.in++;
        low_severity_queue.out++ --> ambulance4.in++;
        low_severity_queue.out++ --> ambulance3.in++;
        low_severity_queue.out++ --> ambulance2.in++;
        low_severity_queue.out++ --> ambulance1.in++;
}
