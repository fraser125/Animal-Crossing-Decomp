lbl_8063EA2C:
/* 8063EA2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063EA30  7C 08 02 A6 */	mflr r0
/* 8063EA34  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063EA38  39 61 00 20 */	addi r11, r1, 0x20
/* 8063EA3C  4B A5 C4 99 */	bl func_8009AED4
/* 8063EA40  A8 03 00 02 */	lha r0, 2(r3)
/* 8063EA44  7C BF 2B 78 */	mr r31, r5
/* 8063EA48  2C 00 00 01 */	cmpwi r0, 1
/* 8063EA4C  40 82 00 0C */	bne lbl_8063EA58
/* 8063EA50  80 1F 20 90 */	lwz r0, 0x2090(r31)
/* 8063EA54  48 00 00 08 */	b lbl_8063EA5C
lbl_8063EA58:
/* 8063EA58  80 1F 00 A0 */	lwz r0, 0xa0(r31)
lbl_8063EA5C:
/* 8063EA5C  7C 00 00 D0 */	neg r0, r0
/* 8063EA60  7F E7 FB 78 */	mr r7, r31
/* 8063EA64  1C 60 FF FF */	mulli r3, r0, -1
/* 8063EA68  38 80 00 00 */	li r4, 0
/* 8063EA6C  54 00 08 3C */	slwi r0, r0, 1
/* 8063EA70  38 A0 00 00 */	li r5, 0
/* 8063EA74  7C C0 00 D0 */	neg r6, r0
/* 8063EA78  4B FF FF 65 */	bl fSKP_GetTwoTileGfx
/* 8063EA7C  28 03 00 00 */	cmplwi r3, 0
/* 8063EA80  41 82 01 68 */	beq lbl_8063EBE8
/* 8063EA84  83 DF 00 00 */	lwz r30, 0(r31)
/* 8063EA88  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8063EA8C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8063EA90  83 BE 02 D0 */	lwz r29, 0x2d0(r30)
/* 8063EA94  38 7D 00 08 */	addi r3, r29, 8
/* 8063EA98  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 8063EA9C  90 1D 00 00 */	stw r0, 0(r29)
/* 8063EAA0  80 7F 00 00 */	lwz r3, 0(r31)
/* 8063EAA4  4B DC E9 31 */	bl _Matrix_to_Mtx_new
/* 8063EAA8  90 7D 00 04 */	stw r3, 4(r29)
/* 8063EAAC  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8063EAB0  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8063EAB4  83 BE 02 E0 */	lwz r29, 0x2e0(r30)
/* 8063EAB8  38 7D 00 08 */	addi r3, r29, 8
/* 8063EABC  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 8063EAC0  90 1D 00 00 */	stw r0, 0(r29)
/* 8063EAC4  80 7F 00 00 */	lwz r3, 0(r31)
/* 8063EAC8  4B DC E9 0D */	bl _Matrix_to_Mtx_new
/* 8063EACC  90 7D 00 04 */	stw r3, 4(r29)
/* 8063EAD0  3C C0 80 FD */	lis r6, sugi_kpool_t_model@ha /* 0x80FCF4E8@ha */
/* 8063EAD4  3C A0 81 16 */	lis r5, debug_mode@ha /* 0x81166138@ha */
/* 8063EAD8  3C 60 80 FD */	lis r3, int_sugi_kpool_evw_anime@ha /* 0x80FCF638@ha */
/* 8063EADC  81 1E 02 D0 */	lwz r8, 0x2d0(r30)
/* 8063EAE0  38 83 F6 38 */	addi r4, r3, int_sugi_kpool_evw_anime@l /* 0x80FCF638@l */
/* 8063EAE4  3C E0 DE 00 */	lis r7, 0xde00
/* 8063EAE8  38 C6 F4 E8 */	addi r6, r6, sugi_kpool_t_model@l /* 0x80FCF4E8@l */
/* 8063EAEC  38 08 00 08 */	addi r0, r8, 8
/* 8063EAF0  39 45 61 38 */	addi r10, r5, debug_mode@l /* 0x81166138@l */
/* 8063EAF4  90 1E 02 D0 */	stw r0, 0x2d0(r30)
/* 8063EAF8  3C 00 FB 00 */	lis r0, 0xfb00
/* 8063EAFC  7F E3 FB 78 */	mr r3, r31
/* 8063EB00  90 E8 00 00 */	stw r7, 0(r8)
/* 8063EB04  90 C8 00 04 */	stw r6, 4(r8)
/* 8063EB08  81 3E 02 E0 */	lwz r9, 0x2e0(r30)
/* 8063EB0C  38 A9 00 08 */	addi r5, r9, 8
/* 8063EB10  90 BE 02 E0 */	stw r5, 0x2e0(r30)
/* 8063EB14  80 AA 00 00 */	lwz r5, 0(r10)
/* 8063EB18  A8 A5 08 B2 */	lha r5, 0x8b2(r5)
/* 8063EB1C  38 A5 00 A0 */	addi r5, r5, 0xa0
/* 8063EB20  54 A5 06 3E */	clrlwi r5, r5, 0x18
/* 8063EB24  64 A5 FA 00 */	oris r5, r5, 0xfa00
/* 8063EB28  90 A9 00 00 */	stw r5, 0(r9)
/* 8063EB2C  81 0A 00 00 */	lwz r8, 0(r10)
/* 8063EB30  A8 A8 08 B6 */	lha r5, 0x8b6(r8)
/* 8063EB34  A8 C8 08 B4 */	lha r6, 0x8b4(r8)
/* 8063EB38  A8 E8 08 B8 */	lha r7, 0x8b8(r8)
/* 8063EB3C  38 A5 00 FF */	addi r5, r5, 0xff
/* 8063EB40  A9 08 08 BA */	lha r8, 0x8ba(r8)
/* 8063EB44  38 C6 00 37 */	addi r6, r6, 0x37
/* 8063EB48  54 A5 82 1E */	rlwinm r5, r5, 0x10, 8, 0xf
/* 8063EB4C  38 E7 00 FF */	addi r7, r7, 0xff
/* 8063EB50  50 C5 C0 0E */	rlwimi r5, r6, 0x18, 0, 7
/* 8063EB54  39 08 00 C8 */	addi r8, r8, 0xc8
/* 8063EB58  50 E5 44 2E */	rlwimi r5, r7, 8, 0x10, 0x17
/* 8063EB5C  51 05 06 3E */	rlwimi r5, r8, 0, 0x18, 0x1f
/* 8063EB60  90 A9 00 04 */	stw r5, 4(r9)
/* 8063EB64  81 3E 02 E0 */	lwz r9, 0x2e0(r30)
/* 8063EB68  38 A9 00 08 */	addi r5, r9, 8
/* 8063EB6C  90 BE 02 E0 */	stw r5, 0x2e0(r30)
/* 8063EB70  90 09 00 00 */	stw r0, 0(r9)
/* 8063EB74  81 0A 00 00 */	lwz r8, 0(r10)
/* 8063EB78  A8 A8 08 BE */	lha r5, 0x8be(r8)
/* 8063EB7C  A8 C8 08 BC */	lha r6, 0x8bc(r8)
/* 8063EB80  A8 E8 08 C0 */	lha r7, 0x8c0(r8)
/* 8063EB84  38 05 00 9B */	addi r0, r5, 0x9b
/* 8063EB88  54 00 82 1E */	rlwinm r0, r0, 0x10, 8, 0xf
/* 8063EB8C  A9 08 08 C2 */	lha r8, 0x8c2(r8)
/* 8063EB90  38 A7 00 CD */	addi r5, r7, 0xcd
/* 8063EB94  50 C0 C0 0E */	rlwimi r0, r6, 0x18, 0, 7
/* 8063EB98  38 E8 00 FF */	addi r7, r8, 0xff
/* 8063EB9C  50 A0 44 2E */	rlwimi r0, r5, 8, 0x10, 0x17
/* 8063EBA0  50 E0 06 3E */	rlwimi r0, r7, 0, 0x18, 0x1f
/* 8063EBA4  90 09 00 04 */	stw r0, 4(r9)
/* 8063EBA8  4B D3 49 B5 */	bl Evw_Anime_Set
/* 8063EBAC  80 DE 02 E0 */	lwz r6, 0x2e0(r30)
/* 8063EBB0  3C 80 80 FD */	lis r4, sugi_kpool_w_model@ha /* 0x80FCF480@ha */
/* 8063EBB4  3C 60 80 FD */	lis r3, sugi_kpool_model@ha /* 0x80FCF5B8@ha */
/* 8063EBB8  3C A0 DE 00 */	lis r5, 0xde00
/* 8063EBBC  38 06 00 08 */	addi r0, r6, 8
/* 8063EBC0  38 84 F4 80 */	addi r4, r4, sugi_kpool_w_model@l /* 0x80FCF480@l */
/* 8063EBC4  90 1E 02 E0 */	stw r0, 0x2e0(r30)
/* 8063EBC8  38 03 F5 B8 */	addi r0, r3, sugi_kpool_model@l /* 0x80FCF5B8@l */
/* 8063EBCC  90 A6 00 00 */	stw r5, 0(r6)
/* 8063EBD0  90 86 00 04 */	stw r4, 4(r6)
/* 8063EBD4  80 9E 02 E0 */	lwz r4, 0x2e0(r30)
/* 8063EBD8  38 64 00 08 */	addi r3, r4, 8
/* 8063EBDC  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 8063EBE0  90 A4 00 00 */	stw r5, 0(r4)
/* 8063EBE4  90 04 00 04 */	stw r0, 4(r4)
lbl_8063EBE8:
/* 8063EBE8  39 61 00 20 */	addi r11, r1, 0x20
/* 8063EBEC  4B A5 C3 35 */	bl func_8009AF20
/* 8063EBF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063EBF4  7C 08 03 A6 */	mtlr r0
/* 8063EBF8  38 21 00 20 */	addi r1, r1, 0x20
/* 8063EBFC  4E 80 00 20 */	blr 
