lbl_8056CC98:
/* 8056CC98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056CC9C  7C 08 02 A6 */	mflr r0
/* 8056CCA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056CCA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056CCA8  7C 9F 23 78 */	mr r31, r4
/* 8056CCAC  38 80 00 09 */	li r4, 9
/* 8056CCB0  93 C1 00 08 */	stw r30, 8(r1)
/* 8056CCB4  7C 7E 1B 78 */	mr r30, r3
/* 8056CCB8  38 60 00 04 */	li r3, 4
/* 8056CCBC  4B E2 B7 C1 */	bl mDemo_Get_OrderValue
/* 8056CCC0  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8056CCC4  41 82 00 20 */	beq lbl_8056CCE4
/* 8056CCC8  4B E5 29 E1 */	bl func_803BF6A8
/* 8056CCCC  4B E5 3F CD */	bl mMsg_Check_MainNormalContinue
/* 8056CCD0  2C 03 00 01 */	cmpwi r3, 1
/* 8056CCD4  40 82 00 10 */	bne lbl_8056CCE4
/* 8056CCD8  7F C3 F3 78 */	mr r3, r30
/* 8056CCDC  7F E4 FB 78 */	mr r4, r31
/* 8056CCE0  4B FF F9 D5 */	bl aPG_office_space_check
lbl_8056CCE4:
/* 8056CCE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056CCE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056CCEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8056CCF0  7C 08 03 A6 */	mtlr r0
/* 8056CCF4  38 21 00 10 */	addi r1, r1, 0x10
/* 8056CCF8  4E 80 00 20 */	blr 
