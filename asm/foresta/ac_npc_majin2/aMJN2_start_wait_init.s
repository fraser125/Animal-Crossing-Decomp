lbl_80557B9C:
/* 80557B9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80557BA0  7C 08 02 A6 */	mflr r0
/* 80557BA4  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80557BA8  7C 87 23 78 */	mr r7, r4
/* 80557BAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80557BB0  38 00 00 00 */	li r0, 0
/* 80557BB4  39 05 FF FF */	addi r8, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80557BB8  7C 6B 1B 78 */	mr r11, r3
/* 80557BBC  98 03 08 31 */	stb r0, 0x831(r3)
/* 80557BC0  38 00 00 4E */	li r0, 0x4e
/* 80557BC4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80557BC8  38 81 00 08 */	addi r4, r1, 8
/* 80557BCC  B0 0B 09 76 */	sth r0, 0x976(r11)
/* 80557BD0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80557BD4  3C C3 00 02 */	addis r6, r3, 2
/* 80557BD8  38 A0 00 03 */	li r5, 3
/* 80557BDC  B0 0B 09 74 */	sth r0, 0x974(r11)
/* 80557BE0  38 60 00 5D */	li r3, 0x5d
/* 80557BE4  39 20 00 01 */	li r9, 1
/* 80557BE8  81 4B 00 28 */	lwz r10, 0x28(r11)
/* 80557BEC  80 0B 00 2C */	lwz r0, 0x2c(r11)
/* 80557BF0  80 C6 60 9C */	lwz r6, 0x609c(r6)
/* 80557BF4  91 41 00 08 */	stw r10, 8(r1)
/* 80557BF8  39 40 00 00 */	li r10, 0
/* 80557BFC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80557C00  80 0B 00 30 */	lwz r0, 0x30(r11)
/* 80557C04  90 01 00 10 */	stw r0, 0x10(r1)
/* 80557C08  81 86 00 00 */	lwz r12, 0(r6)
/* 80557C0C  A8 CB 00 DE */	lha r6, 0xde(r11)
/* 80557C10  7D 89 03 A6 */	mtctr r12
/* 80557C14  4E 80 04 21 */	bctrl 
/* 80557C18  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80557C1C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80557C20  3C 63 00 02 */	addis r3, r3, 2
/* 80557C24  80 63 60 B0 */	lwz r3, 0x60b0(r3)
/* 80557C28  28 03 00 00 */	cmplwi r3, 0
/* 80557C2C  41 82 00 24 */	beq lbl_80557C50
/* 80557C30  80 03 00 04 */	lwz r0, 4(r3)
/* 80557C34  2C 00 00 05 */	cmpwi r0, 5
/* 80557C38  40 82 00 18 */	bne lbl_80557C50
/* 80557C3C  80 63 00 00 */	lwz r3, 0(r3)
/* 80557C40  28 03 00 00 */	cmplwi r3, 0
/* 80557C44  41 82 00 0C */	beq lbl_80557C50
/* 80557C48  38 00 00 01 */	li r0, 1
/* 80557C4C  B0 03 01 7C */	sth r0, 0x17c(r3)
lbl_80557C50:
/* 80557C50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80557C54  7C 08 03 A6 */	mtlr r0
/* 80557C58  38 21 00 20 */	addi r1, r1, 0x20
/* 80557C5C  4E 80 00 20 */	blr 