lbl_8046CB40:
/* 8046CB40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8046CB44  7C 08 02 A6 */	mflr r0
/* 8046CB48  90 01 00 24 */	stw r0, 0x24(r1)
/* 8046CB4C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8046CB50  7C 7F 1B 78 */	mr r31, r3
/* 8046CB54  4B BF 01 A1 */	bl fqrand
/* 8046CB58  3C 60 80 64 */	lis r3, lit_1140@ha /* 0x80644720@ha */
/* 8046CB5C  C0 03 47 20 */	lfs f0, lit_1140@l(r3)  /* 0x80644720@l */
/* 8046CB60  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046CB64  FC 00 00 1E */	fctiwz f0, f0
/* 8046CB68  D8 01 00 08 */	stfd f0, 8(r1)
/* 8046CB6C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8046CB70  38 03 00 28 */	addi r0, r3, 0x28
/* 8046CB74  B0 1F 00 6E */	sth r0, 0x6e(r31)
/* 8046CB78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8046CB7C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8046CB80  7C 08 03 A6 */	mtlr r0
/* 8046CB84  38 21 00 20 */	addi r1, r1, 0x20
/* 8046CB88  4E 80 00 20 */	blr 
