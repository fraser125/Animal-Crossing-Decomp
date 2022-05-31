lbl_8058EF38:
/* 8058EF38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058EF3C  7C 08 02 A6 */	mflr r0
/* 8058EF40  2C 05 00 01 */	cmpwi r5, 1
/* 8058EF44  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058EF48  41 82 00 1C */	beq lbl_8058EF64
/* 8058EF4C  40 80 00 1C */	bge lbl_8058EF68
/* 8058EF50  2C 05 00 00 */	cmpwi r5, 0
/* 8058EF54  40 80 00 08 */	bge lbl_8058EF5C
/* 8058EF58  48 00 00 10 */	b lbl_8058EF68
lbl_8058EF5C:
/* 8058EF5C  4B FF FF 11 */	bl aTNN0_schedule_init_proc
/* 8058EF60  48 00 00 08 */	b lbl_8058EF68
lbl_8058EF64:
/* 8058EF64  4B FF FF 55 */	bl aTNN0_schedule_main_proc
lbl_8058EF68:
/* 8058EF68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058EF6C  7C 08 03 A6 */	mtlr r0
/* 8058EF70  38 21 00 10 */	addi r1, r1, 0x10
/* 8058EF74  4E 80 00 20 */	blr 
