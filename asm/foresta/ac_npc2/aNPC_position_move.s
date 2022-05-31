lbl_8053DC04:
/* 8053DC04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053DC08  7C 08 02 A6 */	mflr r0
/* 8053DC0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053DC10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053DC14  7C 7F 1B 78 */	mr r31, r3
/* 8053DC18  C0 03 00 74 */	lfs f0, 0x74(r3)
/* 8053DC1C  C0 23 08 F8 */	lfs f1, 0x8f8(r3)
/* 8053DC20  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8053DC24  40 80 00 0C */	bge lbl_8053DC30
/* 8053DC28  C0 5F 08 FC */	lfs f2, 0x8fc(r31)
/* 8053DC2C  48 00 00 08 */	b lbl_8053DC34
lbl_8053DC30:
/* 8053DC30  C0 5F 09 00 */	lfs f2, 0x900(r31)
lbl_8053DC34:
/* 8053DC34  3C 60 80 65 */	lis r3, lit_795@ha /* 0x80649378@ha */
/* 8053DC38  38 83 93 78 */	addi r4, r3, lit_795@l /* 0x80649378@l */
/* 8053DC3C  C0 04 00 00 */	lfs f0, 0(r4)
/* 8053DC40  38 7F 00 74 */	addi r3, r31, 0x74
/* 8053DC44  EC 40 00 B2 */	fmuls f2, f0, f2
/* 8053DC48  4B E7 D0 21 */	bl chase_f
/* 8053DC4C  7F E3 FB 78 */	mr r3, r31
/* 8053DC50  4B E3 66 C5 */	bl Actor_position_moveF
/* 8053DC54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053DC58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053DC5C  7C 08 03 A6 */	mtlr r0
/* 8053DC60  38 21 00 10 */	addi r1, r1, 0x10
/* 8053DC64  4E 80 00 20 */	blr 
