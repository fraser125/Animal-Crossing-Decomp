lbl_8046D8F0:
/* 8046D8F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8046D8F4  7C 08 02 A6 */	mflr r0
/* 8046D8F8  3C 80 80 64 */	lis r4, lit_4740@ha /* 0x80644924@ha */
/* 8046D8FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8046D900  C0 04 49 24 */	lfs f0, lit_4740@l(r4)  /* 0x80644924@l */
/* 8046D904  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8046D908  7C 7F 1B 78 */	mr r31, r3
/* 8046D90C  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 8046D910  4B BE F3 E5 */	bl fqrand
/* 8046D914  3C 60 80 64 */	lis r3, lit_4741@ha /* 0x80644928@ha */
/* 8046D918  C0 03 49 28 */	lfs f0, lit_4741@l(r3)  /* 0x80644928@l */
/* 8046D91C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046D920  FC 00 00 1E */	fctiwz f0, f0
/* 8046D924  D8 01 00 08 */	stfd f0, 8(r1)
/* 8046D928  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8046D92C  38 03 00 18 */	addi r0, r3, 0x18
/* 8046D930  B0 1F 00 6E */	sth r0, 0x6e(r31)
/* 8046D934  4B BE F3 C1 */	bl fqrand
/* 8046D938  3C 60 80 64 */	lis r3, lit_4372@ha /* 0x806448F0@ha */
/* 8046D93C  3C 80 80 64 */	lis r4, lit_1719@ha /* 0x80644794@ha */
/* 8046D940  38 A3 48 F0 */	addi r5, r3, lit_4372@l /* 0x806448F0@l */
/* 8046D944  C0 04 47 94 */	lfs f0, lit_1719@l(r4)  /* 0x80644794@l */
/* 8046D948  C0 45 00 00 */	lfs f2, 0(r5)
/* 8046D94C  3C 60 80 47 */	lis r3, okera_normal_process@ha /* 0x8046D984@ha */
/* 8046D950  38 03 D9 84 */	addi r0, r3, okera_normal_process@l /* 0x8046D984@l */
/* 8046D954  EC 22 00 72 */	fmuls f1, f2, f1
/* 8046D958  EC 00 08 2A */	fadds f0, f0, f1
/* 8046D95C  FC 00 00 1E */	fctiwz f0, f0
/* 8046D960  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8046D964  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8046D968  B0 7F 00 74 */	sth r3, 0x74(r31)
/* 8046D96C  90 1F 00 04 */	stw r0, 4(r31)
/* 8046D970  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8046D974  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8046D978  7C 08 03 A6 */	mtlr r0
/* 8046D97C  38 21 00 20 */	addi r1, r1, 0x20
/* 8046D980  4E 80 00 20 */	blr 
