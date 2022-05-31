lbl_80584E9C:
/* 80584E9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80584EA0  7C 08 02 A6 */	mflr r0
/* 80584EA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80584EA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80584EAC  7C 9F 23 78 */	mr r31, r4
/* 80584EB0  38 80 00 09 */	li r4, 9
/* 80584EB4  93 C1 00 08 */	stw r30, 8(r1)
/* 80584EB8  7C 7E 1B 78 */	mr r30, r3
/* 80584EBC  38 60 00 04 */	li r3, 4
/* 80584EC0  4B E1 35 BD */	bl mDemo_Get_OrderValue
/* 80584EC4  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80584EC8  41 82 00 34 */	beq lbl_80584EFC
/* 80584ECC  4B E3 A7 DD */	bl func_803BF6A8
/* 80584ED0  4B E3 BD C9 */	bl mMsg_Check_MainNormalContinue
/* 80584ED4  2C 03 00 01 */	cmpwi r3, 1
/* 80584ED8  40 82 00 24 */	bne lbl_80584EFC
/* 80584EDC  38 60 00 04 */	li r3, 4
/* 80584EE0  38 80 00 09 */	li r4, 9
/* 80584EE4  38 A0 00 00 */	li r5, 0
/* 80584EE8  4B E1 35 51 */	bl mDemo_Set_OrderValue
/* 80584EEC  7F C3 F3 78 */	mr r3, r30
/* 80584EF0  7F E4 FB 78 */	mr r4, r31
/* 80584EF4  38 A0 00 35 */	li r5, 0x35
/* 80584EF8  48 00 10 C9 */	bl aNSC_setupAction
lbl_80584EFC:
/* 80584EFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80584F00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80584F04  83 C1 00 08 */	lwz r30, 8(r1)
/* 80584F08  7C 08 03 A6 */	mtlr r0
/* 80584F0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80584F10  4E 80 00 20 */	blr 
