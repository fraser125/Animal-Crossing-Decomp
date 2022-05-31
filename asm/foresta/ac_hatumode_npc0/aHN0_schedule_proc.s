lbl_8052BC10:
/* 8052BC10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052BC14  7C 08 02 A6 */	mflr r0
/* 8052BC18  2C 05 00 01 */	cmpwi r5, 1
/* 8052BC1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052BC20  41 82 00 1C */	beq lbl_8052BC3C
/* 8052BC24  40 80 00 1C */	bge lbl_8052BC40
/* 8052BC28  2C 05 00 00 */	cmpwi r5, 0
/* 8052BC2C  40 80 00 08 */	bge lbl_8052BC34
/* 8052BC30  48 00 00 10 */	b lbl_8052BC40
lbl_8052BC34:
/* 8052BC34  4B FF FE D9 */	bl aHN0_schedule_init_proc
/* 8052BC38  48 00 00 08 */	b lbl_8052BC40
lbl_8052BC3C:
/* 8052BC3C  4B FF FF 1D */	bl aHN0_schedule_main_proc
lbl_8052BC40:
/* 8052BC40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052BC44  7C 08 03 A6 */	mtlr r0
/* 8052BC48  38 21 00 10 */	addi r1, r1, 0x10
/* 8052BC4C  4E 80 00 20 */	blr 
