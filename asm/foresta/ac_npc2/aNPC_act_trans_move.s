lbl_8053FF80:
/* 8053FF80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053FF84  7C 08 02 A6 */	mflr r0
/* 8053FF88  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053FF8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053FF90  7C 7F 1B 78 */	mr r31, r3
/* 8053FF94  88 63 09 35 */	lbz r3, 0x935(r3)
/* 8053FF98  28 03 00 00 */	cmplwi r3, 0
/* 8053FF9C  41 82 00 0C */	beq lbl_8053FFA8
/* 8053FFA0  38 03 FF FF */	addi r0, r3, -1
/* 8053FFA4  98 1F 09 35 */	stb r0, 0x935(r31)
lbl_8053FFA8:
/* 8053FFA8  7F E3 FB 78 */	mr r3, r31
/* 8053FFAC  4B FF EF 55 */	bl aNPC_act_demo_move
/* 8053FFB0  2C 03 00 00 */	cmpwi r3, 0
/* 8053FFB4  41 82 00 1C */	beq lbl_8053FFD0
/* 8053FFB8  88 1F 09 58 */	lbz r0, 0x958(r31)
/* 8053FFBC  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 8053FFC0  40 82 00 10 */	bne lbl_8053FFD0
/* 8053FFC4  88 1F 09 35 */	lbz r0, 0x935(r31)
/* 8053FFC8  28 00 00 00 */	cmplwi r0, 0
/* 8053FFCC  40 82 00 18 */	bne lbl_8053FFE4
lbl_8053FFD0:
/* 8053FFD0  7F E3 FB 78 */	mr r3, r31
/* 8053FFD4  4B FF FF 89 */	bl aNPC_act_trans_set_arg_data
/* 8053FFD8  7F E3 FB 78 */	mr r3, r31
/* 8053FFDC  38 80 00 01 */	li r4, 1
/* 8053FFE0  4B FF FE A1 */	bl func_8053FE80
lbl_8053FFE4:
/* 8053FFE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053FFE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053FFEC  7C 08 03 A6 */	mtlr r0
/* 8053FFF0  38 21 00 10 */	addi r1, r1, 0x10
/* 8053FFF4  4E 80 00 20 */	blr 
