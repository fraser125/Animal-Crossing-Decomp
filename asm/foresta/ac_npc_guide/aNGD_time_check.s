lbl_8055364C:
/* 8055364C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80553650  7C 08 02 A6 */	mflr r0
/* 80553654  90 01 00 14 */	stw r0, 0x14(r1)
/* 80553658  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055365C  7C 9F 23 78 */	mr r31, r4
/* 80553660  93 C1 00 08 */	stw r30, 8(r1)
/* 80553664  7C 7E 1B 78 */	mr r30, r3
/* 80553668  4B E6 C0 41 */	bl func_803BF6A8
/* 8055366C  4B E6 D6 2D */	bl mMsg_Check_MainNormalContinue
/* 80553670  2C 03 00 01 */	cmpwi r3, 1
/* 80553674  40 82 00 50 */	bne lbl_805536C4
/* 80553678  4B E2 FE C9 */	bl func_80383540
/* 8055367C  4B E3 04 F1 */	bl mChoice_Get_ChoseNum
/* 80553680  2C 03 00 01 */	cmpwi r3, 1
/* 80553684  41 82 00 28 */	beq lbl_805536AC
/* 80553688  40 80 00 3C */	bge lbl_805536C4
/* 8055368C  2C 03 00 00 */	cmpwi r3, 0
/* 80553690  40 80 00 08 */	bge lbl_80553698
/* 80553694  48 00 00 30 */	b lbl_805536C4
lbl_80553698:
/* 80553698  7F C3 F3 78 */	mr r3, r30
/* 8055369C  7F E4 FB 78 */	mr r4, r31
/* 805536A0  38 A0 00 09 */	li r5, 9
/* 805536A4  48 00 12 65 */	bl aNGD_setupAction
/* 805536A8  48 00 00 1C */	b lbl_805536C4
lbl_805536AC:
/* 805536AC  38 00 00 05 */	li r0, 5
/* 805536B0  7F C3 F3 78 */	mr r3, r30
/* 805536B4  90 1E 09 98 */	stw r0, 0x998(r30)
/* 805536B8  7F E4 FB 78 */	mr r4, r31
/* 805536BC  38 A0 00 04 */	li r5, 4
/* 805536C0  48 00 12 49 */	bl aNGD_setupAction
lbl_805536C4:
/* 805536C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805536C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805536CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 805536D0  7C 08 03 A6 */	mtlr r0
/* 805536D4  38 21 00 10 */	addi r1, r1, 0x10
/* 805536D8  4E 80 00 20 */	blr 
