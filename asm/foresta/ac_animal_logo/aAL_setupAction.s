lbl_80410C70:
/* 80410C70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80410C74  7C 08 02 A6 */	mflr r0
/* 80410C78  90 01 00 24 */	stw r0, 0x24(r1)
/* 80410C7C  39 61 00 20 */	addi r11, r1, 0x20
/* 80410C80  4B C8 A2 55 */	bl func_8009AED4
/* 80410C84  7C BE 2B 78 */	mr r30, r5
/* 80410C88  3C A0 80 64 */	lis r5, init_proc@ha /* 0x80643854@ha */
/* 80410C8C  57 DF 10 3A */	slwi r31, r30, 2
/* 80410C90  7C 7D 1B 78 */	mr r29, r3
/* 80410C94  38 A5 38 54 */	addi r5, r5, init_proc@l /* 0x80643854@l */
/* 80410C98  7D 85 F8 2E */	lwzx r12, r5, r31
/* 80410C9C  7D 89 03 A6 */	mtctr r12
/* 80410CA0  4E 80 04 21 */	bctrl 
/* 80410CA4  3C 60 80 66 */	lis r3, process@ha /* 0x8065FA8C@ha */
/* 80410CA8  93 DD 01 74 */	stw r30, 0x174(r29)
/* 80410CAC  38 63 FA 8C */	addi r3, r3, process@l /* 0x8065FA8C@l */
/* 80410CB0  7C 03 F8 2E */	lwzx r0, r3, r31
/* 80410CB4  90 1D 01 78 */	stw r0, 0x178(r29)
/* 80410CB8  39 61 00 20 */	addi r11, r1, 0x20
/* 80410CBC  4B C8 A2 65 */	bl func_8009AF20
/* 80410CC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80410CC4  7C 08 03 A6 */	mtlr r0
/* 80410CC8  38 21 00 20 */	addi r1, r1, 0x20
/* 80410CCC  4E 80 00 20 */	blr 
