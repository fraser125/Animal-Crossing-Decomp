lbl_8063E454:
/* 8063E454  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8063E458  7C 08 02 A6 */	mflr r0
/* 8063E45C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8063E460  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8063E464  7C 7F 1B 78 */	mr r31, r3
/* 8063E468  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8063E46C  7C BE 2B 78 */	mr r30, r5
/* 8063E470  A8 03 00 3C */	lha r0, 0x3c(r3)
/* 8063E474  2C 00 00 0D */	cmpwi r0, 0xd
/* 8063E478  41 82 01 14 */	beq lbl_8063E58C
/* 8063E47C  2C 00 00 0E */	cmpwi r0, 0xe
/* 8063E480  41 82 01 0C */	beq lbl_8063E58C
/* 8063E484  2C 00 00 0F */	cmpwi r0, 0xf
/* 8063E488  41 82 01 04 */	beq lbl_8063E58C
/* 8063E48C  2C 00 00 0C */	cmpwi r0, 0xc
/* 8063E490  41 82 00 FC */	beq lbl_8063E58C
/* 8063E494  88 1F 01 2D */	lbz r0, 0x12d(r31)
/* 8063E498  28 00 00 01 */	cmplwi r0, 1
/* 8063E49C  40 82 00 F0 */	bne lbl_8063E58C
/* 8063E4A0  4B E3 58 E5 */	bl aMR_GetContactInfoLayer1
/* 8063E4A4  80 03 00 28 */	lwz r0, 0x28(r3)
/* 8063E4A8  2C 00 00 01 */	cmpwi r0, 1
/* 8063E4AC  41 82 00 E0 */	beq lbl_8063E58C
/* 8063E4B0  40 80 00 10 */	bge lbl_8063E4C0
/* 8063E4B4  2C 00 00 00 */	cmpwi r0, 0
/* 8063E4B8  40 80 00 14 */	bge lbl_8063E4CC
/* 8063E4BC  48 00 00 D0 */	b lbl_8063E58C
lbl_8063E4C0:
/* 8063E4C0  2C 00 00 03 */	cmpwi r0, 3
/* 8063E4C4  40 80 00 C8 */	bge lbl_8063E58C
/* 8063E4C8  48 00 00 60 */	b lbl_8063E528
lbl_8063E4CC:
/* 8063E4CC  80 9F 00 08 */	lwz r4, 8(r31)
/* 8063E4D0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8063E4D4  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8063E4D8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8063E4DC  3C 63 00 02 */	addis r3, r3, 2
/* 8063E4E0  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 8063E4E4  90 81 00 14 */	stw r4, 0x14(r1)
/* 8063E4E8  7F C7 F3 78 */	mr r7, r30
/* 8063E4EC  80 C3 60 9C */	lwz r6, 0x609c(r3)
/* 8063E4F0  38 81 00 14 */	addi r4, r1, 0x14
/* 8063E4F4  90 01 00 18 */	stw r0, 0x18(r1)
/* 8063E4F8  39 05 FF FF */	addi r8, r5, 0xFFFF /* 0x0000FFFF@l */
/* 8063E4FC  38 60 00 7A */	li r3, 0x7a
/* 8063E500  38 A0 00 02 */	li r5, 2
/* 8063E504  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 8063E508  39 20 00 00 */	li r9, 0
/* 8063E50C  39 40 00 00 */	li r10, 0
/* 8063E510  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8063E514  81 86 00 00 */	lwz r12, 0(r6)
/* 8063E518  A8 DF 01 24 */	lha r6, 0x124(r31)
/* 8063E51C  7D 89 03 A6 */	mtctr r12
/* 8063E520  4E 80 04 21 */	bctrl 
/* 8063E524  48 00 00 68 */	b lbl_8063E58C
lbl_8063E528:
/* 8063E528  80 9F 00 08 */	lwz r4, 8(r31)
/* 8063E52C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8063E530  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8063E534  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8063E538  3C 63 00 02 */	addis r3, r3, 2
/* 8063E53C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 8063E540  90 81 00 08 */	stw r4, 8(r1)
/* 8063E544  7F C7 F3 78 */	mr r7, r30
/* 8063E548  80 C3 60 9C */	lwz r6, 0x609c(r3)
/* 8063E54C  38 81 00 08 */	addi r4, r1, 8
/* 8063E550  90 01 00 0C */	stw r0, 0xc(r1)
/* 8063E554  39 05 FF FF */	addi r8, r5, 0xFFFF /* 0x0000FFFF@l */
/* 8063E558  38 60 00 7A */	li r3, 0x7a
/* 8063E55C  38 A0 00 02 */	li r5, 2
/* 8063E560  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 8063E564  39 20 00 00 */	li r9, 0
/* 8063E568  39 40 00 00 */	li r10, 0
/* 8063E56C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8063E570  A9 7F 01 24 */	lha r11, 0x124(r31)
/* 8063E574  81 86 00 00 */	lwz r12, 0(r6)
/* 8063E578  3C CB 00 01 */	addis r6, r11, 1
/* 8063E57C  38 06 80 00 */	addi r0, r6, -32768
/* 8063E580  7C 06 07 34 */	extsh r6, r0
/* 8063E584  7D 89 03 A6 */	mtctr r12
/* 8063E588  4E 80 04 21 */	bctrl 
lbl_8063E58C:
/* 8063E58C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8063E590  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8063E594  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8063E598  7C 08 03 A6 */	mtlr r0
/* 8063E59C  38 21 00 30 */	addi r1, r1, 0x30
/* 8063E5A0  4E 80 00 20 */	blr 
