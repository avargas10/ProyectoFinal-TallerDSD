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
static const char *ng0 = "C:/Users/Andres Vargas/Documents/Verilog Projects/microProcessor/microProcessor/ALU.v";
static int ng1[] = {0, 0};
static int ng2[] = {0, 0, 0, 0};
static unsigned int ng3[] = {0U, 0U};
static unsigned int ng4[] = {1U, 0U};
static unsigned int ng5[] = {2U, 0U};
static unsigned int ng6[] = {3U, 0U};
static int ng7[] = {1, 0};



static void Initial_34_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(34, ng0);

LAB2:    xsi_set_current_line(35, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1012);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);
    xsi_set_current_line(36, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 1472);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 33);
    xsi_set_current_line(37, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1104);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);
    xsi_set_current_line(38, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1196);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);
    xsi_set_current_line(39, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1288);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);
    xsi_set_current_line(40, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1380);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);
    xsi_set_current_line(41, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1656);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);
    xsi_set_current_line(42, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1564);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);

LAB1:    return;
}

static void Always_46_1(char *t0)
{
    char t10[16];
    char t70[8];
    char t71[8];
    char t72[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    unsigned int t20;
    char *t21;
    unsigned int t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    unsigned int t33;
    char *t34;
    char *t35;
    unsigned int t36;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    int t46;
    int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    char *t56;
    unsigned int t57;
    char *t58;
    unsigned int t59;
    unsigned int t60;
    char *t61;
    unsigned int t62;
    unsigned int t63;
    char *t64;
    char *t65;
    char *t66;
    unsigned int t67;
    unsigned int t68;
    char *t69;

LAB0:    t1 = (t0 + 2324U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 2520);
    *((int *)t2) = 1;
    t3 = (t0 + 2352);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(47, ng0);

LAB5:    xsi_set_current_line(48, ng0);
    t4 = (t0 + 784U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t4, 2);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t6 == 1)
        goto LAB13;

LAB14:
LAB16:
LAB15:    xsi_set_current_line(53, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1472);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 33);

LAB17:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1472);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    memset(t70, 0, 8);
    t7 = (t70 + 4);
    t8 = (t4 + 4);
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 31);
    t13 = (t12 & 1);
    *((unsigned int *)t70) = t13;
    t14 = *((unsigned int *)t8);
    t15 = (t14 >> 31);
    t16 = (t15 & 1);
    *((unsigned int *)t7) = t16;
    t9 = (t0 + 1196);
    xsi_vlogvar_assign_value(t9, t70, 0, 0, 1);
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1472);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    memset(t70, 0, 8);
    t7 = (t70 + 4);
    t8 = (t4 + 8);
    t9 = (t4 + 12);
    t11 = *((unsigned int *)t8);
    t12 = (t11 >> 0);
    t13 = (t12 & 1);
    *((unsigned int *)t70) = t13;
    t14 = *((unsigned int *)t9);
    t15 = (t14 >> 0);
    t16 = (t15 & 1);
    *((unsigned int *)t7) = t16;
    t19 = (t0 + 1288);
    xsi_vlogvar_assign_value(t19, t70, 0, 0, 1);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1472);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    memset(t70, 0, 8);
    t7 = (t70 + 4);
    t8 = (t4 + 4);
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 0);
    *((unsigned int *)t70) = t12;
    t13 = *((unsigned int *)t8);
    t14 = (t13 >> 0);
    *((unsigned int *)t7) = t14;
    t15 = *((unsigned int *)t70);
    *((unsigned int *)t70) = (t15 & 4294967295U);
    t16 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t16 & 4294967295U);
    t9 = (t0 + 1012);
    xsi_vlogvar_assign_value(t9, t70, 0, 0, 32);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 600U);
    t3 = *((char **)t2);
    memset(t70, 0, 8);
    t2 = (t70 + 4);
    t4 = (t3 + 4);
    t11 = *((unsigned int *)t3);
    t12 = (t11 >> 31);
    t13 = (t12 & 1);
    *((unsigned int *)t70) = t13;
    t14 = *((unsigned int *)t4);
    t15 = (t14 >> 31);
    t16 = (t15 & 1);
    *((unsigned int *)t2) = t16;
    t7 = (t0 + 692U);
    t8 = *((char **)t7);
    memset(t71, 0, 8);
    t7 = (t71 + 4);
    t9 = (t8 + 4);
    t17 = *((unsigned int *)t8);
    t18 = (t17 >> 31);
    t20 = (t18 & 1);
    *((unsigned int *)t71) = t20;
    t22 = *((unsigned int *)t9);
    t24 = (t22 >> 31);
    t25 = (t24 & 1);
    *((unsigned int *)t7) = t25;
    t26 = *((unsigned int *)t70);
    t27 = *((unsigned int *)t71);
    t28 = (t26 & t27);
    *((unsigned int *)t72) = t28;
    t19 = (t70 + 4);
    t21 = (t71 + 4);
    t23 = (t72 + 4);
    t29 = *((unsigned int *)t19);
    t30 = *((unsigned int *)t21);
    t31 = (t29 | t30);
    *((unsigned int *)t23) = t31;
    t33 = *((unsigned int *)t23);
    t36 = (t33 != 0);
    if (t36 == 1)
        goto LAB44;

