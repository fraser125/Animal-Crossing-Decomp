lbl_80474E64:
/* 80474E64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80474E68  7C 08 02 A6 */	mflr r0
/* 80474E6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80474E70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80474E74  7C 9F 23 78 */	mr r31, r4
/* 80474E78  93 C1 00 08 */	stw r30, 8(r1)
/* 80474E7C  7C 7E 1B 78 */	mr r30, r3
/* 80474E80  4B F4 A8 29 */	bl func_803BF6A8
/* 80474E84  4B F4 BE 79 */	bl mMsg_Check_MainDisappear
/* 80474E88  2C 03 00 00 */	cmpwi r3, 0
/* 80474E8C  40 82 00 14 */	bne lbl_80474EA0
/* 80474E90  4B F4 A8 19 */	bl func_803BF6A8
/* 80474E94  4B F4 BE 59 */	bl mMsg_Check_MainHide
/* 80474E98  2C 03 00 00 */	cmpwi r3, 0
/* 80474E9C  41 82 00 28 */	beq lbl_80474EC4
lbl_80474EA0:
/* 80474EA0  7F E3 FB 78 */	mr r3, r31
/* 80474EA4  4B F6 56 BD */	bl mPlib_request_main_close_furniture_type1
/* 80474EA8  2C 03 00 00 */	cmpwi r3, 0
/* 80474EAC  41 82 00 18 */	beq lbl_80474EC4
/* 80474EB0  7F C3 F3 78 */	mr r3, r30
/* 80474EB4  38 80 00 05 */	li r4, 5
/* 80474EB8  4B FF F2 91 */	bl aMR_ChangeDemoFtrStatus
/* 80474EBC  38 00 00 10 */	li r0, 0x10
/* 80474EC0  B0 1E 03 EE */	sth r0, 0x3ee(r30)
lbl_80474EC4:
/* 80474EC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80474EC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80474ECC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80474ED0  7C 08 03 A6 */	mtlr r0
/* 80474ED4  38 21 00 10 */	addi r1, r1, 0x10
/* 80474ED8  4E 80 00 20 */	blr 
