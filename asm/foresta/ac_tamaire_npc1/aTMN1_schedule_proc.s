lbl_8058B3FC:
/* 8058B3FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058B400  7C 08 02 A6 */	mflr r0
/* 8058B404  2C 05 00 01 */	cmpwi r5, 1
/* 8058B408  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058B40C  41 82 00 1C */	beq lbl_8058B428
/* 8058B410  40 80 00 1C */	bge lbl_8058B42C
/* 8058B414  2C 05 00 00 */	cmpwi r5, 0
/* 8058B418  40 80 00 08 */	bge lbl_8058B420
/* 8058B41C  48 00 00 10 */	b lbl_8058B42C
lbl_8058B420:
/* 8058B420  4B FF FF 11 */	bl aTMN1_schedule_init_proc
/* 8058B424  48 00 00 08 */	b lbl_8058B42C
lbl_8058B428:
/* 8058B428  4B FF FF 55 */	bl aTMN1_schedule_main_proc
lbl_8058B42C:
/* 8058B42C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058B430  7C 08 03 A6 */	mtlr r0
/* 8058B434  38 21 00 10 */	addi r1, r1, 0x10
/* 8058B438  4E 80 00 20 */	blr 
