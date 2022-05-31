lbl_8053AA84:
/* 8053AA84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8053AA88  7C 08 02 A6 */	mflr r0
/* 8053AA8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8053AA90  39 61 00 20 */	addi r11, r1, 0x20
/* 8053AA94  4B B6 04 41 */	bl func_8009AED4
/* 8053AA98  3C 80 81 1D */	lis r4, data_811D3978@ha /* 0x811D3978@ha */
/* 8053AA9C  7C 7D 1B 78 */	mr r29, r3
/* 8053AAA0  83 C4 39 78 */	lwz r30, data_811D3978@l(r4)  /* 0x811D3978@l */
/* 8053AAA4  4B E9 EB 9D */	bl get_player_actor_withoutCheck
/* 8053AAA8  28 1E 00 00 */	cmplwi r30, 0
/* 8053AAAC  7C 7F 1B 78 */	mr r31, r3
/* 8053AAB0  41 82 00 B8 */	beq lbl_8053AB68
/* 8053AAB4  28 1F 00 00 */	cmplwi r31, 0
/* 8053AAB8  41 82 00 B0 */	beq lbl_8053AB68
/* 8053AABC  80 7E 09 B0 */	lwz r3, 0x9b0(r30)
/* 8053AAC0  80 1D 20 90 */	lwz r0, 0x2090(r29)
/* 8053AAC4  7C 03 00 40 */	cmplw r3, r0
/* 8053AAC8  41 82 00 A0 */	beq lbl_8053AB68
/* 8053AACC  4B E5 D9 2D */	bl mDemo_Get_talk_actor
/* 8053AAD0  28 03 00 00 */	cmplwi r3, 0
/* 8053AAD4  41 82 00 94 */	beq lbl_8053AB68
/* 8053AAD8  88 03 00 02 */	lbz r0, 2(r3)
/* 8053AADC  28 00 00 04 */	cmplwi r0, 4
/* 8053AAE0  40 82 00 88 */	bne lbl_8053AB68
/* 8053AAE4  80 1D 20 90 */	lwz r0, 0x2090(r29)
/* 8053AAE8  3C 80 80 65 */	lis r4, lit_971@ha /* 0x8064929C@ha */
/* 8053AAEC  38 A4 92 9C */	addi r5, r4, lit_971@l /* 0x8064929C@l */
/* 8053AAF0  90 1E 09 B0 */	stw r0, 0x9b0(r30)
/* 8053AAF4  3C 80 80 65 */	lis r4, lit_5278@ha /* 0x80649370@ha */
/* 8053AAF8  38 C4 93 70 */	addi r6, r4, lit_5278@l /* 0x80649370@l */
/* 8053AAFC  C0 65 00 00 */	lfs f3, 0(r5)
/* 8053AB00  90 7E 09 B4 */	stw r3, 0x9b4(r30)
/* 8053AB04  3C 80 80 65 */	lis r4, lit_802@ha /* 0x80649278@ha */
/* 8053AB08  C0 86 00 00 */	lfs f4, 0(r6)
/* 8053AB0C  C0 A3 00 28 */	lfs f5, 0x28(r3)
/* 8053AB10  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 8053AB14  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 8053AB18  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8053AB1C  EC A5 10 28 */	fsubs f5, f5, f2
/* 8053AB20  C0 44 92 78 */	lfs f2, lit_802@l(r4)  /* 0x80649278@l */
/* 8053AB24  EC 01 00 28 */	fsubs f0, f1, f0
/* 8053AB28  EC 25 01 72 */	fmuls f1, f5, f5
/* 8053AB2C  EC 00 00 32 */	fmuls f0, f0, f0
/* 8053AB30  EC 01 00 2A */	fadds f0, f1, f0
/* 8053AB34  EC 03 00 32 */	fmuls f0, f3, f0
/* 8053AB38  EC 04 00 2A */	fadds f0, f4, f0
/* 8053AB3C  D0 1E 09 B8 */	stfs f0, 0x9b8(r30)
/* 8053AB40  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8053AB44  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 8053AB48  EC 01 00 2A */	fadds f0, f1, f0
/* 8053AB4C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8053AB50  D0 1E 09 BC */	stfs f0, 0x9bc(r30)
/* 8053AB54  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 8053AB58  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 8053AB5C  EC 01 00 2A */	fadds f0, f1, f0
/* 8053AB60  EC 02 00 32 */	fmuls f0, f2, f0
/* 8053AB64  D0 1E 09 C4 */	stfs f0, 0x9c4(r30)
lbl_8053AB68:
/* 8053AB68  39 61 00 20 */	addi r11, r1, 0x20
/* 8053AB6C  4B B6 03 B5 */	bl func_8009AF20
/* 8053AB70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8053AB74  7C 08 03 A6 */	mtlr r0
/* 8053AB78  38 21 00 20 */	addi r1, r1, 0x20
/* 8053AB7C  4E 80 00 20 */	blr 
