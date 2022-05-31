lbl_8051A168:
/* 8051A168  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051A16C  7C 08 02 A6 */	mflr r0
/* 8051A170  38 80 00 00 */	li r4, 0
/* 8051A174  38 A0 04 00 */	li r5, 0x400
/* 8051A178  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051A17C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051A180  3B E0 00 05 */	li r31, 5
/* 8051A184  93 C1 00 08 */	stw r30, 8(r1)
/* 8051A188  7C 7E 1B 78 */	mr r30, r3
/* 8051A18C  38 7E 00 DE */	addi r3, r30, 0xde
/* 8051A190  4B EA 09 B5 */	bl chase_angle
/* 8051A194  2C 03 00 00 */	cmpwi r3, 0
/* 8051A198  40 82 00 08 */	bne lbl_8051A1A0
/* 8051A19C  3B E0 00 01 */	li r31, 1
lbl_8051A1A0:
/* 8051A1A0  A8 1E 00 DE */	lha r0, 0xde(r30)
/* 8051A1A4  B0 1E 00 36 */	sth r0, 0x36(r30)
/* 8051A1A8  80 1E 07 14 */	lwz r0, 0x714(r30)
/* 8051A1AC  7C 00 F8 00 */	cmpw r0, r31
/* 8051A1B0  41 82 00 2C */	beq lbl_8051A1DC
/* 8051A1B4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8051A1B8  7F C3 F3 78 */	mr r3, r30
/* 8051A1BC  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8051A1C0  7F E4 FB 78 */	mr r4, r31
/* 8051A1C4  3C C5 00 02 */	addis r6, r5, 2
/* 8051A1C8  38 A0 00 00 */	li r5, 0
/* 8051A1CC  80 C6 60 4C */	lwz r6, 0x604c(r6)
/* 8051A1D0  81 86 01 14 */	lwz r12, 0x114(r6)
/* 8051A1D4  7D 89 03 A6 */	mtctr r12
/* 8051A1D8  4E 80 04 21 */	bctrl 
lbl_8051A1DC:
/* 8051A1DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051A1E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051A1E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8051A1E8  7C 08 03 A6 */	mtlr r0
/* 8051A1EC  38 21 00 10 */	addi r1, r1, 0x10
/* 8051A1F0  4E 80 00 20 */	blr 
