lbl_8045EFC8:
/* 8045EFC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045EFCC  7C 08 02 A6 */	mflr r0
/* 8045EFD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045EFD4  A8 03 00 74 */	lha r0, 0x74(r3)
/* 8045EFD8  2C 00 00 06 */	cmpwi r0, 6
/* 8045EFDC  41 80 00 18 */	blt lbl_8045EFF4
/* 8045EFE0  38 00 00 01 */	li r0, 1
/* 8045EFE4  B0 03 00 7A */	sth r0, 0x7a(r3)
/* 8045EFE8  48 00 1A C1 */	bl minsect_tonbo_fly_process_init
/* 8045EFEC  38 60 00 01 */	li r3, 1
/* 8045EFF0  48 00 00 08 */	b lbl_8045EFF8
lbl_8045EFF4:
/* 8045EFF4  38 60 00 00 */	li r3, 0
lbl_8045EFF8:
/* 8045EFF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045EFFC  7C 08 03 A6 */	mtlr r0
/* 8045F000  38 21 00 10 */	addi r1, r1, 0x10
/* 8045F004  4E 80 00 20 */	blr 
