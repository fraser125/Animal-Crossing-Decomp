lbl_8052377C:
/* 8052377C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80523780  7C 08 02 A6 */	mflr r0
/* 80523784  90 01 00 14 */	stw r0, 0x14(r1)
/* 80523788  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052378C  7C 9F 23 78 */	mr r31, r4
/* 80523790  38 80 00 01 */	li r4, 1
/* 80523794  93 C1 00 08 */	stw r30, 8(r1)
/* 80523798  7C 7E 1B 78 */	mr r30, r3
/* 8052379C  38 60 00 04 */	li r3, 4
/* 805237A0  4B E7 4C DD */	bl mDemo_Get_OrderValue
/* 805237A4  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 805237A8  2C 00 00 02 */	cmpwi r0, 2
/* 805237AC  40 82 00 1C */	bne lbl_805237C8
/* 805237B0  81 9E 09 9C */	lwz r12, 0x99c(r30)
/* 805237B4  7F C3 F3 78 */	mr r3, r30
/* 805237B8  7F E4 FB 78 */	mr r4, r31
/* 805237BC  38 A0 00 06 */	li r5, 6
/* 805237C0  7D 89 03 A6 */	mtctr r12
/* 805237C4  4E 80 04 21 */	bctrl 
lbl_805237C8:
/* 805237C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805237CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805237D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 805237D4  7C 08 03 A6 */	mtlr r0
/* 805237D8  38 21 00 10 */	addi r1, r1, 0x10
/* 805237DC  4E 80 00 20 */	blr 