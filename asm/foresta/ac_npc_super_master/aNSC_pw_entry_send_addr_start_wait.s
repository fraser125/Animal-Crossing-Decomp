lbl_80584980:
/* 80584980  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80584984  7C 08 02 A6 */	mflr r0
/* 80584988  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058498C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80584990  7C 9F 23 78 */	mr r31, r4
/* 80584994  38 80 00 09 */	li r4, 9
/* 80584998  93 C1 00 08 */	stw r30, 8(r1)
/* 8058499C  7C 7E 1B 78 */	mr r30, r3
/* 805849A0  38 60 00 04 */	li r3, 4
/* 805849A4  4B E1 3A D9 */	bl mDemo_Get_OrderValue
/* 805849A8  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 805849AC  41 82 00 34 */	beq lbl_805849E0
/* 805849B0  4B E3 AC F9 */	bl func_803BF6A8
/* 805849B4  4B E3 C2 E5 */	bl mMsg_Check_MainNormalContinue
/* 805849B8  2C 03 00 01 */	cmpwi r3, 1
/* 805849BC  40 82 00 24 */	bne lbl_805849E0
/* 805849C0  38 60 00 04 */	li r3, 4
/* 805849C4  38 80 00 09 */	li r4, 9
/* 805849C8  38 A0 00 00 */	li r5, 0
/* 805849CC  4B E1 3A 6D */	bl mDemo_Set_OrderValue
/* 805849D0  7F C3 F3 78 */	mr r3, r30
/* 805849D4  7F E4 FB 78 */	mr r4, r31
/* 805849D8  38 A0 00 2A */	li r5, 0x2a
/* 805849DC  48 00 15 E5 */	bl aNSC_setupAction
lbl_805849E0:
/* 805849E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805849E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805849E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 805849EC  7C 08 03 A6 */	mtlr r0
/* 805849F0  38 21 00 10 */	addi r1, r1, 0x10
/* 805849F4  4E 80 00 20 */	blr 
