lbl_80557A34:
/* 80557A34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80557A38  7C 08 02 A6 */	mflr r0
/* 80557A3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80557A40  80 03 01 98 */	lwz r0, 0x198(r3)
/* 80557A44  2C 00 00 01 */	cmpwi r0, 1
/* 80557A48  40 82 00 08 */	bne lbl_80557A50
/* 80557A4C  4B E1 C9 F5 */	bl Actor_delete
lbl_80557A50:
/* 80557A50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80557A54  7C 08 03 A6 */	mtlr r0
/* 80557A58  38 21 00 10 */	addi r1, r1, 0x10
/* 80557A5C  4E 80 00 20 */	blr 
