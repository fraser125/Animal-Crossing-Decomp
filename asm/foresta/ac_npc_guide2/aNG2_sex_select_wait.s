lbl_80555924:
/* 80555924  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80555928  7C 08 02 A6 */	mflr r0
/* 8055592C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80555930  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80555934  7C 9F 23 78 */	mr r31, r4
/* 80555938  93 C1 00 08 */	stw r30, 8(r1)
/* 8055593C  7C 7E 1B 78 */	mr r30, r3
/* 80555940  4B E6 9D 69 */	bl func_803BF6A8
/* 80555944  4B E6 B3 55 */	bl mMsg_Check_MainNormalContinue
/* 80555948  2C 03 00 01 */	cmpwi r3, 1
/* 8055594C  40 82 00 50 */	bne lbl_8055599C
/* 80555950  4B E2 DB F1 */	bl func_80383540
/* 80555954  4B E2 E2 19 */	bl mChoice_Get_ChoseNum
/* 80555958  2C 03 00 02 */	cmpwi r3, 2
/* 8055595C  41 82 00 28 */	beq lbl_80555984
/* 80555960  40 80 00 3C */	bge lbl_8055599C
/* 80555964  2C 03 00 00 */	cmpwi r3, 0
/* 80555968  40 80 00 08 */	bge lbl_80555970
/* 8055596C  48 00 00 30 */	b lbl_8055599C
lbl_80555970:
/* 80555970  7F C3 F3 78 */	mr r3, r30
/* 80555974  7F E4 FB 78 */	mr r4, r31
/* 80555978  38 A0 00 0B */	li r5, 0xb
/* 8055597C  48 00 0B A1 */	bl aNG2_setupAction
/* 80555980  48 00 00 1C */	b lbl_8055599C
lbl_80555984:
/* 80555984  38 00 00 06 */	li r0, 6
/* 80555988  7F C3 F3 78 */	mr r3, r30
/* 8055598C  90 1E 09 98 */	stw r0, 0x998(r30)
/* 80555990  7F E4 FB 78 */	mr r4, r31
/* 80555994  38 A0 00 05 */	li r5, 5
/* 80555998  48 00 0B 85 */	bl aNG2_setupAction
lbl_8055599C:
/* 8055599C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805559A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805559A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 805559A8  7C 08 03 A6 */	mtlr r0
/* 805559AC  38 21 00 10 */	addi r1, r1, 0x10
/* 805559B0  4E 80 00 20 */	blr 
