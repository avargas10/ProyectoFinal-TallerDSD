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
static const char *ng0 = "C:/Users/Andres Vargas/Documents/Verilog Projects/microProcessor/microProcessor/decode_alu.v";
static int ng1[] = {0, 0};
static int ng2[] = {2, 0};
static int ng3[] = {1, 0};
static int ng4[] = {4, 0};
static int ng5[] = {12, 0};
static int ng6[] = {3, 0};
static int ng7[] = {10, 0};
static int ng8[] = {13, 0};



static void Initial_30_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(30, ng0);

LAB2:    xsi_set_current_line(31, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1104);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 2);
    xsi_set_current_line(32, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1196);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 2);
    xsi_set_current_line(33, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1012);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);

LAB1:    return;
}

static void Always_35_1(char *t0)
{
    char t16[8];
    char t34[8];
    char t45[8];
    char t72[8];
    char t105[8];
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
    int t13;
    char *t14;
    char *t15;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t35;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    char *t44;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    char *t49;
    char *t50;
    char *t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;
    char *t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    char *t76;
    char *t77;
    char *t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    char *t86;
    char *t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    int t96;
    int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    char *t104;
    char *t106;
    char *t107;
    char *t108;
    char *t109;
    char *t110;
    unsigned int t111;
    int t112;

LAB0:    t1 = (t0 + 1864U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 2060);
    *((int *)t2) = 1;
    t3 = (t0 + 1892);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(36, ng0);

LAB5:    xsi_set_current_line(37, ng0);
    t4 = (t0 + 784U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(82, ng0);

LAB57:    xsi_set_current_line(83, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1104);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(84, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1196);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);

LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(38, ng0);

LAB9:    xsi_set_current_line(39, ng0);
    t11 = (t0 + 692U);
    t12 = *((char **)t11);

LAB10:    t11 = ((char*)((ng1)));
    t13 = xsi_vlog_unsigned_case_compare(t12, 4, t11, 32);
    if (t13 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng2)));
    t13 = xsi_vlog_unsigned_case_compare(t12, 4, t2, 32);
    if (t13 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng4)));
    t13 = xsi_vlog_unsigned_case_compare(t12, 4, t2, 32);
    if (t13 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng5)));
    t13 = xsi_vlog_unsigned_case_compare(t12, 4, t2, 32);
    if (t13 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng7)));
    t13 = xsi_vlog_unsigned_case_compare(t12, 4, t2, 32);
    if (t13 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng8)));
    t13 = xsi_vlog_unsigned_case_compare(t12, 4, t2, 32);
    if (t13 == 1)
        goto LAB21;

LAB22:
LAB23:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 692U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng7)));
    memset(t16, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t6 = *((unsigned int *)t3);
    t7 = *((unsigned int *)t2);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
    t17 = (t9 ^ t10);
    t18 = (t8 | t17);
    t19 = *((unsigned int *)t4);
    t20 = *((unsigned int *)t5);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB33;

LAB30:    if (t21 != 0)
        goto LAB32;

LAB31:    *((unsigned int *)t16) = 1;

LAB33:    t14 = (t16 + 4);
    t24 = *((unsigned int *)t14);
    t25 = (~(t24));
    t26 = *((unsigned int *)t16);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB34;

LAB35:    xsi_set_current_line(76, ng0);

LAB38:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 600U);
    t3 = *((char **)t2);
    t2 = (t0 + 1104);
    t4 = (t2 + 36U);
    t5 = *((char **)t4);
    t11 = ((char*)((ng1)));
    memset(t16, 0, 8);
    t14 = (t5 + 4);
    t15 = (t11 + 4);
    t6 = *((unsigned int *)t5);
    t7 = *((unsigned int *)t11);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t14);
    t10 = *((unsigned int *)t15);
    t17 = (t9 ^ t10);
    t18 = (t8 | t17);
    t19 = *((unsigned int *)t14);
    t20 = *((unsigned int *)t15);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB42;

LAB39:    if (t21 != 0)
        goto LAB41;

LAB40:    *((unsigned int *)t16) = 1;

LAB42:    t30 = (t0 + 1104);
    t31 = (t30 + 36U);
    t32 = *((char **)t31);
    t33 = ((char*)((ng3)));
    memset(t34, 0, 8);
    t35 = (t32 + 4);
    t36 = (t33 + 4);
    t24 = *((unsigned int *)t32);
    t25 = *((unsigned int *)t33);
    t26 = (t24 ^ t25);
    t27 = *((unsigned int *)t35);
    t28 = *((unsigned int *)t36);
    t37 = (t27 ^ t28);
    t38 = (t26 | t37);
    t39 = *((unsigned int *)t35);
    t40 = *((unsigned int *)t36);
    t41 = (t39 | t40);
    t42 = (~(t41));
    t43 = (t38 & t42);
    if (t43 != 0)
        goto LAB46;

LAB43:    if (t41 != 0)
        goto LAB45;

LAB44:    *((unsigned int *)t34) = 1;

LAB46:    t46 = *((unsigned int *)t16);
    t47 = *((unsigned int *)t34);
    t48 = (t46 | t47);
    *((unsigned int *)t45) = t48;
    t49 = (t16 + 4);
    t50 = (t34 + 4);
    t51 = (t45 + 4);
    t52 = *((unsigned int *)t49);
    t53 = *((unsigned int *)t50);
    t54 = (t52 | t53);
    *((unsigned int *)t51) = t54;
    t55 = *((unsigned int *)t51);
    t56 = (t55 != 0);
    if (t56 == 1)
        goto LAB47;

