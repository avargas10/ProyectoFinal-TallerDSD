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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Andres Vargas/Documents/Verilog Projects/microProcessor/microProcessor/data_mem.v";
static int ng1[] = {0, 0};
static int ng2[] = {64, 0};
static int ng3[] = {1, 0};
static int ng4[] = {4, 0};



static void Initial_26_0(char *t0)
{
    char t5[8];
    char t17[8];
    char t18[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    unsigned int t29;
    int t30;
    char *t31;
    unsigned int t32;
    int t33;
    int t34;
    unsigned int t35;
    unsigned int t36;
    int t37;
    int t38;

LAB0:    xsi_set_current_line(26, ng0);

LAB2:    xsi_set_current_line(27, ng0);
    xsi_set_current_line(27, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1288);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 8);

LAB3:    t1 = (t0 + 1288);
    t2 = (t1 + 36U);
    t3 = *((char **)t2);
    t4 = ((char*)((ng2)));
    memset(t5, 0, 8);
    t6 = (t3 + 4);
    if (*((unsigned int *)t6) != 0)
        goto LAB5;

LAB4:    t7 = (t4 + 4);
    if (*((unsigned int *)t7) != 0)
        goto LAB5;

LAB8:    if (*((unsigned int *)t3) < *((unsigned int *)t4))
        goto LAB6;

LAB7:    t9 = (t5 + 4);
    t10 = *((unsigned int *)t9);
    t11 = (~(t10));
    t12 = *((unsigned int *)t5);
    t13 = (t12 & t11);
    t14 = (t13 != 0);
    if (t14 > 0)
        goto LAB9;

LAB10:
LAB1:    return;
LAB5:    t8 = (t5 + 4);
    *((unsigned int *)t5) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB7;

LAB6:    *((unsigned int *)t5) = 1;
    goto LAB7;

LAB9:    xsi_set_current_line(28, ng0);
    t15 = ((char*)((ng1)));
    t16 = (t0 + 1196);
    t19 = (t0 + 1196);
    t20 = (t19 + 44U);
    t21 = *((char **)t20);
    t22 = (t0 + 1196);
    t23 = (t22 + 40U);
    t24 = *((char **)t23);
    t25 = (t0 + 1288);
    t26 = (t25 + 36U);
    t27 = *((char **)t26);
    xsi_vlog_generic_convert_array_indices(t17, t18, t21, t24, 2, 1, t27, 8, 2);
    t28 = (t17 + 4);
    t29 = *((unsigned int *)t28);
    t30 = (!(t29));
    t31 = (t18 + 4);
    t32 = *((unsigned int *)t31);
    t33 = (!(t32));
    t34 = (t30 && t33);
    if (t34 == 1)
        goto LAB11;

LAB12:    xsi_set_current_line(27, ng0);
    t1 = (t0 + 1288);
    t2 = (t1 + 36U);
    t3 = *((char **)t2);
    t4 = ((char*)((ng3)));
    memset(t5, 0, 8);
    xsi_vlog_unsigned_add(t5, 32, t3, 8, t4, 32);
    t6 = (t0 + 1288);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 8);
    goto LAB3;

LAB11:    t35 = *((unsigned int *)t17);
    t36 = *((unsigned int *)t18);
    t37 = (t35 - t36);
    t38 = (t37 + 1);
    xsi_vlogvar_assign_value(t16, t15, 0, *((unsigned int *)t18), t38);
    goto LAB12;

}

static void Always_31_1(char *t0)
{
    char t7[8];
    char t16[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t17;

LAB0:    t1 = (t0 + 1956U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 2296);
    *((int *)t2) = 1;
    t3 = (t0 + 1984);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(32, ng0);

LAB5:    xsi_set_current_line(33, ng0);
    t4 = (t0 + 1196);
    t5 = (t4 + 36U);
    t6 = *((char **)t5);
    t8 = (t0 + 1196);
    t9 = (t8 + 44U);
    t10 = *((char **)t9);
    t11 = (t0 + 1196);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    t14 = (t0 + 784U);
    t15 = *((char **)t14);
    t14 = ((char*)((ng4)));
    memset(t16, 0, 8);
    xsi_vlog_unsigned_divide(t16, 32, t15, 32, t14, 32);
    xsi_vlog_generic_get_array_select_value(t7, 32, t6, t10, t13, 2, 1, t16, 32, 2);
    t17 = (t0 + 1104);
    xsi_vlogvar_assign_value(t17, t7, 0, 0, 32);
    goto LAB2;

}

static void Always_35_2(char *t0)
{
    char t13[8];
    char t14[8];
    char t23[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t24;
    unsigned int t25;
    int t26;
    char *t27;
    unsigned int t28;
    int t29;
    int t30;
    unsigned int t31;
    unsigned int t32;
    int t33;
    int t34;

LAB0:    t1 = (t0 + 2100U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 2304);
    *((int *)t2) = 1;
    t3 = (t0 + 2128);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(36, ng0);

LAB5:    xsi_set_current_line(37, ng0);
    t4 = (t0 + 692U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(38, ng0);

LAB9:    xsi_set_current_line(39, ng0);
    t11 = (t0 + 876U);
    t12 = *((char **)t11);
    t11 = (t0 + 1196);
    t15 = (t0 + 1196);
    t16 = (t15 + 44U);
    t17 = *((char **)t16);
    t18 = (t0 + 1196);
    t19 = (t18 + 40U);
    t20 = *((char **)t19);
    t21 = (t0 + 784U);
    t22 = *((char **)t21);
    t21 = ((char*)((ng4)));
    memset(t23, 0, 8);
    xsi_vlog_unsigned_divide(t23, 32, t22, 32, t21, 32);
    xsi_vlog_generic_convert_array_indices(t13, t14, t17, t20, 2, 1, t23, 32, 2);
    t24 = (t13 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (!(t25));
    t27 = (t14 + 4);
    t28 = *((unsigned int *)t27);
    t29 = (!(t28));
    t30 = (t26 && t29);
    if (t30 == 1)
        goto LAB10;

LAB11:    goto LAB8;

LAB10:    t31 = *((unsigned int *)t13);
    t32 = *((unsigned int *)t14);
    t33 = (t31 - t32);
    t34 = (t33 + 1);
    xsi_vlogvar_wait_assign_value(t11, t12, 0, *((unsigned int *)t14), t34, 0LL);
    goto LAB11;

}


extern void work_m_00000000004207506514_1720460815_init()
{
	static char *pe[] = {(void *)Initial_26_0,(void *)Always_31_1,(void *)Always_35_2};
	xsi_register_didat("work_m_00000000004207506514_1720460815", "isim/total_test_isim_beh.exe.sim/work/m_00000000004207506514_1720460815.didat");
	xsi_register_executes(pe);
}
