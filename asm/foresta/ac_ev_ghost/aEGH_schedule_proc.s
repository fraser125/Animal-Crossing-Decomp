lbl_80520C50:
/* 80520C50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80520C54  7C 08 02 A6 */	mflr r0
/* 80520C58  2C 05 00 01 */	cmpwi r5, 1
/* 80520C5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80520C60  41 82 00 1C */	beq lbl_80520C7C
/* 80520C64  40 80 00 1C */	bge lbl_80520C80
/* 80520C68  2C 05 00 00 */	cmpwi r5, 0
/* 80520C6C  40 80 00 08 */	bge lbl_80520C74
/* 80520C70  48 00 00 10 */	b lbl_80520C80
lbl_80520C74:
/* 80520C74  4B FF FF 11 */	bl aEGH_schedule_init_proc
/* 80520C78  48 00 00 08 */	b lbl_80520C80
lbl_80520C7C:
/* 80520C7C  4B FF FF 55 */	bl aEGH_schedule_main_proc
lbl_80520C80:
/* 80520C80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80520C84  7C 08 03 A6 */	mtlr r0
/* 80520C88  38 21 00 10 */	addi r1, r1, 0x10
/* 80520C8C  4E 80 00 20 */	blr 
