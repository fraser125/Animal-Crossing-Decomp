lbl_8056A300:
/* 8056A300  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056A304  7C 08 02 A6 */	mflr r0
/* 8056A308  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056A30C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8056A310  7C 7F 1B 78 */	mr r31, r3
/* 8056A314  4B AF 29 E1 */	bl fqrand
/* 8056A318  3C 60 80 65 */	lis r3, lit_511@ha /* 0x80649830@ha */
/* 8056A31C  3C 80 80 6C */	lis r4, anm_loop@ha /* 0x806BE7A4@ha */
/* 8056A320  38 A3 98 30 */	addi r5, r3, lit_511@l /* 0x80649830@l */
/* 8056A324  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8056A328  C0 05 00 00 */	lfs f0, 0(r5)
/* 8056A32C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8056A330  3C A0 80 6C */	lis r5, animeSeqNo_508@ha /* 0x806BE798@ha */
/* 8056A334  39 24 E7 A4 */	addi r9, r4, anm_loop@l /* 0x806BE7A4@l */
/* 8056A338  EC 00 00 72 */	fmuls f0, f0, f1
/* 8056A33C  39 00 00 00 */	li r8, 0
/* 8056A340  38 C0 01 00 */	li r6, 0x100
/* 8056A344  3C 83 00 02 */	addis r4, r3, 2
/* 8056A348  38 E5 E7 98 */	addi r7, r5, animeSeqNo_508@l /* 0x806BE798@l */
/* 8056A34C  7F E3 FB 78 */	mr r3, r31
/* 8056A350  FC 00 00 1E */	fctiwz f0, f0
/* 8056A354  38 A0 00 00 */	li r5, 0
/* 8056A358  D8 01 00 08 */	stfd f0, 8(r1)
/* 8056A35C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8056A360  7D 29 00 AE */	lbzx r9, r9, r0
/* 8056A364  54 00 10 3A */	slwi r0, r0, 2
/* 8056A368  99 3F 07 53 */	stb r9, 0x753(r31)
/* 8056A36C  99 1F 07 F6 */	stb r8, 0x7f6(r31)
/* 8056A370  90 DF 08 40 */	stw r6, 0x840(r31)
/* 8056A374  80 C4 60 4C */	lwz r6, 0x604c(r4)
/* 8056A378  7C 87 00 2E */	lwzx r4, r7, r0
/* 8056A37C  81 86 01 14 */	lwz r12, 0x114(r6)
/* 8056A380  7D 89 03 A6 */	mtctr r12
/* 8056A384  4E 80 04 21 */	bctrl 
/* 8056A388  3C 60 80 65 */	lis r3, lit_512@ha /* 0x80649834@ha */
/* 8056A38C  C0 03 98 34 */	lfs f0, lit_512@l(r3)  /* 0x80649834@l */
/* 8056A390  D0 1F 01 C8 */	stfs f0, 0x1c8(r31)
/* 8056A394  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056A398  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8056A39C  7C 08 03 A6 */	mtlr r0
/* 8056A3A0  38 21 00 20 */	addi r1, r1, 0x20
/* 8056A3A4  4E 80 00 20 */	blr 