LAB45:
LAB46:    t35 = (t0 + 1564);
    xsi_vlogvar_assign_value(t35, t72, 0, 0, 1);
    xsi_set_current_line(59, ng0);
    t2 = (t0 + 692U);
    t3 = *((char **)t2);
    memset(t70, 0, 8);
    t2 = (t70 + 4);
    t4 = (t3 + 4);
    t11 = *((unsigned int *)t3);
    t12 = (t11 >> 31);
    t13 = (t12 & 1);
    *((unsigned int *)t70) = t13;
    t14 = *((unsigned int *)t4);
    t15 = (t14 >> 31);
    t16 = (t15 & 1);
    *((unsigned int *)t2) = t16;
    t7 = (t0 + 1012);
    t8 = (t7 + 36U);
    t9 = *((char **)t8);
    memset(t71, 0, 8);
    t19 = (t71 + 4);
    t21 = (t9 + 4);
    t17 = *((unsigned int *)t9);
    t18 = (t17 >> 31);
    t20 = (t18 & 1);
    *((unsigned int *)t71) = t20;
    t22 = *((unsigned int *)t21);
    t24 = (t22 >> 31);
    t25 = (t24 & 1);
    *((unsigned int *)t19) = t25;
    t26 = *((unsigned int *)t70);
    t27 = *((unsigned int *)t71);
    t28 = (t26 & t27);
    *((unsigned int *)t72) = t28;
    t23 = (t70 + 4);
    t32 = (t71 + 4);
    t34 = (t72 + 4);
    t29 = *((unsigned int *)t23);
    t30 = *((unsigned int *)t32);
    t31 = (t29 | t30);
    *((unsigned int *)t34) = t31;
    t33 = *((unsigned int *)t34);
    t36 = (t33 != 0);
    if (t36 == 1)
        goto LAB47;

LAB48:
LAB49:    t56 = (t0 + 1656);
    xsi_vlogvar_assign_value(t56, t72, 0, 0, 1);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 1564);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t7 = (t4 + 4);
    t11 = *((unsigned int *)t7);
    t12 = (~(t11));
    t13 = *((unsigned int *)t4);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB50;

LAB51:    xsi_set_current_line(63, ng0);

LAB53:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 1656);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    memset(t70, 0, 8);
    t7 = (t4 + 4);
    t11 = *((unsigned int *)t7);
    t12 = (~(t11));
    t13 = *((unsigned int *)t4);
    t14 = (t13 & t12);
    t15 = (t14 & 1U);
    if (t15 != 0)
        goto LAB57;

LAB55:    if (*((unsigned int *)t7) == 0)
        goto LAB54;

LAB56:    t8 = (t70 + 4);
    *((unsigned int *)t70) = 1;
    *((unsigned int *)t8) = 1;

LAB57:    t9 = (t70 + 4);
    t16 = *((unsigned int *)t9);
    t17 = (~(t16));
    t18 = *((unsigned int *)t70);
    t20 = (t18 & t17);
    t22 = (t20 != 0);
    if (t22 > 0)
        goto LAB58;

