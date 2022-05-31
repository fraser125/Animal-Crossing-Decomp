lbl_8062CC54:
/* 8062CC54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062CC58  7C 08 02 A6 */	mflr r0
/* 8062CC5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062CC60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062CC64  7C 7F 1B 78 */	mr r31, r3
/* 8062CC68  80 03 02 08 */	lwz r0, 0x208(r3)
/* 8062CC6C  2C 00 00 00 */	cmpwi r0, 0
/* 8062CC70  41 80 00 24 */	blt lbl_8062CC94
/* 8062CC74  2C 00 00 04 */	cmpwi r0, 4
/* 8062CC78  40 80 00 1C */	bge lbl_8062CC94
/* 8062CC7C  3C 80 80 6D */	lis r4, sub_proc@ha /* 0x806D4A88@ha */
/* 8062CC80  54 00 10 3A */	slwi r0, r0, 2
/* 8062CC84  38 84 4A 88 */	addi r4, r4, sub_proc@l /* 0x806D4A88@l */
/* 8062CC88  7D 84 00 2E */	lwzx r12, r4, r0
/* 8062CC8C  7D 89 03 A6 */	mtctr r12
/* 8062CC90  4E 80 04 21 */	bctrl 
lbl_8062CC94:
/* 8062CC94  7F E3 FB 78 */	mr r3, r31
/* 8062CC98  4B FF FC DD */	bl func_8062C974
/* 8062CC9C  80 7F 02 00 */	lwz r3, 0x200(r31)
/* 8062CCA0  38 03 00 01 */	addi r0, r3, 1
/* 8062CCA4  90 1F 02 00 */	stw r0, 0x200(r31)
/* 8062CCA8  80 1F 02 00 */	lwz r0, 0x200(r31)
/* 8062CCAC  28 00 00 28 */	cmplwi r0, 0x28
/* 8062CCB0  40 82 00 0C */	bne lbl_8062CCBC
/* 8062CCB4  38 00 00 00 */	li r0, 0
/* 8062CCB8  90 1F 02 00 */	stw r0, 0x200(r31)
lbl_8062CCBC:
/* 8062CCBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062CCC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062CCC4  7C 08 03 A6 */	mtlr r0
/* 8062CCC8  38 21 00 10 */	addi r1, r1, 0x10
/* 8062CCCC  4E 80 00 20 */	blr 
