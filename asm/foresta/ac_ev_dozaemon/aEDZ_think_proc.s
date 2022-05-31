lbl_8051EED8:
/* 8051EED8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051EEDC  7C 08 02 A6 */	mflr r0
/* 8051EEE0  2C 05 00 01 */	cmpwi r5, 1
/* 8051EEE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051EEE8  41 82 00 1C */	beq lbl_8051EF04
/* 8051EEEC  40 80 00 1C */	bge lbl_8051EF08
/* 8051EEF0  2C 05 00 00 */	cmpwi r5, 0
/* 8051EEF4  40 80 00 08 */	bge lbl_8051EEFC
/* 8051EEF8  48 00 00 10 */	b lbl_8051EF08
lbl_8051EEFC:
/* 8051EEFC  4B FF FD 6D */	bl aEDZ_think_init_proc
/* 8051EF00  48 00 00 08 */	b lbl_8051EF08
lbl_8051EF04:
/* 8051EF04  4B FF FD 3D */	bl aEDZ_think_main_proc
lbl_8051EF08:
/* 8051EF08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051EF0C  7C 08 03 A6 */	mtlr r0
/* 8051EF10  38 21 00 10 */	addi r1, r1, 0x10
/* 8051EF14  4E 80 00 20 */	blr 
