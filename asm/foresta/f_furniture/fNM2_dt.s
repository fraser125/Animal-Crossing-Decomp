lbl_8063375C:
/* 8063375C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80633760  7C 08 02 A6 */	mflr r0
/* 80633764  90 01 00 14 */	stw r0, 0x14(r1)
/* 80633768  80 63 08 50 */	lwz r3, 0x850(r3)
/* 8063376C  28 03 00 00 */	cmplwi r3, 0
/* 80633770  41 82 00 08 */	beq lbl_80633778
/* 80633774  4B D8 8D 41 */	bl zelda_free
lbl_80633778:
/* 80633778  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063377C  7C 08 03 A6 */	mtlr r0
/* 80633780  38 21 00 10 */	addi r1, r1, 0x10
/* 80633784  4E 80 00 20 */	blr 
