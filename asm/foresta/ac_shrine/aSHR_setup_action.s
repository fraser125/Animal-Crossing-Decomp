lbl_805BB0D0:
/* 805BB0D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805BB0D4  7C 08 02 A6 */	mflr r0
/* 805BB0D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805BB0DC  39 61 00 20 */	addi r11, r1, 0x20
/* 805BB0E0  4B AD FD F5 */	bl func_8009AED4
/* 805BB0E4  7C BE 2B 78 */	mr r30, r5
/* 805BB0E8  3C 80 80 6C */	lis r4, init_proc@ha /* 0x806C67F8@ha */
/* 805BB0EC  54 BF 10 3A */	slwi r31, r5, 2
/* 805BB0F0  7C 7D 1B 78 */	mr r29, r3
/* 805BB0F4  38 84 67 F8 */	addi r4, r4, init_proc@l /* 0x806C67F8@l */
/* 805BB0F8  7D 84 F8 2E */	lwzx r12, r4, r31
/* 805BB0FC  28 0C 00 00 */	cmplwi r12, 0
/* 805BB100  41 82 00 0C */	beq lbl_805BB10C
/* 805BB104  7D 89 03 A6 */	mtctr r12
/* 805BB108  4E 80 04 21 */	bctrl 
lbl_805BB10C:
/* 805BB10C  3C 60 80 6C */	lis r3, process@ha /* 0x806C680C@ha */
/* 805BB110  38 63 68 0C */	addi r3, r3, process@l /* 0x806C680C@l */
/* 805BB114  7C 03 F8 2E */	lwzx r0, r3, r31
/* 805BB118  90 1D 02 A0 */	stw r0, 0x2a0(r29)
/* 805BB11C  93 DD 02 B4 */	stw r30, 0x2b4(r29)
/* 805BB120  39 61 00 20 */	addi r11, r1, 0x20
/* 805BB124  4B AD FD FD */	bl func_8009AF20
/* 805BB128  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805BB12C  7C 08 03 A6 */	mtlr r0
/* 805BB130  38 21 00 20 */	addi r1, r1, 0x20
/* 805BB134  4E 80 00 20 */	blr 
