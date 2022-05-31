lbl_8057F004:
/* 8057F004  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057F008  7C 08 02 A6 */	mflr r0
/* 8057F00C  2C 05 00 01 */	cmpwi r5, 1
/* 8057F010  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057F014  41 82 00 1C */	beq lbl_8057F030
/* 8057F018  40 80 00 1C */	bge lbl_8057F034
/* 8057F01C  2C 05 00 00 */	cmpwi r5, 0
/* 8057F020  40 80 00 08 */	bge lbl_8057F028
/* 8057F024  48 00 00 10 */	b lbl_8057F034
lbl_8057F028:
/* 8057F028  4B FF FF 11 */	bl aNS_schedule_init_proc
/* 8057F02C  48 00 00 08 */	b lbl_8057F034
lbl_8057F030:
/* 8057F030  4B FF FF 55 */	bl aNS_schedule_main_proc
lbl_8057F034:
/* 8057F034  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057F038  7C 08 03 A6 */	mtlr r0
/* 8057F03C  38 21 00 10 */	addi r1, r1, 0x10
/* 8057F040  4E 80 00 20 */	blr 
