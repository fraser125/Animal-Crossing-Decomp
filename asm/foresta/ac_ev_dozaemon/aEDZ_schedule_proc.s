lbl_8051EFE4:
/* 8051EFE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051EFE8  7C 08 02 A6 */	mflr r0
/* 8051EFEC  2C 05 00 01 */	cmpwi r5, 1
/* 8051EFF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051EFF4  41 82 00 1C */	beq lbl_8051F010
/* 8051EFF8  40 80 00 1C */	bge lbl_8051F014
/* 8051EFFC  2C 05 00 00 */	cmpwi r5, 0
/* 8051F000  40 80 00 08 */	bge lbl_8051F008
/* 8051F004  48 00 00 10 */	b lbl_8051F014
lbl_8051F008:
/* 8051F008  4B FF FF 11 */	bl aEDZ_schedule_init_proc
/* 8051F00C  48 00 00 08 */	b lbl_8051F014
lbl_8051F010:
/* 8051F010  4B FF FF 55 */	bl aEDZ_schedule_main_proc
lbl_8051F014:
/* 8051F014  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051F018  7C 08 03 A6 */	mtlr r0
/* 8051F01C  38 21 00 10 */	addi r1, r1, 0x10
/* 8051F020  4E 80 00 20 */	blr 
