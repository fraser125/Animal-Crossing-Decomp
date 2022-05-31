lbl_8056C858:
/* 8056C858  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056C85C  7C 08 02 A6 */	mflr r0
/* 8056C860  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056C864  39 61 00 20 */	addi r11, r1, 0x20
/* 8056C868  4B B2 E6 6D */	bl func_8009AED4
/* 8056C86C  7C 7D 1B 78 */	mr r29, r3
/* 8056C870  7C 9E 23 78 */	mr r30, r4
/* 8056C874  38 60 00 04 */	li r3, 4
/* 8056C878  38 80 00 09 */	li r4, 9
/* 8056C87C  4B E2 BC 01 */	bl mDemo_Get_OrderValue
/* 8056C880  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8056C884  41 82 00 F4 */	beq lbl_8056C978
/* 8056C888  4B E5 2E 21 */	bl func_803BF6A8
/* 8056C88C  4B E5 44 0D */	bl mMsg_Check_MainNormalContinue
/* 8056C890  2C 03 00 01 */	cmpwi r3, 1
/* 8056C894  40 82 00 E4 */	bne lbl_8056C978
/* 8056C898  4B E1 6C A9 */	bl func_80383540
/* 8056C89C  4B E1 72 D1 */	bl mChoice_Get_ChoseNum
/* 8056C8A0  88 1D 09 A4 */	lbz r0, 0x9a4(r29)
/* 8056C8A4  3B E0 FF FF */	li r31, -1
/* 8056C8A8  2C 00 00 02 */	cmpwi r0, 2
/* 8056C8AC  40 80 00 1C */	bge lbl_8056C8C8
/* 8056C8B0  2C 00 00 00 */	cmpwi r0, 0
/* 8056C8B4  40 80 00 08 */	bge lbl_8056C8BC
/* 8056C8B8  48 00 00 10 */	b lbl_8056C8C8
lbl_8056C8BC:
/* 8056C8BC  2C 03 00 00 */	cmpwi r3, 0
/* 8056C8C0  40 81 00 08 */	ble lbl_8056C8C8
/* 8056C8C4  38 63 00 01 */	addi r3, r3, 1
lbl_8056C8C8:
/* 8056C8C8  2C 03 00 02 */	cmpwi r3, 2
/* 8056C8CC  41 82 00 5C */	beq lbl_8056C928
/* 8056C8D0  40 80 00 14 */	bge lbl_8056C8E4
/* 8056C8D4  2C 03 00 00 */	cmpwi r3, 0
/* 8056C8D8  41 82 00 18 */	beq lbl_8056C8F0
/* 8056C8DC  40 80 00 34 */	bge lbl_8056C910
/* 8056C8E0  48 00 00 68 */	b lbl_8056C948
lbl_8056C8E4:
/* 8056C8E4  2C 03 00 04 */	cmpwi r3, 4
/* 8056C8E8  40 80 00 60 */	bge lbl_8056C948
/* 8056C8EC  48 00 00 58 */	b lbl_8056C944
lbl_8056C8F0:
/* 8056C8F0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8056C8F4  41 82 00 14 */	beq lbl_8056C908
/* 8056C8F8  38 00 00 01 */	li r0, 1
/* 8056C8FC  3B E0 00 01 */	li r31, 1
/* 8056C900  98 1D 09 A6 */	stb r0, 0x9a6(r29)
/* 8056C904  48 00 00 44 */	b lbl_8056C948
lbl_8056C908:
/* 8056C908  3B E0 00 15 */	li r31, 0x15
/* 8056C90C  48 00 00 3C */	b lbl_8056C948
lbl_8056C910:
/* 8056C910  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8056C914  41 82 00 0C */	beq lbl_8056C920
/* 8056C918  3B E0 00 18 */	li r31, 0x18
/* 8056C91C  48 00 00 2C */	b lbl_8056C948
lbl_8056C920:
/* 8056C920  3B E0 00 0B */	li r31, 0xb
/* 8056C924  48 00 00 24 */	b lbl_8056C948
lbl_8056C928:
/* 8056C928  4B E4 71 E1 */	bl mLd_PlayerManKindCheck
/* 8056C92C  2C 03 00 00 */	cmpwi r3, 0
/* 8056C930  40 82 00 0C */	bne lbl_8056C93C
/* 8056C934  3B E0 00 11 */	li r31, 0x11
/* 8056C938  48 00 00 10 */	b lbl_8056C948
lbl_8056C93C:
/* 8056C93C  3B E0 00 10 */	li r31, 0x10
/* 8056C940  48 00 00 08 */	b lbl_8056C948
lbl_8056C944:
/* 8056C944  3B E0 00 01 */	li r31, 1
lbl_8056C948:
/* 8056C948  2C 1F 00 00 */	cmpwi r31, 0
/* 8056C94C  41 80 00 2C */	blt lbl_8056C978
/* 8056C950  38 60 00 04 */	li r3, 4
/* 8056C954  38 80 00 09 */	li r4, 9
/* 8056C958  38 A0 00 00 */	li r5, 0
/* 8056C95C  4B E2 BA DD */	bl mDemo_Set_OrderValue
/* 8056C960  81 9D 09 A0 */	lwz r12, 0x9a0(r29)
/* 8056C964  7F A3 EB 78 */	mr r3, r29
/* 8056C968  7F C4 F3 78 */	mr r4, r30
/* 8056C96C  7F E5 FB 78 */	mr r5, r31
/* 8056C970  7D 89 03 A6 */	mtctr r12
/* 8056C974  4E 80 04 21 */	bctrl 
lbl_8056C978:
/* 8056C978  39 61 00 20 */	addi r11, r1, 0x20
/* 8056C97C  4B B2 E5 A5 */	bl func_8009AF20
/* 8056C980  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056C984  7C 08 03 A6 */	mtlr r0
/* 8056C988  38 21 00 20 */	addi r1, r1, 0x20
/* 8056C98C  4E 80 00 20 */	blr 
