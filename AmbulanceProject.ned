import org.omnetpp.queueing.Classifier;
import org.omnetpp.queueing.PassiveQueue;
import org.omnetpp.queueing.Queue;
import org.omnetpp.queueing.Server;
import org.omnetpp.queueing.Sink;
import org.omnetpp.queueing.Source;


network AmbulanceProject
{
    @display("bgb=1400,1229");
    submodules:
        low_severity: Source {
            @display("p=61,524");
        }
        high_severity: Source {
            @display("p=66,704");
        }
        classifier: Classifier {
            @display("p=164,608");
        }
        medium_severity: Source {
            @display("p=64,608");
        }
        low_severity_queue: PassiveQueue {
            @display("p=319,524");
        }
        medium_severity_queue: PassiveQueue {
            @display("p=319,615");
        }
        high_severity_queue: PassiveQueue {
            @display("p=335,757");
        }
        hospital: Sink {
            @display("p=903,91");
        }
        ambulance1: Server {

            @display("p=552,29");
        }
        ambulance2: Server {

            @display("p=552,74");
        }
        ambulance3: Server {

            @display("p=552,130");
        }
        ambulance4: Server {

            @display("p=552,181");
        }
        ambulance5: Server {

            @display("p=552,238");
        }
        ambulance6: Server {

            @display("p=552,277");
        }
        ambulance7: Server {

            @display("p=552,324");
        }
        ambulance8: Server {

            @display("p=552,379");
        }
        ambulance9: Server {

            @display("p=552,433");
        }
        ambulance10: Server {

            @display("p=552,485");
        }
        ambulance11: Server {

            @display("p=552,563");
        }
        ambulance12: Server {

            @display("p=552,634");
        }
        ambulance13: Server {

            @display("p=552,694");
        }
        ambulance14: Server {

            @display("p=552,754");
        }
        ambulance15: Server {

            @display("p=552,809");
        }
        ambulance16: Server {

            @display("p=552,877");
        }
        ambulance17: Server {

            @display("p=552,933");
        }
        ambulance18: Server {

            @display("p=552,998");
        }
        ambulance19: Server {

            @display("p=552,1062");
        }
        ambulance20: Server {

            @display("p=552,1132");
        }

    connections:
        classifier.out++ --> low_severity_queue.in++;
        classifier.out++ --> medium_severity_queue.in++;
        classifier.rest --> high_severity_queue.in++;
        low_severity.out --> classifier.in++;
        medium_severity.out --> classifier.in++;
        high_severity.out --> classifier.in++;
        high_severity_queue.out++ --> ambulance10.in++;
        high_severity_queue.out++ --> ambulance9.in++;
        high_severity_queue.out++ --> ambulance8.in++;
        high_severity_queue.out++ --> ambulance7.in++;
        high_severity_queue.out++ --> ambulance6.in++;
        high_severity_queue.out++ --> ambulance5.in++;
        high_severity_queue.out++ --> ambulance4.in++;
        high_severity_queue.out++ --> ambulance3.in++;
        high_severity_queue.out++ --> ambulance2.in++;
        high_severity_queue.out++ --> ambulance1.in++;
        medium_severity_queue.out++ --> ambulance10.in++;
        medium_severity_queue.out++ --> ambulance9.in++;
        medium_severity_queue.out++ --> ambulance8.in++;
        medium_severity_queue.out++ --> ambulance7.in++;
        medium_severity_queue.out++ --> ambulance6.in++;
        medium_severity_queue.out++ --> ambulance5.in++;
        medium_severity_queue.out++ --> ambulance4.in++;
        medium_severity_queue.out++ --> ambulance3.in++;
        medium_severity_queue.out++ --> ambulance2.in++;
        medium_severity_queue.out++ --> ambulance1.in++;
        low_severity_queue.out++ --> ambulance10.in++;
        low_severity_queue.out++ --> ambulance9.in++;
        low_severity_queue.out++ --> ambulance8.in++;
        low_severity_queue.out++ --> ambulance7.in++;
        low_severity_queue.out++ --> ambulance6.in++;
        low_severity_queue.out++ --> ambulance5.in++;
        low_severity_queue.out++ --> ambulance4.in++;
        low_severity_queue.out++ --> ambulance3.in++;
        low_severity_queue.out++ --> ambulance2.in++;
        low_severity_queue.out++ --> ambulance1.in++;
        ambulance1.out --> hospital.in++;
        ambulance2.out --> hospital.in++;
        ambulance3.out --> hospital.in++;
        ambulance4.out --> hospital.in++;
        ambulance5.out --> hospital.in++;
        ambulance6.out --> hospital.in++;
        ambulance7.out --> hospital.in++;
        ambulance8.out --> hospital.in++;
        ambulance9.out --> hospital.in++;
        ambulance10.out --> hospital.in++;
        ambulance11.out --> hospital.in++;
        ambulance12.out --> hospital.in++;
        ambulance13.out --> hospital.in++;
        ambulance14.out --> hospital.in++;
        ambulance15.out --> hospital.in++;
        ambulance16.out --> hospital.in++;
        ambulance17.out --> hospital.in++;
        ambulance18.out --> hospital.in++;
        ambulance19.out --> hospital.in++;
        ambulance20.out --> hospital.in++;
        high_severity_queue.out++ --> ambulance20.in++;
        high_severity_queue.out++ --> ambulance19.in++;
        high_severity_queue.out++ --> ambulance18.in++;
        high_severity_queue.out++ --> ambulance17.in++;
        high_severity_queue.out++ --> ambulance16.in++;
        high_severity_queue.out++ --> ambulance15.in++;
        high_severity_queue.out++ --> ambulance14.in++;
        high_severity_queue.out++ --> ambulance13.in++;
        high_severity_queue.out++ --> ambulance12.in++;
        high_severity_queue.out++ --> ambulance11.in++;
        medium_severity_queue.out++ --> ambulance20.in++;
        medium_severity_queue.out++ --> ambulance19.in++;
        medium_severity_queue.out++ --> ambulance18.in++;
        medium_severity_queue.out++ --> ambulance17.in++;
        medium_severity_queue.out++ --> ambulance16.in++;
        medium_severity_queue.out++ --> ambulance15.in++;
        medium_severity_queue.out++ --> ambulance14.in++;
        medium_severity_queue.out++ --> ambulance13.in++;
        medium_severity_queue.out++ --> ambulance12.in++;
        medium_severity_queue.out++ --> ambulance11.in++;
        low_severity_queue.out++ --> ambulance11.in++;
        low_severity_queue.out++ --> ambulance12.in++;
        low_severity_queue.out++ --> ambulance13.in++;
        low_severity_queue.out++ --> ambulance14.in++;
        low_severity_queue.out++ --> ambulance15.in++;
        low_severity_queue.out++ --> ambulance16.in++;
        low_severity_queue.out++ --> ambulance17.in++;
        low_severity_queue.out++ --> ambulance18.in++;
        low_severity_queue.out++ --> ambulance19.in++;
        low_severity_queue.out++ --> ambulance20.in++;
}
