lbl_80584B80:
/* 80584B80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80584B84  7C 08 02 A6 */	mflr r0
/* 80584B88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80584B8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80584B90  7C 9F 23 78 */	mr r31, r4
/* 80584B94  38 80 00 09 */	li r4, 9
/* 80584B98  93 C1 00 08 */	stw r30, 8(r1)
/* 80584B9C  7C 7E 1B 78 */	mr r30, r3
/* 80584BA0  38 60 00 04 */	li r3, 4
/* 80584BA4  4B E1 38 D9 */	bl mDemo_Get_OrderValue
/* 80584BA8  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80584BAC  41 82 00 34 */	beq lbl_80584BE0
/* 80584BB0  4B E3 AA F9 */	bl func_803BF6A8
/* 80584BB4  4B E3 C0 E5 */	bl mMsg_Check_MainNormalContinue
/* 80584BB8  2C 03 00 01 */	cmpwi r3, 1
/* 80584BBC  40 82 00 24 */	bne lbl_80584BE0
/* 80584BC0  38 60 00 04 */	li r3, 4
/* 80584BC4  38 80 00 09 */	li r4, 9
/* 80584BC8  38 A0 00 00 */	li r5, 0
/* 80584BCC  4B E1 38 6D */	bl mDemo_Set_OrderValue
/* 80584BD0  7F C3 F3 78 */	mr r3, r30
/* 80584BD4  7F E4 FB 78 */	mr r4, r31
/* 80584BD8  38 A0 00 2F */	li r5, 0x2f
/* 80584BDC  48 00 13 E5 */	bl aNSC_setupAction
lbl_80584BE0:
/* 80584BE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80584BE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80584BE8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80584BEC  7C 08 03 A6 */	mtlr r0
/* 80584BF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80584BF4  4E 80 00 20 */	blr 
