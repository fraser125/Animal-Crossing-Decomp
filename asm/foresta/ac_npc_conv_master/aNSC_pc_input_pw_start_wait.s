lbl_80549DF8:
/* 80549DF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80549DFC  7C 08 02 A6 */	mflr r0
/* 80549E00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80549E04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80549E08  7C 9F 23 78 */	mr r31, r4
/* 80549E0C  38 80 00 09 */	li r4, 9
/* 80549E10  93 C1 00 08 */	stw r30, 8(r1)
/* 80549E14  7C 7E 1B 78 */	mr r30, r3
/* 80549E18  38 60 00 04 */	li r3, 4
/* 80549E1C  4B E4 E6 61 */	bl mDemo_Get_OrderValue
/* 80549E20  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80549E24  41 82 00 34 */	beq lbl_80549E58
/* 80549E28  4B E7 58 81 */	bl func_803BF6A8
/* 80549E2C  4B E7 6E 6D */	bl mMsg_Check_MainNormalContinue
/* 80549E30  2C 03 00 01 */	cmpwi r3, 1
/* 80549E34  40 82 00 24 */	bne lbl_80549E58
/* 80549E38  38 60 00 04 */	li r3, 4
/* 80549E3C  38 80 00 09 */	li r4, 9
/* 80549E40  38 A0 00 00 */	li r5, 0
/* 80549E44  4B E4 E5 F5 */	bl mDemo_Set_OrderValue
/* 80549E48  7F C3 F3 78 */	mr r3, r30
/* 80549E4C  7F E4 FB 78 */	mr r4, r31
/* 80549E50  38 A0 00 35 */	li r5, 0x35
/* 80549E54  48 00 10 C9 */	bl aNSC_setupAction
lbl_80549E58:
/* 80549E58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80549E5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80549E60  83 C1 00 08 */	lwz r30, 8(r1)
/* 80549E64  7C 08 03 A6 */	mtlr r0
/* 80549E68  38 21 00 10 */	addi r1, r1, 0x10
/* 80549E6C  4E 80 00 20 */	blr 
