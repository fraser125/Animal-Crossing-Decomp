lbl_80592C44:
/* 80592C44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80592C48  7C 08 02 A6 */	mflr r0
/* 80592C4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80592C50  80 03 01 98 */	lwz r0, 0x198(r3)
/* 80592C54  2C 00 00 01 */	cmpwi r0, 1
/* 80592C58  40 82 00 14 */	bne lbl_80592C6C
/* 80592C5C  80 83 01 4C */	lwz r4, 0x14c(r3)
/* 80592C60  38 00 00 01 */	li r0, 1
/* 80592C64  90 04 01 7C */	stw r0, 0x17c(r4)
/* 80592C68  4B DE 17 D9 */	bl Actor_delete
lbl_80592C6C:
/* 80592C6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80592C70  7C 08 03 A6 */	mtlr r0
/* 80592C74  38 21 00 10 */	addi r1, r1, 0x10
/* 80592C78  4E 80 00 20 */	blr 
