lbl_80515D84:
/* 80515D84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80515D88  7C 08 02 A6 */	mflr r0
/* 80515D8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80515D90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80515D94  93 C1 00 08 */	stw r30, 8(r1)
/* 80515D98  7C 7E 1B 78 */	mr r30, r3
/* 80515D9C  4B EA 99 0D */	bl func_803BF6A8
/* 80515DA0  7C 60 1B 78 */	mr r0, r3
/* 80515DA4  38 60 00 04 */	li r3, 4
/* 80515DA8  7C 1F 03 78 */	mr r31, r0
/* 80515DAC  38 80 00 09 */	li r4, 9
/* 80515DB0  4B E8 26 CD */	bl mDemo_Get_OrderValue
/* 80515DB4  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80515DB8  41 82 00 7C */	beq lbl_80515E34
/* 80515DBC  7F E3 FB 78 */	mr r3, r31
/* 80515DC0  4B EA AE D9 */	bl mMsg_Check_MainNormalContinue
/* 80515DC4  2C 03 00 00 */	cmpwi r3, 0
/* 80515DC8  41 82 00 6C */	beq lbl_80515E34
/* 80515DCC  4B E6 D7 75 */	bl func_80383540
/* 80515DD0  4B E6 DD 9D */	bl mChoice_Get_ChoseNum
/* 80515DD4  2C 03 00 01 */	cmpwi r3, 1
/* 80515DD8  41 82 00 1C */	beq lbl_80515DF4
/* 80515DDC  40 80 00 20 */	bge lbl_80515DFC
/* 80515DE0  2C 03 00 00 */	cmpwi r3, 0
/* 80515DE4  40 80 00 08 */	bge lbl_80515DEC
/* 80515DE8  48 00 00 14 */	b lbl_80515DFC
lbl_80515DEC:
/* 80515DEC  3B E0 00 04 */	li r31, 4
/* 80515DF0  48 00 00 20 */	b lbl_80515E10
lbl_80515DF4:
/* 80515DF4  3B E0 00 07 */	li r31, 7
/* 80515DF8  48 00 00 18 */	b lbl_80515E10
lbl_80515DFC:
/* 80515DFC  7F E3 FB 78 */	mr r3, r31
/* 80515E00  4B EA AF 11 */	bl mMsg_Set_CancelNormalContinue
/* 80515E04  7F E3 FB 78 */	mr r3, r31
/* 80515E08  4B EA AF 45 */	bl mMsg_Unset_LockContinue
/* 80515E0C  3B E0 00 0C */	li r31, 0xc
lbl_80515E10:
/* 80515E10  2C 1F FF FF */	cmpwi r31, -1
/* 80515E14  41 82 00 20 */	beq lbl_80515E34
/* 80515E18  38 60 00 04 */	li r3, 4
/* 80515E1C  38 80 00 09 */	li r4, 9
/* 80515E20  38 A0 00 00 */	li r5, 0
/* 80515E24  4B E8 26 15 */	bl mDemo_Set_OrderValue
/* 80515E28  7F C3 F3 78 */	mr r3, r30
/* 80515E2C  7F E4 FB 78 */	mr r4, r31
/* 80515E30  48 00 04 B9 */	bl aMSC_setupAction
lbl_80515E34:
/* 80515E34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80515E38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80515E3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80515E40  7C 08 03 A6 */	mtlr r0
/* 80515E44  38 21 00 10 */	addi r1, r1, 0x10
/* 80515E48  4E 80 00 20 */	blr 
