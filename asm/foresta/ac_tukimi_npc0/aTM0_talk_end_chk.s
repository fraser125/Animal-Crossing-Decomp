lbl_8058DDFC:
/* 8058DDFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058DE00  7C 08 02 A6 */	mflr r0
/* 8058DE04  7C 64 1B 78 */	mr r4, r3
/* 8058DE08  38 60 00 07 */	li r3, 7
/* 8058DE0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058DE10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058DE14  3B E0 00 00 */	li r31, 0
/* 8058DE18  4B E0 C4 4D */	bl mDemo_Check
/* 8058DE1C  2C 03 00 00 */	cmpwi r3, 0
/* 8058DE20  40 82 00 08 */	bne lbl_8058DE28
/* 8058DE24  3B E0 00 01 */	li r31, 1
lbl_8058DE28:
/* 8058DE28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058DE2C  7F E3 FB 78 */	mr r3, r31
/* 8058DE30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058DE34  7C 08 03 A6 */	mtlr r0
/* 8058DE38  38 21 00 10 */	addi r1, r1, 0x10
/* 8058DE3C  4E 80 00 20 */	blr 
