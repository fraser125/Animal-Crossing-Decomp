lbl_80570728:
/* 80570728  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057072C  7C 08 02 A6 */	mflr r0
/* 80570730  90 01 00 24 */	stw r0, 0x24(r1)
/* 80570734  39 61 00 20 */	addi r11, r1, 0x20
/* 80570738  4B B2 A7 9D */	bl func_8009AED4
/* 8057073C  4B E7 34 2D */	bl mQst_GetFirstJobData
/* 80570740  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80570744  7C 7F 1B 78 */	mr r31, r3
/* 80570748  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8057074C  3C A5 00 02 */	addis r5, r5, 2
/* 80570750  38 80 00 00 */	li r4, 0
/* 80570754  80 65 61 3C */	lwz r3, 0x613c(r5)
/* 80570758  4B E6 FF D1 */	bl mPr_GetPossessionItemIdx
/* 8057075C  88 1F 00 48 */	lbz r0, 0x48(r31)
/* 80570760  7C 7D 1B 78 */	mr r29, r3
/* 80570764  38 7F 00 2C */	addi r3, r31, 0x2c
/* 80570768  54 04 FE 7E */	rlwinm r4, r0, 0x1f, 0x19, 0x1f
/* 8057076C  4B E5 C3 31 */	bl mNpc_GetOtherAnimalPersonalID
/* 80570770  7C 7E 1B 78 */	mr r30, r3
/* 80570774  38 81 00 08 */	addi r4, r1, 8
/* 80570778  38 60 00 00 */	li r3, 0
/* 8057077C  38 A0 00 01 */	li r5, 1
/* 80570780  38 C0 00 00 */	li r6, 0
/* 80570784  38 E0 00 00 */	li r7, 0
/* 80570788  39 00 00 03 */	li r8, 3
/* 8057078C  39 20 00 08 */	li r9, 8
/* 80570790  39 40 00 00 */	li r10, 0
/* 80570794  4B E7 7C 49 */	bl mSP_SelectRandomItem_New
/* 80570798  A0 A1 00 08 */	lhz r5, 8(r1)
/* 8057079C  7F E3 FB 78 */	mr r3, r31
/* 805707A0  7F C4 F3 78 */	mr r4, r30
/* 805707A4  7F A6 EB 78 */	mr r6, r29
/* 805707A8  4B E7 39 ED */	bl mQst_SetFirstJobCarpet
/* 805707AC  39 61 00 20 */	addi r11, r1, 0x20
/* 805707B0  4B B2 A7 71 */	bl func_8009AF20
/* 805707B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805707B8  7C 08 03 A6 */	mtlr r0
/* 805707BC  38 21 00 20 */	addi r1, r1, 0x20
/* 805707C0  4E 80 00 20 */	blr 
