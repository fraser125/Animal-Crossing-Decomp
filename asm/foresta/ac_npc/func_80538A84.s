lbl_80538A84:
/* 80538A84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80538A88  7C 08 02 A6 */	mflr r0
/* 80538A8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80538A90  39 61 00 20 */	addi r11, r1, 0x20
/* 80538A94  4B B6 24 41 */	bl func_8009AED4
/* 80538A98  3C E0 81 14 */	lis r7, common_data@ha /* 0x81138538@ha */
/* 80538A9C  7C 7D 1B 78 */	mr r29, r3
/* 80538AA0  38 67 85 38 */	addi r3, r7, common_data@l /* 0x81138538@l */
/* 80538AA4  7C BE 2B 78 */	mr r30, r5
/* 80538AA8  3C 63 00 02 */	addis r3, r3, 2
/* 80538AAC  7C DF 33 78 */	mr r31, r6
/* 80538AB0  80 63 60 A0 */	lwz r3, 0x60a0(r3)
/* 80538AB4  28 03 00 00 */	cmplwi r3, 0
/* 80538AB8  41 82 00 48 */	beq lbl_80538B00
/* 80538ABC  81 83 00 00 */	lwz r12, 0(r3)
/* 80538AC0  7F A5 EB 78 */	mr r5, r29
/* 80538AC4  7C 86 23 78 */	mr r6, r4
/* 80538AC8  7F C3 07 34 */	extsh r3, r30
/* 80538ACC  38 80 00 04 */	li r4, 4
/* 80538AD0  38 E0 FF FF */	li r7, -1
/* 80538AD4  39 00 00 00 */	li r8, 0
/* 80538AD8  7D 89 03 A6 */	mtctr r12
/* 80538ADC  4E 80 04 21 */	bctrl 
/* 80538AE0  7C 65 1B 79 */	or. r5, r3, r3
/* 80538AE4  41 82 00 1C */	beq lbl_80538B00
/* 80538AE8  B3 DD 09 80 */	sth r30, 0x980(r29)
/* 80538AEC  38 65 00 28 */	addi r3, r5, 0x28
/* 80538AF0  38 9D 00 28 */	addi r4, r29, 0x28
/* 80538AF4  B3 FD 09 82 */	sth r31, 0x982(r29)
/* 80538AF8  90 BD 09 84 */	stw r5, 0x984(r29)
/* 80538AFC  4B E8 23 C1 */	bl xyz_t_move
lbl_80538B00:
/* 80538B00  39 61 00 20 */	addi r11, r1, 0x20
/* 80538B04  4B B6 24 1D */	bl func_8009AF20
/* 80538B08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80538B0C  7C 08 03 A6 */	mtlr r0
/* 80538B10  38 21 00 20 */	addi r1, r1, 0x20
/* 80538B14  4E 80 00 20 */	blr 
