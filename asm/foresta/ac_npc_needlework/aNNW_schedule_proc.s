lbl_80566198:
/* 80566198  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056619C  7C 08 02 A6 */	mflr r0
/* 805661A0  2C 05 00 01 */	cmpwi r5, 1
/* 805661A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805661A8  41 82 00 1C */	beq lbl_805661C4
/* 805661AC  40 80 00 1C */	bge lbl_805661C8
/* 805661B0  2C 05 00 00 */	cmpwi r5, 0
/* 805661B4  40 80 00 08 */	bge lbl_805661BC
/* 805661B8  48 00 00 10 */	b lbl_805661C8
lbl_805661BC:
/* 805661BC  4B FF FF 11 */	bl aNNW_schedule_init_proc
/* 805661C0  48 00 00 08 */	b lbl_805661C8
lbl_805661C4:
/* 805661C4  4B FF FF 55 */	bl aNNW_schedule_main_proc
lbl_805661C8:
/* 805661C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805661CC  7C 08 03 A6 */	mtlr r0
/* 805661D0  38 21 00 10 */	addi r1, r1, 0x10
/* 805661D4  4E 80 00 20 */	blr 
