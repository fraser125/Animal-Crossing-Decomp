lbl_8039898C:
/* 8039898C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80398990  7C 08 02 A6 */	mflr r0
/* 80398994  90 01 00 54 */	stw r0, 0x54(r1)
/* 80398998  39 61 00 50 */	addi r11, r1, 0x50
/* 8039899C  4B D0 25 39 */	bl func_8009AED4
/* 803989A0  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803989A4  7C 7D 1B 78 */	mr r29, r3
/* 803989A8  38 64 52 F0 */	addi r3, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 803989AC  80 63 00 00 */	lwz r3, 0(r3)
/* 803989B0  48 04 0C 91 */	bl get_player_actor_withoutCheck
/* 803989B4  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803989B8  7C 7E 1B 78 */	mr r30, r3
/* 803989BC  83 E4 52 F0 */	lwz r31, data_811C52F0@l(r4)  /* 0x811C52F0@l */
/* 803989C0  80 1F 1B E8 */	lwz r0, 0x1be8(r31)
/* 803989C4  7C 1D 00 00 */	cmpw r29, r0
/* 803989C8  40 82 00 0C */	bne lbl_803989D4
/* 803989CC  38 60 00 00 */	li r3, 0
/* 803989D0  48 00 02 BC */	b lbl_80398C8C
lbl_803989D4:
/* 803989D4  28 1D 00 0D */	cmplwi r29, 0xd
/* 803989D8  41 81 02 B0 */	bgt lbl_80398C88
/* 803989DC  3C 60 80 65 */	lis r3, lit_676@ha /* 0x806516D8@ha */
/* 803989E0  57 A0 10 3A */	slwi r0, r29, 2
/* 803989E4  38 63 16 D8 */	addi r3, r3, lit_676@l /* 0x806516D8@l */
/* 803989E8  7C 03 00 2E */	lwzx r0, r3, r0
/* 803989EC  7C 09 03 A6 */	mtctr r0
/* 803989F0  4E 80 04 20 */	bctr 
lbl_803989F4:
/* 803989F4  3C 80 80 64 */	lis r4, data_80641CBC@ha /* 0x80641CBC@ha */
/* 803989F8  7F E3 FB 78 */	mr r3, r31
/* 803989FC  38 A4 1C BC */	addi r5, r4, data_80641CBC@l /* 0x80641CBC@l */
/* 80398A00  7F C4 F3 78 */	mr r4, r30
/* 80398A04  80 A5 00 00 */	lwz r5, 0(r5)
/* 80398A08  38 C0 00 06 */	li r6, 6
/* 80398A0C  80 A5 00 E0 */	lwz r5, 0xe0(r5)
/* 80398A10  4B FE 6C 89 */	bl Camera2_request_main_talk
/* 80398A14  48 00 02 74 */	b lbl_80398C88
lbl_80398A18:
/* 80398A18  7F E3 FB 78 */	mr r3, r31
/* 80398A1C  38 80 00 00 */	li r4, 0
/* 80398A20  38 A0 00 06 */	li r5, 6
/* 80398A24  4B FE 82 B9 */	bl Camera2_request_main_item
/* 80398A28  48 00 02 60 */	b lbl_80398C88
lbl_80398A2C:
/* 80398A2C  3C 80 80 64 */	lis r4, data_80641CBC@ha /* 0x80641CBC@ha */
/* 80398A30  7F E3 FB 78 */	mr r3, r31
/* 80398A34  38 A4 1C BC */	addi r5, r4, data_80641CBC@l /* 0x80641CBC@l */
/* 80398A38  7F C4 F3 78 */	mr r4, r30
/* 80398A3C  80 A5 00 00 */	lwz r5, 0(r5)
/* 80398A40  38 C0 00 06 */	li r6, 6
/* 80398A44  80 05 00 E4 */	lwz r0, 0xe4(r5)
/* 80398A48  20 A0 00 0B */	subfic r5, r0, 0xb
/* 80398A4C  30 05 FF FF */	addic r0, r5, -1
/* 80398A50  7C A0 29 10 */	subfe r5, r0, r5
/* 80398A54  4B FE 88 DD */	bl Camera2_request_main_door
/* 80398A58  48 00 02 30 */	b lbl_80398C88
lbl_80398A5C:
/* 80398A5C  3C 60 80 64 */	lis r3, data_80641CBC@ha /* 0x80641CBC@ha */
/* 80398A60  38 63 1C BC */	addi r3, r3, data_80641CBC@l /* 0x80641CBC@l */
/* 80398A64  80 63 00 00 */	lwz r3, 0(r3)
/* 80398A68  80 03 00 E4 */	lwz r0, 0xe4(r3)
/* 80398A6C  2C 00 00 0D */	cmpwi r0, 0xd
/* 80398A70  41 82 00 20 */	beq lbl_80398A90
/* 80398A74  40 80 00 10 */	bge lbl_80398A84
/* 80398A78  2C 00 00 0A */	cmpwi r0, 0xa
/* 80398A7C  41 82 00 4C */	beq lbl_80398AC8
/* 80398A80  48 00 02 08 */	b lbl_80398C88
lbl_80398A84:
/* 80398A84  2C 00 00 0F */	cmpwi r0, 0xf
/* 80398A88  40 80 02 00 */	bge lbl_80398C88
/* 80398A8C  48 00 00 3C */	b lbl_80398AC8
lbl_80398A90:
/* 80398A90  7F E3 FB 78 */	mr r3, r31
/* 80398A94  38 81 00 14 */	addi r4, r1, 0x14
/* 80398A98  38 A1 00 10 */	addi r5, r1, 0x10
/* 80398A9C  4B FE 90 A5 */	bl Camera2_main_Simple_AngleDistStd
/* 80398AA0  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80398AA4  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80398AA8  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 80398AAC  38 9E 00 28 */	addi r4, r30, 0x28
/* 80398AB0  80 63 00 00 */	lwz r3, 0(r3)
/* 80398AB4  38 A1 00 14 */	addi r5, r1, 0x14
/* 80398AB8  38 C0 00 00 */	li r6, 0
/* 80398ABC  38 E0 00 06 */	li r7, 6
/* 80398AC0  4B FE 8F 65 */	bl Camera2_request_main_simple
/* 80398AC4  48 00 01 C4 */	b lbl_80398C88
lbl_80398AC8:
/* 80398AC8  7F E3 FB 78 */	mr r3, r31
/* 80398ACC  38 81 00 14 */	addi r4, r1, 0x14
/* 80398AD0  38 A1 00 10 */	addi r5, r1, 0x10
/* 80398AD4  4B FE 90 6D */	bl Camera2_main_Simple_AngleDistStd
/* 80398AD8  38 61 00 0C */	addi r3, r1, 0xc
/* 80398ADC  38 81 00 08 */	addi r4, r1, 8
/* 80398AE0  38 A0 00 04 */	li r5, 4
/* 80398AE4  48 00 D9 1D */	bl mFI_BlockKind2BkNum
/* 80398AE8  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 80398AEC  38 81 00 3C */	addi r4, r1, 0x3c
/* 80398AF0  80 C1 00 08 */	lwz r6, 8(r1)
/* 80398AF4  38 61 00 34 */	addi r3, r1, 0x34
/* 80398AF8  48 00 D0 81 */	bl mFI_BkNum2WposXZ
/* 80398AFC  3C 60 80 64 */	lis r3, lit_670@ha /* 0x80641CC0@ha */
/* 80398B00  3C 80 80 64 */	lis r4, lit_671@ha /* 0x80641CC4@ha */
/* 80398B04  38 C3 1C C0 */	addi r6, r3, lit_670@l /* 0x80641CC0@l */
/* 80398B08  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80398B0C  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 80398B10  38 A4 1C C4 */	addi r5, r4, lit_671@l /* 0x80641CC4@l */
/* 80398B14  C0 06 00 00 */	lfs f0, 0(r6)
/* 80398B18  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 80398B1C  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 80398B20  38 81 00 34 */	addi r4, r1, 0x34
/* 80398B24  EC 42 00 2A */	fadds f2, f2, f0
/* 80398B28  C0 05 00 00 */	lfs f0, 0(r5)
/* 80398B2C  80 63 00 00 */	lwz r3, 0(r3)
/* 80398B30  38 A1 00 14 */	addi r5, r1, 0x14
/* 80398B34  EC 01 00 2A */	fadds f0, f1, f0
/* 80398B38  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80398B3C  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 80398B40  38 C0 00 00 */	li r6, 0
/* 80398B44  38 E0 00 06 */	li r7, 6
/* 80398B48  C0 5E 00 2C */	lfs f2, 0x2c(r30)
/* 80398B4C  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80398B50  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80398B54  4B FE 8E D1 */	bl Camera2_request_main_simple
/* 80398B58  48 00 01 30 */	b lbl_80398C88
lbl_80398B5C:
/* 80398B5C  3C 60 80 64 */	lis r3, data_80641CBC@ha /* 0x80641CBC@ha */
/* 80398B60  38 63 1C BC */	addi r3, r3, data_80641CBC@l /* 0x80641CBC@l */
/* 80398B64  80 63 00 00 */	lwz r3, 0(r3)
/* 80398B68  80 A3 00 E0 */	lwz r5, 0xe0(r3)
/* 80398B6C  A8 05 00 00 */	lha r0, 0(r5)
/* 80398B70  2C 00 00 79 */	cmpwi r0, 0x79
/* 80398B74  41 82 00 08 */	beq lbl_80398B7C
/* 80398B78  48 00 01 10 */	b lbl_80398C88
lbl_80398B7C:
/* 80398B7C  7F E3 FB 78 */	mr r3, r31
/* 80398B80  7F C4 F3 78 */	mr r4, r30
/* 80398B84  38 C0 00 06 */	li r6, 6
/* 80398B88  4B FE 92 ED */	bl Camera2_request_main_listen_front_low_talk
/* 80398B8C  48 00 00 FC */	b lbl_80398C88
lbl_80398B90:
/* 80398B90  3C 60 80 64 */	lis r3, data_80641CBC@ha /* 0x80641CBC@ha */
/* 80398B94  38 63 1C BC */	addi r3, r3, data_80641CBC@l /* 0x80641CBC@l */
/* 80398B98  80 63 00 00 */	lwz r3, 0(r3)
/* 80398B9C  80 83 00 E0 */	lwz r4, 0xe0(r3)
/* 80398BA0  A8 04 00 00 */	lha r0, 0(r4)
/* 80398BA4  2C 00 00 2E */	cmpwi r0, 0x2e
/* 80398BA8  41 82 00 08 */	beq lbl_80398BB0
/* 80398BAC  48 00 00 DC */	b lbl_80398C88
lbl_80398BB0:
/* 80398BB0  7F E3 FB 78 */	mr r3, r31
/* 80398BB4  38 84 00 28 */	addi r4, r4, 0x28
/* 80398BB8  38 A0 00 05 */	li r5, 5
/* 80398BBC  4B FE 8B F5 */	bl Camera2_request_main_simple_kirin
/* 80398BC0  48 00 00 C8 */	b lbl_80398C88
lbl_80398BC4:
/* 80398BC4  7F E3 FB 78 */	mr r3, r31
/* 80398BC8  38 80 00 00 */	li r4, 0
/* 80398BCC  38 A0 00 05 */	li r5, 5
/* 80398BD0  4B FE 7B 09 */	bl Camera2_request_main_normal
/* 80398BD4  48 00 00 B4 */	b lbl_80398C88
lbl_80398BD8:
/* 80398BD8  80 DF 1B 94 */	lwz r6, 0x1b94(r31)
/* 80398BDC  3C 60 80 64 */	lis r3, lit_672@ha /* 0x80641CC8@ha */
/* 80398BE0  80 1F 1B 98 */	lwz r0, 0x1b98(r31)
/* 80398BE4  38 A3 1C C8 */	addi r5, r3, lit_672@l /* 0x80641CC8@l */
/* 80398BE8  3C 60 80 64 */	lis r3, lit_673@ha /* 0x80641CCC@ha */
/* 80398BEC  3C 80 80 64 */	lis r4, lit_674@ha /* 0x80641CD0@ha */
/* 80398BF0  90 C1 00 28 */	stw r6, 0x28(r1)
/* 80398BF4  38 C3 1C CC */	addi r6, r3, lit_673@l /* 0x80641CCC@l */
/* 80398BF8  C0 85 00 00 */	lfs f4, 0(r5)
/* 80398BFC  3C 60 80 64 */	lis r3, lit_675@ha /* 0x80641CD4@ha */
/* 80398C00  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80398C04  38 E4 1C D0 */	addi r7, r4, lit_674@l /* 0x80641CD0@l */
/* 80398C08  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80398C0C  39 23 1C D4 */	addi r9, r3, lit_675@l /* 0x80641CD4@l */
/* 80398C10  EC 40 20 28 */	fsubs f2, f0, f4
/* 80398C14  38 81 00 28 */	addi r4, r1, 0x28
/* 80398C18  80 1F 1B 9C */	lwz r0, 0x1b9c(r31)
/* 80398C1C  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80398C20  C0 06 00 00 */	lfs f0, 0(r6)
/* 80398C24  7F E3 FB 78 */	mr r3, r31
/* 80398C28  90 01 00 30 */	stw r0, 0x30(r1)
/* 80398C2C  7C 86 23 78 */	mr r6, r4
/* 80398C30  C0 27 00 00 */	lfs f1, 0(r7)
/* 80398C34  7C A7 2B 78 */	mr r7, r5
/* 80398C38  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80398C3C  39 00 00 01 */	li r8, 1
/* 80398C40  C0 49 00 00 */	lfs f2, 0(r9)
/* 80398C44  39 20 00 0E */	li r9, 0xe
/* 80398C48  81 7F 1B 88 */	lwz r11, 0x1b88(r31)
/* 80398C4C  39 40 00 07 */	li r10, 7
/* 80398C50  80 1F 1B 8C */	lwz r0, 0x1b8c(r31)
/* 80398C54  91 61 00 1C */	stw r11, 0x1c(r1)
/* 80398C58  90 01 00 20 */	stw r0, 0x20(r1)
/* 80398C5C  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 80398C60  80 1F 1B 90 */	lwz r0, 0x1b90(r31)
/* 80398C64  EC 83 20 28 */	fsubs f4, f3, f4
/* 80398C68  90 01 00 24 */	stw r0, 0x24(r1)
/* 80398C6C  C0 61 00 24 */	lfs f3, 0x24(r1)
/* 80398C70  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 80398C74  EC 03 00 28 */	fsubs f0, f3, f0
/* 80398C78  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80398C7C  4B FE 97 6D */	bl Camera2_request_main_inter
/* 80398C80  38 00 00 0C */	li r0, 0xc
/* 80398C84  90 1F 1B F0 */	stw r0, 0x1bf0(r31)
lbl_80398C88:
/* 80398C88  38 60 00 01 */	li r3, 1
lbl_80398C8C:
/* 80398C8C  39 61 00 50 */	addi r11, r1, 0x50
/* 80398C90  4B D0 22 91 */	bl func_8009AF20
/* 80398C94  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80398C98  7C 08 03 A6 */	mtlr r0
/* 80398C9C  38 21 00 50 */	addi r1, r1, 0x50
/* 80398CA0  4E 80 00 20 */	blr 
