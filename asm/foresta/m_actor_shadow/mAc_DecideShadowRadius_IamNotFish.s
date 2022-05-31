lbl_80376C14:
/* 80376C14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80376C18  7C 08 02 A6 */	mflr r0
/* 80376C1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80376C20  7C 60 1B 78 */	mr r0, r3
/* 80376C24  7C 83 23 78 */	mr r3, r4
/* 80376C28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80376C2C  7C BF 2B 78 */	mr r31, r5
/* 80376C30  7C 04 03 78 */	mr r4, r0
/* 80376C34  4B FF F9 11 */	bl mActorShadow_RadiusScaleRate
/* 80376C38  3C 60 80 64 */	lis r3, lit_609@ha /* 0x80641298@ha */
/* 80376C3C  C0 03 12 98 */	lfs f0, lit_609@l(r3)  /* 0x80641298@l */
/* 80376C40  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80376C44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80376C48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80376C4C  7C 08 03 A6 */	mtlr r0
/* 80376C50  38 21 00 10 */	addi r1, r1, 0x10
/* 80376C54  4E 80 00 20 */	blr 
