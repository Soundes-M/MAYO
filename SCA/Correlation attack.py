import numpy as np
import matplotlib.pyplot as plt


# PoI and Parameter for F3 traces
PoI_start = 240
PoI_end = 5000
cycle = 204
measure_offset = 10
measure_range = 15
v = 29

# samples per trace
samp = 5000

# field size q
q = 31

# number of multiplications with oilspace entry
# can be chosen up to m = 60, but then trace needs to be 13000 samples long since one mul takes around 215 samples
# for smaller traces just choose e.g. nrMul = 15
nrMul = 20

# number of candidates with high correlations for vinegar value
nrc = 10

PATH_REF = "./reftraces/"
PATH_ATTACK = "./attacktraces/"

def read_reftraces():
    #############################################################################
    # read reference traces from profiling device                               #
    #############################################################################
    # read in reference traces
    ref_data = np.empty([q,v,samp])
    for i in range(q):
        try:
            trace_data = np.genfromtxt(PATH_REF +'reftrace_'+ str(i) + '.csv', delimiter=',')
        except:
            print("\nReference file \"reftrace_" + str(i) + ".csv\" missing in \""+ PATH_REF +"\"\n")
            sys.exit()
        ref_data[i] = trace_data.T
    # read in trace with random vinegar values for mean computation
    try:
        trace_rand_data = np.genfromtxt(PATH_REF + '/randtrace.csv', delimiter=',')
    except:
        print("\nRandom trace file \"randtrace.csv\" missing in \""+ PATH_REF +"\"\n")
        sys.exit()
    trace_rand=trace_rand_data.T
    # compute mean of reference device (by using trace with random vinegar values)
    trace_rand_mean=np.mean(trace_rand[0:v-1,PoI_start:PoI_end],axis=0)

    return (ref_data,trace_rand_mean)


def get_vin_cand_from_trace(inputNr,ref_data,trace_rand_mean):
    ######################################
    # Select path of traces              #
    ######################################
    path=PATH_ATTACK
    traces_v_name="attacktrace_" + str(inputNr) + ".csv"
    ######################################
    # read trace from target device      #
    ######################################
    try:
        target_data = np.genfromtxt(path+traces_v_name, delimiter=',')
    except:
        print("Attack trace file \"attacktrace_" + str(inputNr) + ".csv\" missing in \""+ path +"\"\n")
        sys.exit()
    tartrace = target_data.T
    # compute mean of target device (by using the traces from the real vin values, which is the only option we have for the target device) 
    tartrace_mean=np.mean(tartrace[0:v-1,PoI_start:PoI_end],axis=0)
    # #############################################################################
    # # Automated attack on v-values                                              #
    # #############################################################################
    indexint = np.empty([nrc,v])
    indexsum = np.empty([nrc,v])
    indexcomb = np.empty([nrc,v])
    ######################################
    # loop over vinegar variables       #
    ######################################
    for i in range(v):
        ######################################
        # prepare attack trace               #
        ######################################
        tarcurtrace = tartrace[i,PoI_start:PoI_end] - tartrace_mean# tartrace_mean #- trace_rand_mean
        # Cut out PoIs for each bit of 8-bit vinegar variable
        poi_tartrace = []
        sumpoi_tartrace = np.empty(nrMul)
        region = 0
        for s in range(0,nrMul):
            poi_tartrace = np.append(poi_tartrace,tarcurtrace[region+measure_offset:region+measure_offset+measure_range])
            sumpoi_tartrace[s] = sum(tarcurtrace[region+measure_offset:region+measure_offset+measure_range])
            region = region + cycle
        ######################################
        # prepare ref traces and correlate to attack trace #
        ######################################
        ref_trace = np.empty([PoI_end-PoI_start])
        cotarint = np.empty(q)
        cotarsum = np.empty(q)
        for j in range(0,q):
            # collect column i and subtract mean
            ref_trace = ref_data[j,i,PoI_start:PoI_end] -  trace_rand_mean
            # Cut out PoIs for each bit of 8-bit vinegar variable
            poi_reftrace = []
            sumpoi_reftrace = np.empty(nrMul)
            region = 0
            for s in range(0,nrMul):
                poi_reftrace = np.append(poi_reftrace,ref_trace[region+measure_offset:region+measure_offset+measure_range])
                sumpoi_reftrace[s] = sum(ref_trace[region+measure_offset:region+measure_offset+measure_range])
                region = region + cycle

            # Correlate target trace with reference traces  #
            cotarint[j] = round(np.corrcoef(poi_tartrace,poi_reftrace)[0,1],2)
            cotarsum[j] = round(np.corrcoef(sumpoi_tartrace,sumpoi_reftrace)[0,1],2)

        # find maximum correlation
        cotarcomb = cotarint +cotarsum
        #index = np.argmax(cotar)
        #sumindex = np.argmax(cotarsum)
        #combindex = np.argmax(cotarcomb)
        #print(np.argpartition(cotarint, -5)[-5:])
        #print(cotarint)
        #print(cotarsum)
        indexint[:,i] = cotarint.argsort()[-nrc:][::-1]
        indexsum[:,i] = cotarsum.argsort()[-nrc:][::-1]
        indexcomb[:,i] = cotarcomb.argsort()[-nrc:][::-1]

    return (indexint,indexsum,indexcomb)

# read in ref trace #
print('Reading in reference traces')   
(ref_data,trace_rand_mean) = read_reftraces()
print('Done')  

#oilvector = [16, 1, 29, 9, 27, 22, 22, 15, 28, 24, 20, 17, 26, 22, 5, 16, 15, 4, 6, 26, 13, 22, 13, 23, 29, 1, 0, 14, 26, 8, 18, 30, 29, 8, 19, 11, 27, 7, 13, 16, 6, 14, 4, 0, 0, 30, 26, 25, 8, 2, 1, 3, 8, 5, 2, 10 ]; 

# get oil vector from target trace #
#Oilspace = zero_matrix(K,NUMBER_OF_TRACES,n)
oil_counter=0
NUMBER_OF_TRACES = 2
for inputNr in range(0,NUMBER_OF_TRACES):
    print('Reading in target traces and get candidates for vin')  
    (indexint,indexsum,indexcomb) = get_vin_cand_from_trace(inputNr,ref_data,trace_rand_mean)
    print('Done')  

    for j in range(v):
        #print(j , 'True oil variable', oilvector[j])
        print('Oil Variablen mit max Corr')
        #print(indexint[:,j])
        print(indexsum[:,j])
        #print(indexcomb[:,j])
