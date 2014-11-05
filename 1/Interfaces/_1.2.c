/* srl info for 1.2 */

#include "/software/sr-2.3.3/lib/srmulti.h"
#include "/software/sr-2.3.3/lib/sr.h"

static char SR_version[] = 
	"SR version 2.3.3";

int sr_max_co_stmts = 1000000;
int sr_max_classes = 1000000;
int sr_max_loops = 10000;
int sr_max_operations = 1000000;
int sr_max_processes = 1000000;
int sr_max_rmt_reqs = 1000000;
int sr_max_resources = 1000000;
int sr_max_semaphores = 1000000;
int sr_stack_size = 40000;
int sr_async_flag = 0;
char sr_exec_path[] = "/software/sr-2.3.3/lib/srx";

int N_factorial = 0;  extern void R_factorial(), F_factorial();

Rpat sr_rpatt[] = {
    { "factorial", R_factorial, F_factorial },
};
int sr_num_rpats = 1;
