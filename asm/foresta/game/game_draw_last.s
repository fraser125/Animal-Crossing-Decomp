lbl_80404D78:
/* 80404D78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80404D7C  7C 08 02 A6 */	mflr r0
/* 80404D80  90 01 00 24 */	stw r0, 0x24(r1)
/* 80404D84  39 61 00 20 */	addi r11, r1, 0x20
/* 80404D88  4B C9 61 4D */	bl func_8009AED4
/* 80404D8C  7C 7D 1B 78 */	mr r29, r3
/* 80404D90  83 C3 02 D0 */	lwz r30, 0x2d0(r3)
/* 80404D94  7F C3 F3 78 */	mr r3, r30
/* 80404D98  48 00 06 31 */	bl func_804053C8
/* 80404D9C  80 FD 02 C0 */	lwz r7, 0x2c0(r29)
/* 80404DA0  7C 68 1B 78 */	mr r8, r3
/* 80404DA4  3B E8 00 08 */	addi r31, r8, 8
/* 80404DA8  3C C0 DE 00 */	lis r6, 0xde00
/* 80404DAC  38 07 00 08 */	addi r0, r7, 8
/* 80404DB0  3C A0 DF 00 */	lis r5, 0xdf00
/* 80404DB4  90 1D 02 C0 */	stw r0, 0x2c0(r29)
/* 80404DB8  38 00 00 00 */	li r0, 0
/* 80404DBC  7F C3 F3 78 */	mr r3, r30
/* 80404DC0  7F E4 FB 78 */	mr r4, r31
/* 80404DC4  90 C7 00 00 */	stw r6, 0(r7)
/* 80404DC8  91 07 00 04 */	stw r8, 4(r7)
/* 80404DCC  90 A8 00 00 */	stw r5, 0(r8)
/* 80404DD0  90 08 00 04 */	stw r0, 4(r8)
/* 80404DD4  48 00 05 FD */	bl gfxclose
/* 80404DD8  93 FD 02 D0 */	stw r31, 0x2d0(r29)
/* 80404DDC  39 61 00 20 */	addi r11, r1, 0x20
/* 80404DE0  4B C9 61 41 */	bl func_8009AF20
/* 80404DE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80404DE8  7C 08 03 A6 */	mtlr r0
/* 80404DEC  38 21 00 20 */	addi r1, r1, 0x20
/* 80404DF0  4E 80 00 20 */	blr 
