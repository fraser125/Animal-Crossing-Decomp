lbl_8058D5C8:
/* 8058D5C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058D5CC  7C 08 02 A6 */	mflr r0
/* 8058D5D0  2C 05 00 01 */	cmpwi r5, 1
/* 8058D5D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058D5D8  41 82 00 1C */	beq lbl_8058D5F4
/* 8058D5DC  40 80 00 1C */	bge lbl_8058D5F8
/* 8058D5E0  2C 05 00 00 */	cmpwi r5, 0
/* 8058D5E4  40 80 00 08 */	bge lbl_8058D5EC
/* 8058D5E8  48 00 00 10 */	b lbl_8058D5F8
lbl_8058D5EC:
/* 8058D5EC  4B FF FE D9 */	bl aTKN1_think_init_proc
/* 8058D5F0  48 00 00 08 */	b lbl_8058D5F8
lbl_8058D5F4:
/* 8058D5F4  4B FF FD 45 */	bl aTKN1_think_main_proc
lbl_8058D5F8:
/* 8058D5F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058D5FC  7C 08 03 A6 */	mtlr r0
/* 8058D600  38 21 00 10 */	addi r1, r1, 0x10
/* 8058D604  4E 80 00 20 */	blr 
