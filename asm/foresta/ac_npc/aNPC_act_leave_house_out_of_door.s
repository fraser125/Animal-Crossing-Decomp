lbl_80533988:
/* 80533988  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053398C  7C 08 02 A6 */	mflr r0
/* 80533990  90 01 00 14 */	stw r0, 0x14(r1)
/* 80533994  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80533998  7C 7F 1B 78 */	mr r31, r3
/* 8053399C  4B FF DA A1 */	bl aNPC_act_anm_seq
/* 805339A0  2C 03 00 00 */	cmpwi r3, 0
/* 805339A4  40 82 00 10 */	bne lbl_805339B4
/* 805339A8  7F E3 FB 78 */	mr r3, r31
/* 805339AC  38 80 00 02 */	li r4, 2
/* 805339B0  4B FF FE ED */	bl func_8053389C
lbl_805339B4:
/* 805339B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805339B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805339BC  7C 08 03 A6 */	mtlr r0
/* 805339C0  38 21 00 10 */	addi r1, r1, 0x10
/* 805339C4  4E 80 00 20 */	blr 
