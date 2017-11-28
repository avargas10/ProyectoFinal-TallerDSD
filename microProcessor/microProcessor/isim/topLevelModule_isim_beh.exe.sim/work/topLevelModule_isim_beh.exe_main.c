/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000003291978668_3014671030_init();
    work_m_00000000000528924906_0195805686_init();
    work_m_00000000003739630160_2076948867_init();
    work_m_00000000002183622080_3069169239_init();
    work_m_00000000000391717311_2950201243_init();
    work_m_00000000003589125257_0653893952_init();
    work_m_00000000002604307963_3387640817_init();
    work_m_00000000003192609509_2414638786_init();
    work_m_00000000001260198731_4254653711_init();
    work_m_00000000001474958758_0989080226_init();
    work_m_00000000000650450092_1523848368_init();
    work_m_00000000001260198731_2762303095_init();
    work_m_00000000003699804179_3275311449_init();
    work_m_00000000004273511423_1966365028_init();
    work_m_00000000001582039464_0886308060_init();
    work_m_00000000003301322534_0340138146_init();
    work_m_00000000003339740836_4093533013_init();
    work_m_00000000000534333485_3677266589_init();
    work_m_00000000004207506514_1720460815_init();
    work_m_00000000002289304126_0870519793_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002289304126_0870519793");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
