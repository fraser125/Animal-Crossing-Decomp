lbl_80419A90:
/* 80419A90  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80419A94  7C 08 02 A6 */	mflr r0
/* 80419A98  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80419A9C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80419AA0  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 80419AA4  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80419AA8  80 63 00 00 */	lwz r3, 0(r3)
/* 80419AAC  4B FB FB 95 */	bl get_player_actor_withoutCheck
/* 80419AB0  7C 7F 1B 78 */	mr r31, r3
/* 80419AB4  38 61 00 14 */	addi r3, r1, 0x14
/* 80419AB8  80 DF 00 28 */	lwz r6, 0x28(r31)
/* 80419ABC  38 81 00 10 */	addi r4, r1, 0x10
/* 80419AC0  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 80419AC4  38 A1 00 20 */	addi r5, r1, 0x20
/* 80419AC8  90 C1 00 20 */	stw r6, 0x20(r1)
/* 80419ACC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80419AD0  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 80419AD4  90 01 00 28 */	stw r0, 0x28(r1)
/* 80419AD8  4B F8 BC 89 */	bl mFI_Wpos2BlockNum
/* 80419ADC  2C 03 00 00 */	cmpwi r3, 0
/* 80419AE0  41 82 01 58 */	beq lbl_80419C38
/* 80419AE4  3C 60 81 1D */	lis r3, wpppp@ha /* 0x811CB95C@ha */
/* 80419AE8  80 E3 B9 5C */	lwz r7, wpppp@l(r3)  /* 0x811CB95C@l */
/* 80419AEC  28 07 00 00 */	cmplwi r7, 0
/* 80419AF0  41 82 01 48 */	beq lbl_80419C38
/* 80419AF4  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 80419AF8  3C 60 80 64 */	lis r3, lit_555@ha /* 0x80643D34@ha */
/* 80419AFC  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 80419B00  C0 03 3D 34 */	lfs f0, lit_555@l(r3)  /* 0x80643D34@l */
/* 80419B04  38 61 00 2C */	addi r3, r1, 0x2c
/* 80419B08  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80419B0C  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 80419B10  90 81 00 38 */	stw r4, 0x38(r1)
/* 80419B14  EC 01 00 2A */	fadds f0, f1, f0
/* 80419B18  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 80419B1C  90 01 00 40 */	stw r0, 0x40(r1)
/* 80419B20  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80419B24  80 87 00 04 */	lwz r4, 4(r7)
/* 80419B28  80 A7 00 00 */	lwz r5, 0(r7)
/* 80419B2C  80 C7 00 0C */	lwz r6, 0xc(r7)
/* 80419B30  80 E7 00 08 */	lwz r7, 8(r7)
/* 80419B34  4B F8 C1 C1 */	bl mFI_BkandUtNum2CenterWpos
/* 80419B38  38 61 00 38 */	addi r3, r1, 0x38
/* 80419B3C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80419B40  4B FB ED 5D */	bl sanglexy_by_2pos
/* 80419B44  3C A0 81 1D */	lis r5, wpppp@ha /* 0x811CB95C@ha */
/* 80419B48  54 80 84 3E */	srwi r0, r4, 0x10
/* 80419B4C  38 85 B9 5C */	addi r4, r5, wpppp@l /* 0x811CB95C@l */
/* 80419B50  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 80419B54  80 84 00 00 */	lwz r4, 0(r4)
/* 80419B58  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 80419B5C  80 04 00 04 */	lwz r0, 4(r4)
/* 80419B60  90 61 00 18 */	stw r3, 0x18(r1)
/* 80419B64  7C 05 00 00 */	cmpw r5, r0
/* 80419B68  40 82 00 14 */	bne lbl_80419B7C
/* 80419B6C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80419B70  80 04 00 00 */	lwz r0, 0(r4)
/* 80419B74  7C 03 00 00 */	cmpw r3, r0
/* 80419B78  41 82 00 64 */	beq lbl_80419BDC
lbl_80419B7C:
/* 80419B7C  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80419B80  3C 80 80 64 */	lis r4, lit_556@ha /* 0x80643D38@ha */
/* 80419B84  38 A3 52 F0 */	addi r5, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 80419B88  C0 84 3D 38 */	lfs f4, lit_556@l(r4)  /* 0x80643D38@l */
/* 80419B8C  80 A5 00 00 */	lwz r5, 0(r5)
/* 80419B90  3C 60 80 64 */	lis r3, lit_557@ha /* 0x80643D3C@ha */
/* 80419B94  38 C3 3D 3C */	addi r6, r3, lit_557@l /* 0x80643D3C@l */
/* 80419B98  FC A0 20 90 */	fmr f5, f4
/* 80419B9C  80 05 00 00 */	lwz r0, 0(r5)
/* 80419BA0  38 60 00 00 */	li r3, 0
/* 80419BA4  C0 C6 00 00 */	lfs f6, 0(r6)
/* 80419BA8  38 A0 00 00 */	li r5, 0
/* 80419BAC  90 01 00 08 */	stw r0, 8(r1)
/* 80419BB0  A8 81 00 1A */	lha r4, 0x1a(r1)
/* 80419BB4  38 C0 00 BE */	li r6, 0xbe
/* 80419BB8  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80419BBC  38 E0 00 FA */	li r7, 0xfa
/* 80419BC0  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 80419BC4  39 00 00 78 */	li r8, 0x78
/* 80419BC8  C0 61 00 40 */	lfs f3, 0x40(r1)
/* 80419BCC  39 20 00 80 */	li r9, 0x80
/* 80419BD0  39 40 00 04 */	li r10, 4
/* 80419BD4  4B F7 C4 ED */	bl Debug_Display_new
/* 80419BD8  48 00 00 60 */	b lbl_80419C38
lbl_80419BDC:
/* 80419BDC  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80419BE0  3C 80 80 64 */	lis r4, lit_556@ha /* 0x80643D38@ha */
/* 80419BE4  38 A3 52 F0 */	addi r5, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 80419BE8  C0 84 3D 38 */	lfs f4, lit_556@l(r4)  /* 0x80643D38@l */
/* 80419BEC  80 A5 00 00 */	lwz r5, 0(r5)
/* 80419BF0  3C 60 80 64 */	lis r3, lit_558@ha /* 0x80643D40@ha */
/* 80419BF4  38 C3 3D 40 */	addi r6, r3, lit_558@l /* 0x80643D40@l */
/* 80419BF8  FC A0 20 90 */	fmr f5, f4
/* 80419BFC  80 05 00 00 */	lwz r0, 0(r5)
/* 80419C00  38 60 00 00 */	li r3, 0
/* 80419C04  C0 C6 00 00 */	lfs f6, 0(r6)
/* 80419C08  38 A0 00 00 */	li r5, 0
/* 80419C0C  90 01 00 08 */	stw r0, 8(r1)
/* 80419C10  A8 81 00 1A */	lha r4, 0x1a(r1)
/* 80419C14  38 C0 00 BE */	li r6, 0xbe
/* 80419C18  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80419C1C  38 E0 00 FA */	li r7, 0xfa
/* 80419C20  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 80419C24  39 00 00 78 */	li r8, 0x78
/* 80419C28  C0 61 00 40 */	lfs f3, 0x40(r1)
/* 80419C2C  39 20 00 80 */	li r9, 0x80
/* 80419C30  39 40 00 04 */	li r10, 4
/* 80419C34  4B F7 C4 8D */	bl Debug_Display_new
lbl_80419C38:
/* 80419C38  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80419C3C  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80419C40  7C 08 03 A6 */	mtlr r0
/* 80419C44  38 21 00 50 */	addi r1, r1, 0x50
/* 80419C48  4E 80 00 20 */	blr 