LAB59:    xsi_set_current_line(67, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 1380);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);

LAB60:
LAB52:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 1012);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t7 = ((char*)((ng1)));
    memset(t70, 0, 8);
    t8 = (t4 + 4);
    t9 = (t7 + 4);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t7);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t8);
    t15 = *((unsigned int *)t9);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t8);
    t20 = *((unsigned int *)t9);
    t22 = (t18 | t20);
    t24 = (~(t22));
    t25 = (t17 & t24);
    if (t25 != 0)
        goto LAB64;

LAB61:    if (t22 != 0)
        goto LAB63;

LAB62:    *((unsigned int *)t70) = 1;

LAB64:    t21 = (t70 + 4);
    t26 = *((unsigned int *)t21);
    t27 = (~(t26));
    t28 = *((unsigned int *)t70);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB65;

LAB66:    xsi_set_current_line(72, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1104);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);

LAB67:    goto LAB2;

LAB7:    xsi_set_current_line(49, ng0);
    t7 = (t0 + 600U);
    t8 = *((char **)t7);
    t7 = (t0 + 692U);
    t9 = *((char **)t7);
    xsi_vlog_unsigned_add(t10, 33, t8, 32, t9, 32);
    t7 = (t0 + 1472);
    xsi_vlogvar_assign_value(t7, t10, 0, 0, 33);
    goto LAB17;

LAB9:    xsi_set_current_line(50, ng0);
    t3 = (t0 + 600U);
    t4 = *((char **)t3);
    t3 = (t0 + 692U);
    t7 = *((char **)t3);
    xsi_vlog_unsigned_minus(t10, 33, t4, 32, t7, 32);
    t3 = (t0 + 1472);
    xsi_vlogvar_assign_value(t3, t10, 0, 0, 33);
    goto LAB17;

LAB11:    xsi_set_current_line(51, ng0);
    t3 = (t0 + 600U);
    t4 = *((char **)t3);
    t3 = (t0 + 692U);
    t7 = *((char **)t3);
    t11 = 0;

LAB21:    t12 = (t11 < 1);
    if (t12 == 1)
        goto LAB22;

LAB23:    t11 = 1;

LAB24:    t54 = (t11 < 2);
    if (t54 == 1)
        goto LAB25;

LAB30:    t65 = (t0 + 1472);
    xsi_vlogvar_assign_value(t65, t10, 0, 0, 33);
    goto LAB17;

LAB13:    xsi_set_current_line(52, ng0);
    t3 = (t0 + 600U);
    t4 = *((char **)t3);
    t3 = (t0 + 692U);
    t7 = *((char **)t3);
    t11 = 0;

LAB34:    t12 = (t11 < 1);
    if (t12 == 1)
        goto LAB35;

LAB36:    t11 = 1;

LAB37:    t50 = (t11 < 2);
    if (t50 == 1)
        goto LAB38;

LAB43:    t69 = (t0 + 1472);
    xsi_vlogvar_assign_value(t69, t10, 0, 0, 33);
    goto LAB17;

LAB18:    t29 = (t11 * 8);
    t30 = *((unsigned int *)t9);
    t31 = *((unsigned int *)t23);
    *((unsigned int *)t9) = (t30 | t31);
    t32 = (t4 + t29);
    t33 = (t29 + 4);
    t34 = (t4 + t33);
    t35 = (t7 + t29);
    t36 = (t29 + 4);
    t37 = (t7 + t36);
    t38 = *((unsigned int *)t32);
    t39 = (~(t38));
    t40 = *((unsigned int *)t34);
    t41 = (~(t40));
    t42 = *((unsigned int *)t35);
    t43 = (~(t42));
    t44 = *((unsigned int *)t37);
    t45 = (~(t44));
    t46 = (t39 & t41);
    t47 = (t43 & t45);
    t48 = (~(t46));
    t49 = (~(t47));
    t50 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t50 & t48);
    t51 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t51 & t49);
    t52 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t52 & t48);
    t53 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t53 & t49);

LAB20:    t11 = (t11 + 1);
    goto LAB21;

