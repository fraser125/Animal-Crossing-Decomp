lbl_80519B08:
/* 80519B08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80519B0C  7C 08 02 A6 */	mflr r0
/* 80519B10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80519B14  4B FF F9 65 */	bl func_80519478
/* 80519B18  2C 03 00 01 */	cmpwi r3, 1
/* 80519B1C  38 60 02 F5 */	li r3, 0x2f5
/* 80519B20  40 82 00 08 */	bne lbl_80519B28
/* 80519B24  38 60 02 FB */	li r3, 0x2fb
lbl_80519B28:
/* 80519B28  4B E7 E9 ED */	bl mDemo_Set_msg_num
/* 80519B2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80519B30  7C 08 03 A6 */	mtlr r0
/* 80519B34  38 21 00 10 */	addi r1, r1, 0x10
/* 80519B38  4E 80 00 20 */	blr 
