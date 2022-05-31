lbl_804E1B5C:
/* 804E1B5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E1B60  7C 08 02 A6 */	mflr r0
/* 804E1B64  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E1B68  38 00 00 00 */	li r0, 0
/* 804E1B6C  80 A3 0C F8 */	lwz r5, 0xcf8(r3)
/* 804E1B70  2C 05 00 00 */	cmpwi r5, 0
/* 804E1B74  41 80 00 10 */	blt lbl_804E1B84
/* 804E1B78  2C 05 00 79 */	cmpwi r5, 0x79
/* 804E1B7C  40 80 00 08 */	bge lbl_804E1B84
/* 804E1B80  38 00 00 01 */	li r0, 1
lbl_804E1B84:
/* 804E1B84  2C 00 00 00 */	cmpwi r0, 0
/* 804E1B88  41 82 00 28 */	beq lbl_804E1BB0
/* 804E1B8C  3C 80 80 64 */	lis r4, proc_6261@ha /* 0x80647E64@ha */
/* 804E1B90  54 A0 10 3A */	slwi r0, r5, 2
/* 804E1B94  38 84 7E 64 */	addi r4, r4, proc_6261@l /* 0x80647E64@l */
/* 804E1B98  7D 84 00 2E */	lwzx r12, r4, r0
/* 804E1B9C  28 0C 00 00 */	cmplwi r12, 0
/* 804E1BA0  40 82 00 08 */	bne lbl_804E1BA8
/* 804E1BA4  48 00 00 0C */	b lbl_804E1BB0
lbl_804E1BA8:
/* 804E1BA8  7D 89 03 A6 */	mtctr r12
/* 804E1BAC  4E 80 04 21 */	bctrl 
lbl_804E1BB0:
/* 804E1BB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E1BB4  7C 08 03 A6 */	mtlr r0
/* 804E1BB8  38 21 00 10 */	addi r1, r1, 0x10
/* 804E1BBC  4E 80 00 20 */	blr 