LAB19:    goto LAB20;

LAB22:    t13 = (t11 * 8);
    t3 = (t4 + t13);
    t8 = (t7 + t13);
    t9 = (t10 + t13);
    t14 = *((unsigned int *)t3);
    t15 = *((unsigned int *)t8);
    t16 = (t14 & t15);
    *((unsigned int *)t9) = t16;
    t17 = (t11 * 8);
    t18 = (t17 + 4);
    t19 = (t4 + t18);
    t20 = (t17 + 4);
    t21 = (t7 + t20);
    t22 = (t17 + 4);
    t23 = (t10 + t22);
    t24 = *((unsigned int *)t19);
    t25 = *((unsigned int *)t21);
    t26 = (t24 | t25);
    *((unsigned int *)t23) = t26;
    t27 = *((unsigned int *)t23);
    t28 = (t27 != 0);
    if (t28 == 1)
        goto LAB18;
    else
        goto LAB19;

LAB25:    t55 = (t11 * 8);
    t56 = (t10 + t55);
    *((unsigned int *)t56) = 0;
    t57 = (t55 + 4);
    t58 = (t10 + t57);
    *((unsigned int *)t58) = 0;
    t59 = (t11 < 1);
    if (t59 == 1)
        goto LAB26;

LAB28:    t62 = (t11 < 1);
    if (t62 == 1)
        goto LAB27;

LAB29:    t11 = (t11 + 1);
    goto LAB24;

LAB26:    t60 = (t55 + 4);
    t61 = (t4 + t60);
    *((unsigned int *)t56) = *((unsigned int *)t61);
    *((unsigned int *)t58) = *((unsigned int *)t61);
    goto LAB29;

LAB27:    t63 = (t55 + 4);
    t64 = (t7 + t63);
    *((unsigned int *)t56) = *((unsigned int *)t64);
    *((unsigned int *)t58) = *((unsigned int *)t64);
    goto LAB29;

LAB31:    t29 = (t11 * 8);
    t30 = *((unsigned int *)t9);
    t31 = *((unsigned int *)t23);
    *((unsigned int *)t9) = (t30 | t31);
    t32 = (t4 + t29);
    t33 = (t29 + 4);
    t34 = (t4 + t33);
    t35 = (t7 + t29);
    t36 = (t29 + 4);
    t37 = (t7 + t36);
    t38 = *((unsigned int *)t34);
    t39 = (~(t38));
    t40 = *((unsigned int *)t32);
    t46 = (t40 & t39);
    t41 = *((unsigned int *)t37);
    t42 = (~(t41));
    t43 = *((unsigned int *)t35);
    t47 = (t43 & t42);
    t44 = (~(t46));
    t45 = (~(t47));
    t48 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t48 & t44);
    t49 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t49 & t45);

LAB33:    t11 = (t11 + 1);
    goto LAB34;

LAB32:    goto LAB33;

LAB35:    t13 = (t11 * 8);
    t3 = (t4 + t13);
    t8 = (t7 + t13);
    t9 = (t10 + t13);
    t14 = *((unsigned int *)t3);
    t15 = *((unsigned int *)t8);
    t16 = (t14 | t15);
    *((unsigned int *)t9) = t16;
    t17 = (t11 * 8);
    t18 = (t17 + 4);
    t19 = (t4 + t18);
    t20 = (t17 + 4);
    t21 = (t7 + t20);
    t22 = (t17 + 4);
    t23 = (t10 + t22);
    t24 = *((unsigned int *)t19);
    t25 = *((unsigned int *)t21);
    t26 = (t24 | t25);
    *((unsigned int *)t23) = t26;
    t27 = *((unsigned int *)t23);
    t28 = (t27 != 0);
    if (t28 == 1)
        goto LAB31;
    else
        goto LAB32;

LAB38:    t51 = (t11 * 8);
    t56 = (t10 + t51);
    *((unsigned int *)t56) = 0;
    t52 = (t51 + 4);
    t58 = (t10 + t52);
    *((unsigned int *)t58) = 0;
    t53 = (t11 < 1);
    if (t53 == 1)
        goto LAB39;

