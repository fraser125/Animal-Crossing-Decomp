lbl_8056608C:
/* 8056608C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80566090  7C 08 02 A6 */	mflr r0
/* 80566094  2C 05 00 01 */	cmpwi r5, 1
/* 80566098  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056609C  41 82 00 1C */	beq lbl_805660B8
/* 805660A0  40 80 00 1C */	bge lbl_805660BC
/* 805660A4  2C 05 00 00 */	cmpwi r5, 0
/* 805660A8  40 80 00 08 */	bge lbl_805660B0
/* 805660AC  48 00 00 10 */	b lbl_805660BC
lbl_805660B0:
/* 805660B0  4B FF FB 99 */	bl aNNW_think_init_proc
/* 805660B4  48 00 00 08 */	b lbl_805660BC
lbl_805660B8:
/* 805660B8  4B FF FB 49 */	bl aNNW_think_main_proc
lbl_805660BC:
/* 805660BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805660C0  7C 08 03 A6 */	mtlr r0
/* 805660C4  38 21 00 10 */	addi r1, r1, 0x10
/* 805660C8  4E 80 00 20 */	blr 
