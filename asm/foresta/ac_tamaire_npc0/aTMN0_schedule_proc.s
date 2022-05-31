lbl_8058A094:
/* 8058A094  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058A098  7C 08 02 A6 */	mflr r0
/* 8058A09C  2C 05 00 01 */	cmpwi r5, 1
/* 8058A0A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058A0A4  41 82 00 1C */	beq lbl_8058A0C0
/* 8058A0A8  40 80 00 1C */	bge lbl_8058A0C4
/* 8058A0AC  2C 05 00 00 */	cmpwi r5, 0
/* 8058A0B0  40 80 00 08 */	bge lbl_8058A0B8
/* 8058A0B4  48 00 00 10 */	b lbl_8058A0C4
lbl_8058A0B8:
/* 8058A0B8  4B FF FF 11 */	bl aTMN0_schedule_init_proc
/* 8058A0BC  48 00 00 08 */	b lbl_8058A0C4
lbl_8058A0C0:
/* 8058A0C0  4B FF FF 55 */	bl aTMN0_schedule_main_proc
lbl_8058A0C4:
/* 8058A0C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058A0C8  7C 08 03 A6 */	mtlr r0
/* 8058A0CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8058A0D0  4E 80 00 20 */	blr 
