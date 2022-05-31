lbl_8056C218:
/* 8056C218  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056C21C  7C 08 02 A6 */	mflr r0
/* 8056C220  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056C224  39 61 00 20 */	addi r11, r1, 0x20
/* 8056C228  4B B2 EC AD */	bl func_8009AED4
/* 8056C22C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8056C230  7C 7E 1B 78 */	mr r30, r3
/* 8056C234  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8056C238  7C 9F 23 78 */	mr r31, r4
/* 8056C23C  3F A5 00 02 */	addis r29, r5, 2
/* 8056C240  80 BD 60 4C */	lwz r5, 0x604c(r29)
/* 8056C244  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 8056C248  7D 89 03 A6 */	mtctr r12
/* 8056C24C  4E 80 04 21 */	bctrl 
/* 8056C250  2C 03 00 01 */	cmpwi r3, 1
/* 8056C254  40 82 00 F8 */	bne lbl_8056C34C
/* 8056C258  80 9D 60 4C */	lwz r4, 0x604c(r29)
/* 8056C25C  3C 60 80 6C */	lis r3, ct_data@ha /* 0x806BE964@ha */
/* 8056C260  38 A3 E9 64 */	addi r5, r3, ct_data@l /* 0x806BE964@l */
/* 8056C264  81 84 00 D0 */	lwz r12, 0xd0(r4)
/* 8056C268  7F C3 F3 78 */	mr r3, r30
/* 8056C26C  7F E4 FB 78 */	mr r4, r31
/* 8056C270  7D 89 03 A6 */	mtctr r12
/* 8056C274  4E 80 04 21 */	bctrl 
/* 8056C278  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000D003@ha */
/* 8056C27C  3C 60 80 65 */	lis r3, data_80649874@ha /* 0x80649874@ha */
/* 8056C280  38 04 D0 03 */	addi r0, r4, 0xD003 /* 0x0000D003@l */
/* 8056C284  A0 9E 00 06 */	lhz r4, 6(r30)
/* 8056C288  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8056C28C  38 A3 98 74 */	addi r5, r3, data_80649874@l /* 0x80649874@l */
/* 8056C290  7C C4 00 50 */	subf r6, r4, r0
/* 8056C294  C0 25 00 00 */	lfs f1, 0(r5)
/* 8056C298  30 06 FF FF */	addic r0, r6, -1
/* 8056C29C  3C 80 80 65 */	lis r4, lit_482@ha /* 0x80649878@ha */
/* 8056C2A0  7C 00 31 10 */	subfe r0, r0, r6
/* 8056C2A4  C0 04 98 78 */	lfs f0, lit_482@l(r4)  /* 0x80649878@l */
/* 8056C2A8  98 1E 07 44 */	stb r0, 0x744(r30)
/* 8056C2AC  3C 60 80 57 */	lis r3, aPG_setupAction@ha /* 0x8056D868@ha */
/* 8056C2B0  38 03 D8 68 */	addi r0, r3, aPG_setupAction@l /* 0x8056D868@l */
/* 8056C2B4  38 80 00 52 */	li r4, 0x52
/* 8056C2B8  D0 3E 01 44 */	stfs f1, 0x144(r30)
/* 8056C2BC  38 7F 1D A8 */	addi r3, r31, 0x1da8
/* 8056C2C0  38 A0 00 01 */	li r5, 1
/* 8056C2C4  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 8056C2C8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8056C2CC  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 8056C2D0  90 1E 09 A0 */	stw r0, 0x9a0(r30)
/* 8056C2D4  4B E0 9A 0D */	bl Actor_info_name_search
/* 8056C2D8  90 7E 09 AC */	stw r3, 0x9ac(r30)
/* 8056C2DC  4B E4 78 2D */	bl mLd_PlayerManKindCheck
/* 8056C2E0  2C 03 00 00 */	cmpwi r3, 0
/* 8056C2E4  40 82 00 68 */	bne lbl_8056C34C
/* 8056C2E8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8056C2EC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8056C2F0  3C 63 00 02 */	addis r3, r3, 2
/* 8056C2F4  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 8056C2F8  4B E4 72 C1 */	bl mHS_get_arrange_idx
/* 8056C2FC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8056C300  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8056C304  3C 85 00 02 */	addis r4, r5, 2
/* 8056C308  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 8056C30C  1C 63 26 B0 */	mulli r3, r3, 0x26b0
/* 8056C310  80 04 00 90 */	lwz r0, 0x90(r4)
/* 8056C314  7C 65 1A 14 */	add r3, r5, r3
/* 8056C318  28 00 00 00 */	cmplwi r0, 0
/* 8056C31C  3C 63 00 01 */	addis r3, r3, 1
/* 8056C320  38 63 9D 0E */	addi r3, r3, -25330
/* 8056C324  40 82 00 28 */	bne lbl_8056C34C
/* 8056C328  88 03 00 04 */	lbz r0, 4(r3)
/* 8056C32C  54 00 DF 7E */	rlwinm r0, r0, 0x1b, 0x1d, 0x1f
/* 8056C330  28 00 00 03 */	cmplwi r0, 3
/* 8056C334  41 80 00 18 */	blt lbl_8056C34C
/* 8056C338  88 03 00 05 */	lbz r0, 5(r3)
/* 8056C33C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8056C340  40 82 00 0C */	bne lbl_8056C34C
/* 8056C344  38 00 00 01 */	li r0, 1
/* 8056C348  98 1E 09 A7 */	stb r0, 0x9a7(r30)
lbl_8056C34C:
/* 8056C34C  39 61 00 20 */	addi r11, r1, 0x20
/* 8056C350  4B B2 EB D1 */	bl func_8009AF20
/* 8056C354  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056C358  7C 08 03 A6 */	mtlr r0
/* 8056C35C  38 21 00 20 */	addi r1, r1, 0x20
/* 8056C360  4E 80 00 20 */	blr 
