# Define Ripley's K function

from numpy cimport ndarray as ar

def K_t(double t,
        ar[double,ndim =2] D,
        double A,
        ):
    
    """Ripley's K
    
    Parameters:
    -----------
    
    t : double
        distance to compute metric for
    D : ndarray[double,ndim=2]
        distance matrix
    A : double
        area of region
    
    Returns:
    --------
    Ripley's K at distance t
    
    """
    
    cdef double s  = 0.0
    cdef int i,j
    cdef int n_pts = D.shape[0]
    
    for i in range(n_pts-1):
        for j in range(i+1,n_pts):
            s += int(D[i,j] < t)
            
    s = s * A
    s = s / float(n_pts)**2
    
    return s*2.0
    
