lbl_8047EC90:
/* 8047EC90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8047EC94  7C 08 02 A6 */	mflr r0
/* 8047EC98  3C E0 81 14 */	lis r7, common_data@ha /* 0x81138538@ha */
/* 8047EC9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8047ECA0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8047ECA4  7C DF 33 78 */	mr r31, r6
/* 8047ECA8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8047ECAC  7C 9E 23 78 */	mr r30, r4
/* 8047ECB0  38 87 85 38 */	addi r4, r7, common_data@l /* 0x81138538@l */
/* 8047ECB4  3C 84 00 02 */	addis r4, r4, 2
/* 8047ECB8  81 64 60 9C */	lwz r11, 0x609c(r4)
/* 8047ECBC  28 0B 00 00 */	cmplwi r11, 0
/* 8047ECC0  41 82 00 4C */	beq lbl_8047ED0C
/* 8047ECC4  81 23 00 28 */	lwz r9, 0x28(r3)
/* 8047ECC8  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8047ECCC  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 8047ECD0  7C A7 2B 78 */	mr r7, r5
/* 8047ECD4  38 81 00 08 */	addi r4, r1, 8
/* 8047ECD8  39 06 FF FF */	addi r8, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8047ECDC  91 21 00 08 */	stw r9, 8(r1)
/* 8047ECE0  38 A0 00 02 */	li r5, 2
/* 8047ECE4  38 C0 00 00 */	li r6, 0
/* 8047ECE8  39 20 00 00 */	li r9, 0
/* 8047ECEC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8047ECF0  39 40 00 00 */	li r10, 0
/* 8047ECF4  80 03 00 30 */	lwz r0, 0x30(r3)
/* 8047ECF8  38 60 00 2E */	li r3, 0x2e
/* 8047ECFC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8047ED00  81 8B 00 00 */	lwz r12, 0(r11)
/* 8047ED04  7D 89 03 A6 */	mtctr r12
/* 8047ED08  4E 80 04 21 */	bctrl 
lbl_8047ED0C:
/* 8047ED0C  38 00 00 00 */	li r0, 0
/* 8047ED10  28 1F 00 00 */	cmplwi r31, 0
/* 8047ED14  B0 1E 04 00 */	sth r0, 0x400(r30)
/* 8047ED18  B0 1E 04 02 */	sth r0, 0x402(r30)
/* 8047ED1C  41 82 00 0C */	beq lbl_8047ED28
/* 8047ED20  38 00 00 01 */	li r0, 1
/* 8047ED24  B0 1F 00 00 */	sth r0, 0(r31)
lbl_8047ED28:
/* 8047ED28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8047ED2C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8047ED30  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8047ED34  7C 08 03 A6 */	mtlr r0
/* 8047ED38  38 21 00 20 */	addi r1, r1, 0x20
/* 8047ED3C  4E 80 00 20 */	blr 
