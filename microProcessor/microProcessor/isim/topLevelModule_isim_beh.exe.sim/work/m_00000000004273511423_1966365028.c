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
static const char *ng0 = "C:/Users/Andres Vargas/Documents/Verilog Projects/microProcessor/microProcessor/InmExtension.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {0U, 0U};
static int ng3[] = {1, 0};
static int ng4[] = {2, 0};
static int ng5[] = {6, 0};
static unsigned int ng6[] = {4294967295U, 4294967295U};



static void Always_27_0(char *t0)
{
    char t7[8];
    char t8[8];
    char t20[8];
    char t21[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t9;
    char *t10;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;

LAB0:    t1 = (t0 + 1444U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 1640);
    *((int *)t2) = 1;
    t3 = (t0 + 1472);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(28, ng0);

LAB5:    xsi_set_current_line(29, ng0);
    t4 = (t0 + 692U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t4, 32);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 32);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 32);
    if (t6 == 1)
        goto LAB11;

LAB12:
LAB14:
LAB13:    xsi_set_current_line(33, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 920);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB15:    goto LAB2;

LAB7:    xsi_set_current_line(30, ng0);
    t9 = (t0 + 600U);
    t10 = *((char **)t9);
    memset(t8, 0, 8);
    t9 = (t8 + 4);
    t11 = (t10 + 4);
    t12 = *((unsigned int *)t10);
    t13 = (t12 >> 0);
    *((unsigned int *)t8) = t13;
    t14 = *((unsigned int *)t11);
    t15 = (t14 >> 0);
    *((unsigned int *)t9) = t15;
    t16 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t16 & 255U);
    t17 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t17 & 255U);
    t18 = ((char*)((ng2)));
    xsi_vlogtype_concat(t7, 32, 32, 2U, t18, 24, t8, 8);
    t19 = (t0 + 920);
    xsi_vlogvar_assign_value(t19, t7, 0, 0, 32);
    goto LAB15;

LAB9:    xsi_set_current_line(31, ng0);
    t3 = (t0 + 600U);
    t4 = *((char **)t3);
    memset(t8, 0, 8);
    t3 = (t8 + 4);
    t9 = (t4 + 4);
    t12 = *((unsigned int *)t4);
    t13 = (t12 >> 0);
    *((unsigned int *)t8) = t13;
    t14 = *((unsigned int *)t9);
    t15 = (t14 >> 0);
    *((unsigned int *)t3) = t15;
    t16 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t16 & 4095U);
    t17 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t17 & 4095U);
    t10 = ((char*)((ng2)));
    xsi_vlogtype_concat(t7, 32, 32, 2U, t10, 20, t8, 12);
    t11 = (t0 + 920);
    xsi_vlogvar_assign_value(t11, t7, 0, 0, 32);
    goto LAB15;

LAB11:    xsi_set_current_line(32, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 600U);
    t9 = *((char **)t4);
    memset(t8, 0, 8);
    t4 = (t8 + 4);
    t10 = (t9 + 4);
    t12 = *((unsigned int *)t9);
    t13 = (t12 >> 0);
    *((unsigned int *)t8) = t13;
    t14 = *((unsigned int *)t10);
    t15 = (t14 >> 0);
    *((unsigned int *)t4) = t15;
    t16 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t16 & 16777215U);
    t17 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t17 & 16777215U);
    t11 = ((char*)((ng5)));
    t18 = (t0 + 600U);
    t19 = *((char **)t18);
    memset(t21, 0, 8);
    t18 = (t21 + 4);
    t22 = (t19 + 4);
    t23 = *((unsigned int *)t19);
    t24 = (t23 >> 23);
    t25 = (t24 & 1);
    *((unsigned int *)t21) = t25;
    t26 = *((unsigned int *)t22);
    t27 = (t26 >> 23);
    t28 = (t27 & 1);
    *((unsigned int *)t18) = t28;
    xsi_vlog_mul_concat(t20, 6, 1, t11, 1U, t21, 1);
    xsi_vlogtype_concat(t7, 32, 32, 3U, t20, 6, t8, 24, t3, 2);
    t29 = (t0 + 920);
    xsi_vlogvar_assign_value(t29, t7, 0, 0, 32);
    goto LAB15;

}


extern void work_m_00000000004273511423_1966365028_init()
{
	static char *pe[] = {(void *)Always_27_0};
	xsi_register_didat("work_m_00000000004273511423_1966365028", "isim/topLevelModule_isim_beh.exe.sim/work/m_00000000004273511423_1966365028.didat");
	xsi_register_executes(pe);
}
