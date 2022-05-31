lbl_8056EA38:
/* 8056EA38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056EA3C  7C 08 02 A6 */	mflr r0
/* 8056EA40  3C 80 80 65 */	lis r4, lit_754@ha /* 0x806498B8@ha */
/* 8056EA44  7C 65 1B 78 */	mr r5, r3
/* 8056EA48  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056EA4C  38 00 01 83 */	li r0, 0x183
/* 8056EA50  C0 44 98 B8 */	lfs f2, lit_754@l(r4)  /* 0x806498B8@l */
/* 8056EA54  90 03 08 40 */	stw r0, 0x840(r3)
/* 8056EA58  3C 60 80 65 */	lis r3, lit_755@ha /* 0x806498BC@ha */
/* 8056EA5C  38 83 98 BC */	addi r4, r3, lit_755@l /* 0x806498BC@l */
/* 8056EA60  D0 45 08 F8 */	stfs f2, 0x8f8(r5)
/* 8056EA64  3C 60 80 65 */	lis r3, lit_756@ha /* 0x806498C0@ha */
/* 8056EA68  C0 24 00 00 */	lfs f1, 0(r4)
/* 8056EA6C  38 85 00 28 */	addi r4, r5, 0x28
/* 8056EA70  D0 45 08 FC */	stfs f2, 0x8fc(r5)
/* 8056EA74  C0 03 98 C0 */	lfs f0, lit_756@l(r3)  /* 0x806498C0@l */
/* 8056EA78  38 60 01 2B */	li r3, 0x12b
/* 8056EA7C  D0 45 09 00 */	stfs f2, 0x900(r5)
/* 8056EA80  D0 25 00 7C */	stfs f1, 0x7c(r5)
/* 8056EA84  D0 05 00 78 */	stfs f0, 0x78(r5)
/* 8056EA88  48 0B F5 21 */	bl sAdo_OngenTrgStart
/* 8056EA8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056EA90  7C 08 03 A6 */	mtlr r0
/* 8056EA94  38 21 00 10 */	addi r1, r1, 0x10
/* 8056EA98  4E 80 00 20 */	blr 
