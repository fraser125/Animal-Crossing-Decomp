lbl_80620FE8:
/* 80620FE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80620FEC  7C 08 02 A6 */	mflr r0
/* 80620FF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80620FF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80620FF8  7C 7F 1B 78 */	mr r31, r3
/* 80620FFC  A8 03 00 00 */	lha r0, 0(r3)
/* 80621000  20 00 00 1E */	subfic r0, r0, 0x1e
/* 80621004  7C 03 07 34 */	extsh r3, r0
/* 80621008  2C 03 00 0A */	cmpwi r3, 0xa
/* 8062100C  40 80 00 48 */	bge lbl_80621054
/* 80621010  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80621014  3C C0 80 65 */	lis r6, lit_405@ha /* 0x8064CD74@ha */
/* 80621018  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8062101C  3C A0 80 65 */	lis r5, lit_414@ha /* 0x8064CD78@ha */
/* 80621020  3C 84 00 02 */	addis r4, r4, 2
/* 80621024  C0 45 CD 78 */	lfs f2, lit_414@l(r5)  /* 0x8064CD78@l */
/* 80621028  80 84 60 9C */	lwz r4, 0x609c(r4)
/* 8062102C  38 A0 00 0A */	li r5, 0xa
/* 80621030  C0 26 CD 74 */	lfs f1, lit_405@l(r6)  /* 0x8064CD74@l */
/* 80621034  81 84 00 14 */	lwz r12, 0x14(r4)
/* 80621038  38 80 00 00 */	li r4, 0
/* 8062103C  7D 89 03 A6 */	mtctr r12
/* 80621040  4E 80 04 21 */	bctrl 
/* 80621044  D0 3F 00 34 */	stfs f1, 0x34(r31)
/* 80621048  D0 3F 00 38 */	stfs f1, 0x38(r31)
/* 8062104C  D0 3F 00 3C */	stfs f1, 0x3c(r31)
/* 80621050  48 00 00 44 */	b lbl_80621094
lbl_80621054:
/* 80621054  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80621058  3C C0 80 65 */	lis r6, lit_414@ha /* 0x8064CD78@ha */
/* 8062105C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80621060  3C A0 80 65 */	lis r5, lit_405@ha /* 0x8064CD74@ha */
/* 80621064  3C 84 00 02 */	addis r4, r4, 2
/* 80621068  C0 45 CD 74 */	lfs f2, lit_405@l(r5)  /* 0x8064CD74@l */
/* 8062106C  80 84 60 9C */	lwz r4, 0x609c(r4)
/* 80621070  38 A0 00 1D */	li r5, 0x1d
/* 80621074  C0 26 CD 78 */	lfs f1, lit_414@l(r6)  /* 0x8064CD78@l */
/* 80621078  81 84 00 14 */	lwz r12, 0x14(r4)
/* 8062107C  38 80 00 0B */	li r4, 0xb
/* 80621080  7D 89 03 A6 */	mtctr r12
/* 80621084  4E 80 04 21 */	bctrl 
/* 80621088  D0 3F 00 34 */	stfs f1, 0x34(r31)
/* 8062108C  D0 3F 00 38 */	stfs f1, 0x38(r31)
/* 80621090  D0 3F 00 3C */	stfs f1, 0x3c(r31)
lbl_80621094:
/* 80621094  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80621098  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062109C  7C 08 03 A6 */	mtlr r0
/* 806210A0  38 21 00 10 */	addi r1, r1, 0x10
/* 806210A4  4E 80 00 20 */	blr 