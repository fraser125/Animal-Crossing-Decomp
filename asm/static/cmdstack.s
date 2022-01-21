.include "macros.inc"

.section .text

.org 0x80032700

.global Get_Portcmd__FP10JPorthead_
Get_Portcmd__FP10JPorthead_:
/* 80032700 0002F660  80 83 00 00 */	lwz r4, 0(r3)
/* 80032704 0002F664  28 04 00 00 */	cmplwi r4, 0
/* 80032708 0002F668  41 82 00 2C */	beq lbl_80032734
/* 8003270C 0002F66C  80 04 00 10 */	lwz r0, 0x10(r4)
/* 80032710 0002F670  90 03 00 00 */	stw r0, 0(r3)
/* 80032714 0002F674  80 03 00 00 */	lwz r0, 0(r3)
/* 80032718 0002F678  28 00 00 00 */	cmplwi r0, 0
/* 8003271C 0002F67C  40 82 00 0C */	bne lbl_80032728
/* 80032720 0002F680  38 00 00 00 */	li r0, 0
/* 80032724 0002F684  90 03 00 04 */	stw r0, 4(r3)
lbl_80032728:
/* 80032728 0002F688  38 00 00 00 */	li r0, 0
/* 8003272C 0002F68C  90 04 00 0C */	stw r0, 0xc(r4)
/* 80032730 0002F690  48 00 00 08 */	b lbl_80032738
lbl_80032734:
/* 80032734 0002F694  38 80 00 00 */	li r4, 0
lbl_80032738:
/* 80032738 0002F698  7C 83 23 78 */	mr r3, r4
/* 8003273C 0002F69C  4E 80 00 20 */	blr 

