lbl_805877B0:
/* 805877B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805877B4  7C 08 02 A6 */	mflr r0
/* 805877B8  2C 05 00 01 */	cmpwi r5, 1
/* 805877BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805877C0  41 82 00 1C */	beq lbl_805877DC
/* 805877C4  40 80 00 1C */	bge lbl_805877E0
/* 805877C8  2C 05 00 00 */	cmpwi r5, 0
/* 805877CC  40 80 00 08 */	bge lbl_805877D4
/* 805877D0  48 00 00 10 */	b lbl_805877E0
lbl_805877D4:
/* 805877D4  4B FF FF 11 */	bl aNTT_schedule_init_proc
/* 805877D8  48 00 00 08 */	b lbl_805877E0
lbl_805877DC:
/* 805877DC  4B FF FF 55 */	bl aNTT_schedule_main_proc
lbl_805877E0:
/* 805877E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805877E4  7C 08 03 A6 */	mtlr r0
/* 805877E8  38 21 00 10 */	addi r1, r1, 0x10
/* 805877EC  4E 80 00 20 */	blr 
