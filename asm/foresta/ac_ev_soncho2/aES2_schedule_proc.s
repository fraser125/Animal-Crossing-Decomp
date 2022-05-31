lbl_8052577C:
/* 8052577C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80525780  7C 08 02 A6 */	mflr r0
/* 80525784  2C 05 00 01 */	cmpwi r5, 1
/* 80525788  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052578C  41 82 00 1C */	beq lbl_805257A8
/* 80525790  40 80 00 1C */	bge lbl_805257AC
/* 80525794  2C 05 00 00 */	cmpwi r5, 0
/* 80525798  40 80 00 08 */	bge lbl_805257A0
/* 8052579C  48 00 00 10 */	b lbl_805257AC
lbl_805257A0:
/* 805257A0  4B FF FF 11 */	bl aES2_schedule_init_proc
/* 805257A4  48 00 00 08 */	b lbl_805257AC
lbl_805257A8:
/* 805257A8  4B FF FF 55 */	bl aES2_schedule_main_proc
lbl_805257AC:
/* 805257AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805257B0  7C 08 03 A6 */	mtlr r0
/* 805257B4  38 21 00 10 */	addi r1, r1, 0x10
/* 805257B8  4E 80 00 20 */	blr 
