lbl_8063AA3C:
/* 8063AA3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063AA40  7C 08 02 A6 */	mflr r0
/* 8063AA44  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 8063AA48  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 8063AA4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063AA50  3C C6 00 02 */	addis r6, r6, 2
/* 8063AA54  80 E6 60 8C */	lwz r7, 0x608c(r6)
/* 8063AA58  28 07 00 00 */	cmplwi r7, 0
/* 8063AA5C  41 82 00 1C */	beq lbl_8063AA78
/* 8063AA60  3C C0 80 65 */	lis r6, lit_368@ha /* 0x8064D278@ha */
/* 8063AA64  81 87 00 3C */	lwz r12, 0x3c(r7)
/* 8063AA68  C0 26 D2 78 */	lfs f1, lit_368@l(r6)  /* 0x8064D278@l */
/* 8063AA6C  FC 40 08 90 */	fmr f2, f1
/* 8063AA70  7D 89 03 A6 */	mtctr r12
/* 8063AA74  4E 80 04 21 */	bctrl 
lbl_8063AA78:
/* 8063AA78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063AA7C  7C 08 03 A6 */	mtlr r0
/* 8063AA80  38 21 00 10 */	addi r1, r1, 0x10
/* 8063AA84  4E 80 00 20 */	blr 
