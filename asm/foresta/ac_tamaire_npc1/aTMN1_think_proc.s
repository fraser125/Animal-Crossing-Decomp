lbl_8058B2F0:
/* 8058B2F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058B2F4  7C 08 02 A6 */	mflr r0
/* 8058B2F8  2C 05 00 01 */	cmpwi r5, 1
/* 8058B2FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058B300  41 82 00 1C */	beq lbl_8058B31C
/* 8058B304  40 80 00 1C */	bge lbl_8058B320
/* 8058B308  2C 05 00 00 */	cmpwi r5, 0
/* 8058B30C  40 80 00 08 */	bge lbl_8058B314
/* 8058B310  48 00 00 10 */	b lbl_8058B320
lbl_8058B314:
/* 8058B314  4B FF FB 79 */	bl aTMN1_think_init_proc
/* 8058B318  48 00 00 08 */	b lbl_8058B320
lbl_8058B31C:
/* 8058B31C  4B FF FA C1 */	bl aTMN1_think_main_proc
lbl_8058B320:
/* 8058B320  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058B324  7C 08 03 A6 */	mtlr r0
/* 8058B328  38 21 00 10 */	addi r1, r1, 0x10
/* 8058B32C  4E 80 00 20 */	blr 
