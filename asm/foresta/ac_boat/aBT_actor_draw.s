lbl_805A6F24:
/* 805A6F24  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805A6F28  7C 08 02 A6 */	mflr r0
/* 805A6F2C  90 01 00 44 */	stw r0, 0x44(r1)
/* 805A6F30  39 61 00 40 */	addi r11, r1, 0x40
/* 805A6F34  4B AF 3F 8D */	bl func_8009AEC0
/* 805A6F38  3C A0 80 65 */	lis r5, lit_588@ha /* 0x8064A4F0@ha */
/* 805A6F3C  7C 7E 1B 78 */	mr r30, r3
/* 805A6F40  38 65 A4 F0 */	addi r3, r5, lit_588@l /* 0x8064A4F0@l */
/* 805A6F44  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 805A6F48  C0 23 00 00 */	lfs f1, 0(r3)
/* 805A6F4C  3C A0 80 65 */	lis r5, lit_918@ha /* 0x8064A534@ha */
/* 805A6F50  C0 5E 02 C8 */	lfs f2, 0x2c8(r30)
/* 805A6F54  3C 60 80 65 */	lis r3, lit_919@ha /* 0x8064A538@ha */
/* 805A6F58  EC 01 00 32 */	fmuls f0, f1, f0
/* 805A6F5C  83 84 00 00 */	lwz r28, 0(r4)
/* 805A6F60  C0 25 A5 34 */	lfs f1, lit_918@l(r5)  /* 0x8064A534@l */
/* 805A6F64  7C 9A 23 78 */	mr r26, r4
/* 805A6F68  3B BE 01 78 */	addi r29, r30, 0x178
/* 805A6F6C  EC 42 00 28 */	fsubs f2, f2, f0
/* 805A6F70  C0 03 A5 38 */	lfs f0, lit_919@l(r3)  /* 0x8064A538@l */
/* 805A6F74  48 00 00 08 */	b lbl_805A6F7C
lbl_805A6F78:
/* 805A6F78  EC 42 08 2A */	fadds f2, f2, f1
lbl_805A6F7C:
/* 805A6F7C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805A6F80  41 80 FF F8 */	blt lbl_805A6F78
/* 805A6F84  3C 60 80 65 */	lis r3, lit_920@ha /* 0x8064A53C@ha */
/* 805A6F88  D0 5E 02 C8 */	stfs f2, 0x2c8(r30)
/* 805A6F8C  C0 03 A5 3C */	lfs f0, lit_920@l(r3)  /* 0x8064A53C@l */
/* 805A6F90  38 00 00 20 */	li r0, 0x20
/* 805A6F94  7F 83 E3 78 */	mr r3, r28
/* 805A6F98  38 80 00 00 */	li r4, 0
/* 805A6F9C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 805A6FA0  38 A0 00 00 */	li r5, 0
/* 805A6FA4  38 C0 00 00 */	li r6, 0
/* 805A6FA8  38 E0 00 20 */	li r7, 0x20
/* 805A6FAC  39 00 00 20 */	li r8, 0x20
/* 805A6FB0  39 20 00 01 */	li r9, 1
/* 805A6FB4  FC 00 00 1E */	fctiwz f0, f0
/* 805A6FB8  39 40 00 00 */	li r10, 0
/* 805A6FBC  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805A6FC0  81 61 00 1C */	lwz r11, 0x1c(r1)
/* 805A6FC4  91 61 00 08 */	stw r11, 8(r1)
/* 805A6FC8  90 01 00 0C */	stw r0, 0xc(r1)
/* 805A6FCC  90 01 00 10 */	stw r0, 0x10(r1)
/* 805A6FD0  4B E3 E5 F1 */	bl two_tex_scroll_dolphin
/* 805A6FD4  7C 7F 1B 79 */	or. r31, r3, r3
/* 805A6FD8  41 82 01 00 */	beq lbl_805A70D8
/* 805A6FDC  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 805A6FE0  80 1C 02 D4 */	lwz r0, 0x2d4(r28)
/* 805A6FE4  88 63 00 01 */	lbz r3, 1(r3)
/* 805A6FE8  54 63 30 32 */	slwi r3, r3, 6
/* 805A6FEC  7C 03 00 51 */	subf. r0, r3, r0
/* 805A6FF0  90 1C 02 D4 */	stw r0, 0x2d4(r28)
/* 805A6FF4  7C 1B 03 78 */	mr r27, r0
/* 805A6FF8  41 82 00 E0 */	beq lbl_805A70D8
/* 805A6FFC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805A7000  38 60 00 5F */	li r3, 0x5f
/* 805A7004  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805A7008  3C 84 00 02 */	addis r4, r4, 2
/* 805A700C  80 84 60 98 */	lwz r4, 0x6098(r4)
/* 805A7010  81 84 00 A4 */	lwz r12, 0xa4(r4)
/* 805A7014  7D 89 03 A6 */	mtctr r12
/* 805A7018  4E 80 04 21 */	bctrl 
/* 805A701C  7C 79 1B 78 */	mr r25, r3
/* 805A7020  7F 83 E3 78 */	mr r3, r28
/* 805A7024  4B E3 E0 E5 */	bl _texture_z_light_fog_prim
/* 805A7028  7F 83 E3 78 */	mr r3, r28
/* 805A702C  4B E3 E1 2D */	bl _texture_z_light_fog_prim_xlu
/* 805A7030  81 1C 02 D0 */	lwz r8, 0x2d0(r28)
/* 805A7034  3C E0 E7 00 */	lis r7, 0xe700
/* 805A7038  3C 80 F0 8F */	lis r4, 0xF08F /* 0xF08F4010@ha */
/* 805A703C  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060024@ha */
/* 805A7040  90 E8 00 00 */	stw r7, 0(r8)
/* 805A7044  38 C0 00 00 */	li r6, 0
/* 805A7048  38 A4 40 10 */	addi r5, r4, 0x4010 /* 0xF08F4010@l */
/* 805A704C  38 83 00 24 */	addi r4, r3, 0x0024 /* 0xDB060024@l */
/* 805A7050  90 C8 00 04 */	stw r6, 4(r8)
/* 805A7054  39 08 00 08 */	addi r8, r8, 8
/* 805A7058  7D 09 43 78 */	mr r9, r8
/* 805A705C  3C 00 FB 00 */	lis r0, 0xfb00
/* 805A7060  90 A8 00 00 */	stw r5, 0(r8)
/* 805A7064  39 08 00 08 */	addi r8, r8, 8
/* 805A7068  7F C3 F3 78 */	mr r3, r30
/* 805A706C  93 29 00 04 */	stw r25, 4(r9)
/* 805A7070  91 1C 02 D0 */	stw r8, 0x2d0(r28)
/* 805A7074  83 1C 02 E0 */	lwz r24, 0x2e0(r28)
/* 805A7078  90 F8 00 00 */	stw r7, 0(r24)
/* 805A707C  90 D8 00 04 */	stw r6, 4(r24)
/* 805A7080  90 98 00 08 */	stw r4, 8(r24)
/* 805A7084  93 F8 00 0C */	stw r31, 0xc(r24)
/* 805A7088  90 B8 00 10 */	stw r5, 0x10(r24)
/* 805A708C  93 38 00 14 */	stw r25, 0x14(r24)
/* 805A7090  3B 18 00 18 */	addi r24, r24, 0x18
/* 805A7094  7F 19 C3 78 */	mr r25, r24
/* 805A7098  90 18 00 00 */	stw r0, 0(r24)
/* 805A709C  3B 18 00 08 */	addi r24, r24, 8
/* 805A70A0  4B FF FD 69 */	bl aBT_calc_furrow_alpha
/* 805A70A4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 805A70A8  3C 80 80 5A */	lis r4, aBT_actor_draw_before@ha /* 0x805A6E58@ha */
/* 805A70AC  64 00 9B 9B */	oris r0, r0, 0x9b9b
/* 805A70B0  7F 43 D3 78 */	mr r3, r26
/* 805A70B4  60 00 FF 00 */	ori r0, r0, 0xff00
/* 805A70B8  38 C4 6E 58 */	addi r6, r4, aBT_actor_draw_before@l /* 0x805A6E58@l */
/* 805A70BC  90 19 00 04 */	stw r0, 4(r25)
/* 805A70C0  7F A4 EB 78 */	mr r4, r29
/* 805A70C4  7F 65 DB 78 */	mr r5, r27
/* 805A70C8  7F C8 F3 78 */	mr r8, r30
/* 805A70CC  93 1C 02 E0 */	stw r24, 0x2e0(r28)
/* 805A70D0  38 E0 00 00 */	li r7, 0
/* 805A70D4  4B DC A6 65 */	bl cKF_Si3_draw_R_SV
lbl_805A70D8:
/* 805A70D8  39 61 00 40 */	addi r11, r1, 0x40
/* 805A70DC  4B AF 3E 31 */	bl func_8009AF0C
/* 805A70E0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805A70E4  7C 08 03 A6 */	mtlr r0
/* 805A70E8  38 21 00 40 */	addi r1, r1, 0x40
/* 805A70EC  4E 80 00 20 */	blr 