LAB41:    t60 = (t11 < 1);
    if (t60 == 1)
        goto LAB40;

LAB42:    t11 = (t11 + 1);
    goto LAB37;

LAB39:    t61 = (t4 + t51);
    t54 = (t51 + 4);
    t64 = (t4 + t54);
    t55 = *((unsigned int *)t61);
    t57 = *((unsigned int *)t64);
    t59 = (t55 | t57);
    *((unsigned int *)t56) = t59;
    *((unsigned int *)t58) = *((unsigned int *)t64);
    goto LAB42;

LAB40:    t65 = (t7 + t51);
    t62 = (t51 + 4);
    t66 = (t7 + t62);
    t63 = *((unsigned int *)t65);
    t67 = *((unsigned int *)t66);
    t68 = (t63 | t67);
    *((unsigned int *)t56) = t68;
    *((unsigned int *)t58) = *((unsigned int *)t66);
    goto LAB42;

LAB44:    t38 = *((unsigned int *)t72);
    t39 = *((unsigned int *)t23);
    *((unsigned int *)t72) = (t38 | t39);
    t32 = (t70 + 4);
    t34 = (t71 + 4);
    t40 = *((unsigned int *)t70);
    t41 = (~(t40));
    t42 = *((unsigned int *)t32);
    t43 = (~(t42));
    t44 = *((unsigned int *)t71);
    t45 = (~(t44));
    t48 = *((unsigned int *)t34);
    t49 = (~(t48));
    t6 = (t41 & t43);
    t46 = (t45 & t49);
    t50 = (~(t6));
    t51 = (~(t46));
    t52 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t52 & t50);
    t53 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t53 & t51);
    t54 = *((unsigned int *)t72);
    *((unsigned int *)t72) = (t54 & t50);
    t55 = *((unsigned int *)t72);
    *((unsigned int *)t72) = (t55 & t51);
    goto LAB46;

LAB47:    t38 = *((unsigned int *)t72);
    t39 = *((unsigned int *)t34);
    *((unsigned int *)t72) = (t38 | t39);
    t35 = (t70 + 4);
    t37 = (t71 + 4);
    t40 = *((unsigned int *)t70);
    t41 = (~(t40));
    t42 = *((unsigned int *)t35);
    t43 = (~(t42));
    t44 = *((unsigned int *)t71);
    t45 = (~(t44));
    t48 = *((unsigned int *)t37);
    t49 = (~(t48));
    t6 = (t41 & t43);
    t46 = (t45 & t49);
    t50 = (~(t6));
    t51 = (~(t46));
    t52 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t52 & t50);
    t53 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t53 & t51);
    t54 = *((unsigned int *)t72);
    *((unsigned int *)t72) = (t54 & t50);
    t55 = *((unsigned int *)t72);
    *((unsigned int *)t72) = (t55 & t51);
    goto LAB49;

LAB50:    xsi_set_current_line(61, ng0);
    t8 = ((char*)((ng1)));
    t9 = (t0 + 1380);
    xsi_vlogvar_assign_value(t9, t8, 0, 0, 1);
    goto LAB52;

LAB54:    *((unsigned int *)t70) = 1;
    goto LAB57;

LAB58:    xsi_set_current_line(65, ng0);
    t19 = ((char*)((ng1)));
    t21 = (t0 + 1380);
    xsi_vlogvar_assign_value(t21, t19, 0, 0, 1);
    goto LAB60;

LAB63:    t19 = (t70 + 4);
    *((unsigned int *)t70) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB64;

LAB65:    xsi_set_current_line(70, ng0);
    t23 = ((char*)((ng7)));
    t32 = (t0 + 1104);
    xsi_vlogvar_assign_value(t32, t23, 0, 0, 1);
    goto LAB67;

}


extern void work_m_00000000001582039464_0886308060_init()
{
	static char *pe[] = {(void *)Initial_34_0,(void *)Always_46_1};
	xsi_register_didat("work_m_00000000001582039464_0886308060", "isim/arm_test_isim_beh.exe.sim/work/m_00000000001582039464_0886308060.didat");
	xsi_register_executes(pe);
}
