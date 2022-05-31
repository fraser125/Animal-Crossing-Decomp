lbl_8047EFC8:
/* 8047EFC8  88 04 00 28 */	lbz r0, 0x28(r4)
/* 8047EFCC  28 00 00 05 */	cmplwi r0, 5
/* 8047EFD0  40 82 00 0C */	bne lbl_8047EFDC
/* 8047EFD4  38 60 00 01 */	li r3, 1
/* 8047EFD8  4E 80 00 20 */	blr 
lbl_8047EFDC:
/* 8047EFDC  28 00 00 03 */	cmplwi r0, 3
/* 8047EFE0  41 81 00 20 */	bgt lbl_8047F000
/* 8047EFE4  80 03 00 28 */	lwz r0, 0x28(r3)
/* 8047EFE8  2C 00 00 02 */	cmpwi r0, 2
/* 8047EFEC  41 82 00 0C */	beq lbl_8047EFF8
/* 8047EFF0  2C 00 00 00 */	cmpwi r0, 0
/* 8047EFF4  40 82 00 0C */	bne lbl_8047F000
lbl_8047EFF8:
/* 8047EFF8  38 60 00 01 */	li r3, 1
/* 8047EFFC  4E 80 00 20 */	blr 
lbl_8047F000:
/* 8047F000  38 60 00 00 */	li r3, 0
/* 8047F004  4E 80 00 20 */	blr 
