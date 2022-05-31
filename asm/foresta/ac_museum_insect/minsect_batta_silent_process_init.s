lbl_80461B88:
/* 80461B88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80461B8C  7C 08 02 A6 */	mflr r0
/* 80461B90  90 01 00 24 */	stw r0, 0x24(r1)
/* 80461B94  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80461B98  7C 7F 1B 78 */	mr r31, r3
/* 80461B9C  4B BF B1 59 */	bl fqrand
/* 80461BA0  3C 60 80 64 */	lis r3, lit_762@ha /* 0x80644664@ha */
/* 80461BA4  C0 03 46 64 */	lfs f0, lit_762@l(r3)  /* 0x80644664@l */
/* 80461BA8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80461BAC  FC 00 00 1E */	fctiwz f0, f0
/* 80461BB0  D8 01 00 08 */	stfd f0, 8(r1)
/* 80461BB4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80461BB8  38 03 00 78 */	addi r0, r3, 0x78
/* 80461BBC  7C 00 07 34 */	extsh r0, r0
/* 80461BC0  1C 00 00 05 */	mulli r0, r0, 5
/* 80461BC4  B0 1F 00 6E */	sth r0, 0x6e(r31)
/* 80461BC8  A8 1F 00 8E */	lha r0, 0x8e(r31)
/* 80461BCC  2C 00 00 00 */	cmpwi r0, 0
/* 80461BD0  40 82 00 30 */	bne lbl_80461C00
/* 80461BD4  4B BF B1 21 */	bl fqrand
/* 80461BD8  3C 60 80 64 */	lis r3, lit_762@ha /* 0x80644664@ha */
/* 80461BDC  C0 03 46 64 */	lfs f0, lit_762@l(r3)  /* 0x80644664@l */
/* 80461BE0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80461BE4  FC 00 00 1E */	fctiwz f0, f0
/* 80461BE8  D8 01 00 08 */	stfd f0, 8(r1)
/* 80461BEC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80461BF0  38 03 00 78 */	addi r0, r3, 0x78
/* 80461BF4  7C 00 07 34 */	extsh r0, r0
/* 80461BF8  54 00 08 3C */	slwi r0, r0, 1
/* 80461BFC  B0 1F 00 6E */	sth r0, 0x6e(r31)
lbl_80461C00:
/* 80461C00  3C 60 80 46 */	lis r3, minsect_batta_silent_process@ha /* 0x80461C20@ha */
/* 80461C04  38 03 1C 20 */	addi r0, r3, minsect_batta_silent_process@l /* 0x80461C20@l */
/* 80461C08  90 1F 00 04 */	stw r0, 4(r31)
/* 80461C0C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80461C10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80461C14  7C 08 03 A6 */	mtlr r0
/* 80461C18  38 21 00 20 */	addi r1, r1, 0x20
/* 80461C1C  4E 80 00 20 */	blr 
