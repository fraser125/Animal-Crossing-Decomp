lbl_80521648:
/* 80521648  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8052164C  7C 08 02 A6 */	mflr r0
/* 80521650  90 01 00 24 */	stw r0, 0x24(r1)
/* 80521654  39 61 00 20 */	addi r11, r1, 0x20
/* 80521658  4B B7 98 7D */	bl func_8009AED4
/* 8052165C  7C 7D 1B 78 */	mr r29, r3
/* 80521660  7C 9E 23 78 */	mr r30, r4
/* 80521664  38 60 00 04 */	li r3, 4
/* 80521668  38 80 00 09 */	li r4, 9
/* 8052166C  4B E7 6E 11 */	bl mDemo_Get_OrderValue
/* 80521670  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80521674  41 82 00 A0 */	beq lbl_80521714
/* 80521678  4B E9 E0 31 */	bl func_803BF6A8
/* 8052167C  4B E9 F6 1D */	bl mMsg_Check_MainNormalContinue
/* 80521680  2C 03 00 01 */	cmpwi r3, 1
/* 80521684  40 82 00 90 */	bne lbl_80521714
/* 80521688  4B E6 1E B9 */	bl func_80383540
/* 8052168C  4B E6 24 E1 */	bl mChoice_Get_ChoseNum
/* 80521690  7C 7F 1B 78 */	mr r31, r3
/* 80521694  2C 1F 00 03 */	cmpwi r31, 3
/* 80521698  41 82 00 30 */	beq lbl_805216C8
/* 8052169C  40 80 00 34 */	bge lbl_805216D0
/* 805216A0  2C 1F 00 00 */	cmpwi r31, 0
/* 805216A4  40 80 00 08 */	bge lbl_805216AC
/* 805216A8  48 00 00 28 */	b lbl_805216D0
lbl_805216AC:
/* 805216AC  80 1D 09 98 */	lwz r0, 0x998(r29)
/* 805216B0  2C 00 00 01 */	cmpwi r0, 1
/* 805216B4  40 82 00 0C */	bne lbl_805216C0
/* 805216B8  38 00 00 01 */	li r0, 1
/* 805216BC  48 00 00 18 */	b lbl_805216D4
lbl_805216C0:
/* 805216C0  38 00 00 02 */	li r0, 2
/* 805216C4  48 00 00 10 */	b lbl_805216D4
lbl_805216C8:
/* 805216C8  38 00 00 03 */	li r0, 3
/* 805216CC  48 00 00 08 */	b lbl_805216D4
lbl_805216D0:
/* 805216D0  38 00 00 00 */	li r0, 0
lbl_805216D4:
/* 805216D4  2C 00 00 00 */	cmpwi r0, 0
/* 805216D8  41 82 00 3C */	beq lbl_80521714
/* 805216DC  3C 80 80 6A */	lis r4, next_act_505@ha /* 0x806A0950@ha */
/* 805216E0  81 9D 09 A0 */	lwz r12, 0x9a0(r29)
/* 805216E4  54 00 10 3A */	slwi r0, r0, 2
/* 805216E8  7F A3 EB 78 */	mr r3, r29
/* 805216EC  38 A4 09 50 */	addi r5, r4, next_act_505@l /* 0x806A0950@l */
/* 805216F0  7F C4 F3 78 */	mr r4, r30
/* 805216F4  7C A5 00 2E */	lwzx r5, r5, r0
/* 805216F8  7D 89 03 A6 */	mtctr r12
/* 805216FC  4E 80 04 21 */	bctrl 
/* 80521700  38 60 00 04 */	li r3, 4
/* 80521704  38 80 00 09 */	li r4, 9
/* 80521708  38 A0 00 00 */	li r5, 0
/* 8052170C  4B E7 6D 2D */	bl mDemo_Set_OrderValue
/* 80521710  93 FD 09 94 */	stw r31, 0x994(r29)
lbl_80521714:
/* 80521714  39 61 00 20 */	addi r11, r1, 0x20
/* 80521718  4B B7 98 09 */	bl func_8009AF20
/* 8052171C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80521720  7C 08 03 A6 */	mtlr r0
/* 80521724  38 21 00 20 */	addi r1, r1, 0x20
/* 80521728  4E 80 00 20 */	blr 