LAB48:
LAB49:    t73 = *((unsigned int *)t3);
    t74 = *((unsigned int *)t45);
    t75 = (t73 & t74);
    *((unsigned int *)t72) = t75;
    t76 = (t3 + 4);
    t77 = (t45 + 4);
    t78 = (t72 + 4);
    t79 = *((unsigned int *)t76);
    t80 = *((unsigned int *)t77);
    t81 = (t79 | t80);
    *((unsigned int *)t78) = t81;
    t82 = *((unsigned int *)t78);
    t83 = (t82 != 0);
    if (t83 == 1)
        goto LAB50;

LAB51:
LAB52:    t104 = (t0 + 1196);
    t106 = (t0 + 1196);
    t107 = (t106 + 44U);
    t108 = *((char **)t107);
    t109 = ((char*)((ng1)));
    xsi_vlog_generic_convert_bit_index(t105, t108, 2, t109, 32, 1);
    t110 = (t105 + 4);
    t111 = *((unsigned int *)t110);
    t112 = (!(t111));
    if (t112 == 1)
        goto LAB53;

LAB54:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 600U);
    t3 = *((char **)t2);
    t2 = (t0 + 1196);
    t4 = (t0 + 1196);
    t5 = (t4 + 44U);
    t11 = *((char **)t5);
    t14 = ((char*)((ng3)));
    xsi_vlog_generic_convert_bit_index(t16, t11, 2, t14, 32, 1);
    t15 = (t16 + 4);
    t6 = *((unsigned int *)t15);
    t13 = (!(t6));
    if (t13 == 1)
        goto LAB55;

LAB56:
LAB36:    goto LAB8;

LAB11:    xsi_set_current_line(41, ng0);

LAB24:    xsi_set_current_line(42, ng0);
    t14 = ((char*)((ng2)));
    t15 = (t0 + 1104);
    xsi_vlogvar_assign_value(t15, t14, 0, 0, 2);
    xsi_set_current_line(43, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1012);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB23;

LAB13:    xsi_set_current_line(46, ng0);

LAB25:    xsi_set_current_line(47, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 1104);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 2);
    xsi_set_current_line(48, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1012);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB23;

LAB15:    xsi_set_current_line(51, ng0);

LAB26:    xsi_set_current_line(52, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 1104);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 2);
    xsi_set_current_line(53, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1012);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB23;

LAB17:    xsi_set_current_line(56, ng0);

LAB27:    xsi_set_current_line(57, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 1104);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 2);
    xsi_set_current_line(58, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1012);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB23;

LAB19:    xsi_set_current_line(61, ng0);

LAB28:    xsi_set_current_line(62, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 1104);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 2);
    xsi_set_current_line(63, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1012);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB23;

LAB21:    xsi_set_current_line(66, ng0);

LAB29:    xsi_set_current_line(67, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 1104);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 2);
    xsi_set_current_line(68, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1012);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB23;

LAB32:    t11 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB33;

LAB34:    xsi_set_current_line(72, ng0);

LAB37:    xsi_set_current_line(73, ng0);
    t15 = ((char*)((ng6)));
    t29 = (t0 + 1196);
    xsi_vlogvar_assign_value(t29, t15, 0, 0, 2);
    goto LAB36;

LAB41:    t29 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB42;

LAB45:    t44 = (t34 + 4);
    *((unsigned int *)t34) = 1;
    *((unsigned int *)t44) = 1;
    goto LAB46;

LAB47:    t57 = *((unsigned int *)t45);
    t58 = *((unsigned int *)t51);
    *((unsigned int *)t45) = (t57 | t58);
    t59 = (t16 + 4);
    t60 = (t34 + 4);
    t61 = *((unsigned int *)t59);
    t62 = (~(t61));
    t63 = *((unsigned int *)t16);
    t13 = (t63 & t62);
    t64 = *((unsigned int *)t60);
    t65 = (~(t64));
    t66 = *((unsigned int *)t34);
    t67 = (t66 & t65);
    t68 = (~(t13));
    t69 = (~(t67));
    t70 = *((unsigned int *)t51);
    *((unsigned int *)t51) = (t70 & t68);
    t71 = *((unsigned int *)t51);
    *((unsigned int *)t51) = (t71 & t69);
    goto LAB49;

LAB50:    t84 = *((unsigned int *)t72);
    t85 = *((unsigned int *)t78);
    *((unsigned int *)t72) = (t84 | t85);
    t86 = (t3 + 4);
    t87 = (t45 + 4);
    t88 = *((unsigned int *)t3);
    t89 = (~(t88));
    t90 = *((unsigned int *)t86);
    t91 = (~(t90));
    t92 = *((unsigned int *)t45);
    t93 = (~(t92));
    t94 = *((unsigned int *)t87);
    t95 = (~(t94));
    t96 = (t89 & t91);
    t97 = (t93 & t95);
    t98 = (~(t96));
    t99 = (~(t97));
    t100 = *((unsigned int *)t78);
    *((unsigned int *)t78) = (t100 & t98);
    t101 = *((unsigned int *)t78);
    *((unsigned int *)t78) = (t101 & t99);
    t102 = *((unsigned int *)t72);
    *((unsigned int *)t72) = (t102 & t98);
    t103 = *((unsigned int *)t72);
    *((unsigned int *)t72) = (t103 & t99);
    goto LAB52;

LAB53:    xsi_vlogvar_assign_value(t104, t72, 0, *((unsigned int *)t105), 1);
    goto LAB54;

LAB55:    xsi_vlogvar_assign_value(t2, t3, 0, *((unsigned int *)t16), 1);
    goto LAB56;

}


extern void work_m_00000000000528924906_0195805686_init()
{
	static char *pe[] = {(void *)Initial_30_0,(void *)Always_35_1};
	xsi_register_didat("work_m_00000000000528924906_0195805686", "isim/arm_test_isim_beh.exe.sim/work/m_00000000000528924906_0195805686.didat");
	xsi_register_executes(pe);
}
