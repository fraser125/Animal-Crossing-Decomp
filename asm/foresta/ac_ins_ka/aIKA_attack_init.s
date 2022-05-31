lbl_8059C77C:
/* 8059C77C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059C780  7C 08 02 A6 */	mflr r0
/* 8059C784  3C 80 80 65 */	lis r4, lit_478@ha /* 0x8064A0D8@ha */
/* 8059C788  7C 65 1B 78 */	mr r5, r3
/* 8059C78C  C0 04 A0 D8 */	lfs f0, lit_478@l(r4)  /* 0x8064A0D8@l */
/* 8059C790  38 60 00 6A */	li r3, 0x6a
/* 8059C794  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059C798  38 85 00 28 */	addi r4, r5, 0x28
/* 8059C79C  D0 05 00 74 */	stfs f0, 0x74(r5)
/* 8059C7A0  D0 05 01 EC */	stfs f0, 0x1ec(r5)
/* 8059C7A4  D0 05 01 E8 */	stfs f0, 0x1e8(r5)
/* 8059C7A8  D0 05 00 6C */	stfs f0, 0x6c(r5)
/* 8059C7AC  48 09 17 FD */	bl sAdo_OngenTrgStart
/* 8059C7B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059C7B4  7C 08 03 A6 */	mtlr r0
/* 8059C7B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8059C7BC  4E 80 00 20 */	blr 
