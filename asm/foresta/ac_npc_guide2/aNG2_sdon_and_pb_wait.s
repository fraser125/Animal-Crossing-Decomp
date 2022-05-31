lbl_8055578C:
/* 8055578C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80555790  7C 08 02 A6 */	mflr r0
/* 80555794  90 01 00 14 */	stw r0, 0x14(r1)
/* 80555798  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055579C  7C 9F 23 78 */	mr r31, r4
/* 805557A0  38 80 00 09 */	li r4, 9
/* 805557A4  93 C1 00 08 */	stw r30, 8(r1)
/* 805557A8  7C 7E 1B 78 */	mr r30, r3
/* 805557AC  38 60 00 04 */	li r3, 4
/* 805557B0  4B E4 2C CD */	bl mDemo_Get_OrderValue
/* 805557B4  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 805557B8  41 82 00 34 */	beq lbl_805557EC
/* 805557BC  4B E6 9E ED */	bl func_803BF6A8
/* 805557C0  4B E6 B4 D9 */	bl mMsg_Check_MainNormalContinue
/* 805557C4  2C 03 00 00 */	cmpwi r3, 0
/* 805557C8  41 82 00 24 */	beq lbl_805557EC
/* 805557CC  80 BE 09 98 */	lwz r5, 0x998(r30)
/* 805557D0  7F C3 F3 78 */	mr r3, r30
/* 805557D4  7F E4 FB 78 */	mr r4, r31
/* 805557D8  48 00 0D 45 */	bl aNG2_setupAction
/* 805557DC  38 60 00 04 */	li r3, 4
/* 805557E0  38 80 00 09 */	li r4, 9
/* 805557E4  38 A0 00 00 */	li r5, 0
/* 805557E8  4B E4 2C 51 */	bl mDemo_Set_OrderValue
lbl_805557EC:
/* 805557EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805557F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805557F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 805557F8  7C 08 03 A6 */	mtlr r0
/* 805557FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80555800  4E 80 00 20 */	blr 
