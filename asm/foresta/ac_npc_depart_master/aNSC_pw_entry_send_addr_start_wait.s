lbl_805511F4:
/* 805511F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805511F8  7C 08 02 A6 */	mflr r0
/* 805511FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80551200  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80551204  7C 9F 23 78 */	mr r31, r4
/* 80551208  38 80 00 09 */	li r4, 9
/* 8055120C  93 C1 00 08 */	stw r30, 8(r1)
/* 80551210  7C 7E 1B 78 */	mr r30, r3
/* 80551214  38 60 00 04 */	li r3, 4
/* 80551218  4B E4 72 65 */	bl mDemo_Get_OrderValue
/* 8055121C  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80551220  41 82 00 34 */	beq lbl_80551254
/* 80551224  4B E6 E4 85 */	bl func_803BF6A8
/* 80551228  4B E6 FA 71 */	bl mMsg_Check_MainNormalContinue
/* 8055122C  2C 03 00 01 */	cmpwi r3, 1
/* 80551230  40 82 00 24 */	bne lbl_80551254
/* 80551234  38 60 00 04 */	li r3, 4
/* 80551238  38 80 00 09 */	li r4, 9
/* 8055123C  38 A0 00 00 */	li r5, 0
/* 80551240  4B E4 71 F9 */	bl mDemo_Set_OrderValue
/* 80551244  7F C3 F3 78 */	mr r3, r30
/* 80551248  7F E4 FB 78 */	mr r4, r31
/* 8055124C  38 A0 00 2A */	li r5, 0x2a
/* 80551250  48 00 15 E5 */	bl aNSC_setupAction
lbl_80551254:
/* 80551254  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80551258  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055125C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80551260  7C 08 03 A6 */	mtlr r0
/* 80551264  38 21 00 10 */	addi r1, r1, 0x10
/* 80551268  4E 80 00 20 */	blr 