.global Jac_Portcmd_Proc_Once
Jac_Portcmd_Proc_Once:
/* 80032740 0002F6A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80032744 0002F6A4  7C 08 02 A6 */	mflr r0
/* 80032748 0002F6A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003274C 0002F6AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80032750 0002F6B0  7C 7F 1B 78 */	mr r31, r3
/* 80032754 0002F6B4  60 00 00 00 */	nop 
lbl_80032758:
/* 80032758 0002F6B8  7F E3 FB 78 */	mr r3, r31
/* 8003275C 0002F6BC  4B FF FF A5 */	bl Get_Portcmd__FP10JPorthead_
/* 80032760 0002F6C0  28 03 00 00 */	cmplwi r3, 0
/* 80032764 0002F6C4  41 82 00 18 */	beq lbl_8003277C
/* 80032768 0002F6C8  81 83 00 14 */	lwz r12, 0x14(r3)
/* 8003276C 0002F6CC  80 63 00 18 */	lwz r3, 0x18(r3)
/* 80032770 0002F6D0  7D 89 03 A6 */	mtctr r12
/* 80032774 0002F6D4  4E 80 04 21 */	bctrl 
/* 80032778 0002F6D8  4B FF FF E0 */	b lbl_80032758
lbl_8003277C:
/* 8003277C 0002F6DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80032780 0002F6E0  38 60 00 00 */	li r3, 0
/* 80032784 0002F6E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80032788 0002F6E8  7C 08 03 A6 */	mtlr r0
/* 8003278C 0002F6EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80032790 0002F6F0  4E 80 00 20 */	blr 
/* 80032794 0002F6F4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80032798 0002F6F8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8003279C 0002F6FC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global Jac_Portcmd_Proc_Stay
Jac_Portcmd_Proc_Stay:
/* 800327A0 0002F700  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800327A4 0002F704  7C 08 02 A6 */	mflr r0
/* 800327A8 0002F708  90 01 00 14 */	stw r0, 0x14(r1)
/* 800327AC 0002F70C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800327B0 0002F710  83 E3 00 00 */	lwz r31, 0(r3)
/* 800327B4 0002F714  60 00 00 00 */	nop 
lbl_800327B8:
/* 800327B8 0002F718  28 1F 00 00 */	cmplwi r31, 0
/* 800327BC 0002F71C  41 82 00 1C */	beq lbl_800327D8
/* 800327C0 0002F720  81 9F 00 14 */	lwz r12, 0x14(r31)
/* 800327C4 0002F724  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 800327C8 0002F728  7D 89 03 A6 */	mtctr r12
/* 800327CC 0002F72C  4E 80 04 21 */	bctrl 
/* 800327D0 0002F730  83 FF 00 10 */	lwz r31, 0x10(r31)
/* 800327D4 0002F734  4B FF FF E4 */	b lbl_800327B8
lbl_800327D8:
/* 800327D8 0002F738  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800327DC 0002F73C  38 60 00 00 */	li r3, 0
/* 800327E0 0002F740  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800327E4 0002F744  7C 08 03 A6 */	mtlr r0
/* 800327E8 0002F748  38 21 00 10 */	addi r1, r1, 0x10
/* 800327EC 0002F74C  4E 80 00 20 */	blr 
/* 800327F0 0002F750  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800327F4 0002F754  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800327F8 0002F758  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800327FC 0002F75C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global Portcmd_Main__FPv
Portcmd_Main__FPv:
/* 80032800 0002F760  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80032804 0002F764  7C 08 02 A6 */	mflr r0
/* 80032808 0002F768  38 6D 89 F8 */	addi r3, r13, cmd_once-_SDA_BASE_
/* 8003280C 0002F76C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80032810 0002F770  4B FF FF 31 */	bl Jac_Portcmd_Proc_Once
/* 80032814 0002F774  38 6D 8A 00 */	addi r3, r13, cmd_stay-_SDA_BASE_
/* 80032818 0002F778  4B FF FF 89 */	bl Jac_Portcmd_Proc_Stay
/* 8003281C 0002F77C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80032820 0002F780  38 60 00 00 */	li r3, 0
/* 80032824 0002F784  7C 08 03 A6 */	mtlr r0
/* 80032828 0002F788  38 21 00 10 */	addi r1, r1, 0x10
/* 8003282C 0002F78C  4E 80 00 20 */	blr 
/* 80032830 0002F790  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80032834 0002F794  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80032838 0002F798  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8003283C 0002F79C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global Jac_Porthead_Init
Jac_Porthead_Init:
/* 80032840 0002F7A0  38 00 00 00 */	li r0, 0
/* 80032844 0002F7A4  90 03 00 00 */	stw r0, 0(r3)
/* 80032848 0002F7A8  90 03 00 04 */	stw r0, 4(r3)
/* 8003284C 0002F7AC  4E 80 00 20 */	blr 
/* 80032850 0002F7B0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80032854 0002F7B4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80032858 0002F7B8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8003285C 0002F7BC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global Jac_Portcmd_Init
Jac_Portcmd_Init:
/* 80032860 0002F7C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80032864 0002F7C4  7C 08 02 A6 */	mflr r0
/* 80032868 0002F7C8  38 6D 89 F8 */	addi r3, r13, cmd_once-_SDA_BASE_
/* 8003286C 0002F7CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80032870 0002F7D0  4B FF FF D1 */	bl Jac_Porthead_Init
/* 80032874 0002F7D4  38 6D 8A 00 */	addi r3, r13, cmd_stay-_SDA_BASE_
/* 80032878 0002F7D8  4B FF FF C9 */	bl Jac_Porthead_Init
/* 8003287C 0002F7DC  3C 60 80 03 */	lis r3, Portcmd_Main__FPv@ha
/* 80032880 0002F7E0  38 80 00 00 */	li r4, 0
/* 80032884 0002F7E4  38 63 28 00 */	addi r3, r3, Portcmd_Main__FPv@l
/* 80032888 0002F7E8  4B FE 76 39 */	bl Jac_RegisterPlayerCallback
/* 8003288C 0002F7EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80032890 0002F7F0  7C 08 03 A6 */	mtlr r0
/* 80032894 0002F7F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80032898 0002F7F8  4E 80 00 20 */	blr 
/* 8003289C 0002F7FC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
