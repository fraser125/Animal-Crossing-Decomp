lbl_804D1944:
/* 804D1944  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804D1948  7C 08 02 A6 */	mflr r0
/* 804D194C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804D1950  39 61 00 20 */	addi r11, r1, 0x20
/* 804D1954  4B BC 95 81 */	bl func_8009AED4
/* 804D1958  7C 9F 23 78 */	mr r31, r4
/* 804D195C  7C 7E 1B 78 */	mr r30, r3
/* 804D1960  80 64 00 00 */	lwz r3, 0(r4)
/* 804D1964  4B F1 37 A5 */	bl _texture_z_light_fog_prim
/* 804D1968  80 7F 00 00 */	lwz r3, 0(r31)
/* 804D196C  4B F1 37 C5 */	bl _texture_z_light_fog_prim_shadow
/* 804D1970  80 7F 00 00 */	lwz r3, 0(r31)
/* 804D1974  4B F1 37 E5 */	bl _texture_z_light_fog_prim_xlu
/* 804D1978  3C 60 81 1D */	lis r3, draw_status@ha /* 0x811D2D08@ha */
/* 804D197C  8C 03 2D 08 */	lbzu r0, draw_status@l(r3)  /* 0x811D2D08@l */
/* 804D1980  60 00 00 02 */	ori r0, r0, 2
/* 804D1984  98 03 00 00 */	stb r0, 0(r3)
/* 804D1988  4B EE 7E C9 */	bl mKK_windowlight_alpha_get
/* 804D198C  3C 60 80 64 */	lis r3, lit_601@ha /* 0x80646468@ha */
/* 804D1990  C0 03 64 68 */	lfs f0, lit_601@l(r3)  /* 0x80646468@l */
/* 804D1994  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D1998  40 80 00 44 */	bge lbl_804D19DC
/* 804D199C  3C 60 81 1D */	lis r3, draw_status@ha /* 0x811D2D08@ha */
/* 804D19A0  38 63 2D 08 */	addi r3, r3, draw_status@l /* 0x811D2D08@l */
/* 804D19A4  88 63 00 00 */	lbz r3, 0(r3)
/* 804D19A8  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 804D19AC  41 82 01 10 */	beq lbl_804D1ABC
/* 804D19B0  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 804D19B4  41 82 01 08 */	beq lbl_804D1ABC
/* 804D19B8  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 804D19BC  40 82 01 00 */	bne lbl_804D1ABC
/* 804D19C0  7F C3 F3 78 */	mr r3, r30
/* 804D19C4  7F E4 FB 78 */	mr r4, r31
/* 804D19C8  4B FF FD 55 */	bl BG_draw_Minsect_niwa
/* 804D19CC  7F C3 F3 78 */	mr r3, r30
/* 804D19D0  7F E4 FB 78 */	mr r4, r31
/* 804D19D4  4B FF FC 71 */	bl BG_draw_Minsect
/* 804D19D8  48 00 00 E4 */	b lbl_804D1ABC
lbl_804D19DC:
/* 804D19DC  3C 60 80 64 */	lis r3, lit_393@ha /* 0x80646420@ha */
/* 804D19E0  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 804D19E4  C0 23 64 20 */	lfs f1, lit_393@l(r3)  /* 0x80646420@l */
/* 804D19E8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804D19EC  40 82 00 44 */	bne lbl_804D1A30
/* 804D19F0  3C 60 81 1D */	lis r3, draw_status@ha /* 0x811D2D08@ha */
/* 804D19F4  38 63 2D 08 */	addi r3, r3, draw_status@l /* 0x811D2D08@l */
/* 804D19F8  88 63 00 00 */	lbz r3, 0(r3)
/* 804D19FC  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 804D1A00  41 82 00 BC */	beq lbl_804D1ABC
/* 804D1A04  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 804D1A08  41 82 00 B4 */	beq lbl_804D1ABC
/* 804D1A0C  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 804D1A10  40 82 00 AC */	bne lbl_804D1ABC
/* 804D1A14  7F C3 F3 78 */	mr r3, r30
/* 804D1A18  7F E4 FB 78 */	mr r4, r31
/* 804D1A1C  4B FF FD 01 */	bl BG_draw_Minsect_niwa
/* 804D1A20  7F C3 F3 78 */	mr r3, r30
/* 804D1A24  7F E4 FB 78 */	mr r4, r31
/* 804D1A28  4B FF FC 1D */	bl BG_draw_Minsect
/* 804D1A2C  48 00 00 90 */	b lbl_804D1ABC
lbl_804D1A30:
/* 804D1A30  83 BF 00 00 */	lwz r29, 0(r31)
/* 804D1A34  7F C3 F3 78 */	mr r3, r30
/* 804D1A38  7F E4 FB 78 */	mr r4, r31
/* 804D1A3C  4B FF FC E1 */	bl BG_draw_Minsect_niwa
/* 804D1A40  7F C3 F3 78 */	mr r3, r30
/* 804D1A44  7F E4 FB 78 */	mr r4, r31
/* 804D1A48  4B FF F9 4D */	bl setup_mode_Ef_Room_Sunshine_Minsect
/* 804D1A4C  80 FD 02 E0 */	lwz r7, 0x2e0(r29)
/* 804D1A50  3C 80 80 9C */	lis r4, obj_museum4_shine_1T_model@ha /* 0x809C1D70@ha */
/* 804D1A54  3C A0 DE 00 */	lis r5, 0xde00
/* 804D1A58  7F C3 F3 78 */	mr r3, r30
/* 804D1A5C  38 C7 00 08 */	addi r6, r7, 8
/* 804D1A60  38 04 1D 70 */	addi r0, r4, obj_museum4_shine_1T_model@l /* 0x809C1D70@l */
/* 804D1A64  90 DD 02 E0 */	stw r6, 0x2e0(r29)
/* 804D1A68  7F E4 FB 78 */	mr r4, r31
/* 804D1A6C  90 A7 00 00 */	stw r5, 0(r7)
/* 804D1A70  90 07 00 04 */	stw r0, 4(r7)
/* 804D1A74  4B FF FA 79 */	bl setup_mode_Ef_Room_Sunshine_Minsect_decal
/* 804D1A78  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 804D1A7C  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 804D1A80  80 63 00 00 */	lwz r3, 0(r3)
/* 804D1A84  A8 03 1B 14 */	lha r0, 0x1b14(r3)
/* 804D1A88  2C 00 00 00 */	cmpwi r0, 0
/* 804D1A8C  40 82 00 24 */	bne lbl_804D1AB0
/* 804D1A90  80 DD 02 D0 */	lwz r6, 0x2d0(r29)
/* 804D1A94  3C 60 80 9C */	lis r3, obj_museum4_shine_2T_model@ha /* 0x809C1CB0@ha */
/* 804D1A98  3C 80 DE 00 */	lis r4, 0xde00
/* 804D1A9C  38 A6 00 08 */	addi r5, r6, 8
/* 804D1AA0  38 03 1C B0 */	addi r0, r3, obj_museum4_shine_2T_model@l /* 0x809C1CB0@l */
/* 804D1AA4  90 BD 02 D0 */	stw r5, 0x2d0(r29)
/* 804D1AA8  90 86 00 00 */	stw r4, 0(r6)
/* 804D1AAC  90 06 00 04 */	stw r0, 4(r6)
lbl_804D1AB0:
/* 804D1AB0  7F C3 F3 78 */	mr r3, r30
/* 804D1AB4  7F E4 FB 78 */	mr r4, r31
/* 804D1AB8  4B FF FB 8D */	bl BG_draw_Minsect
lbl_804D1ABC:
/* 804D1ABC  39 61 00 20 */	addi r11, r1, 0x20
/* 804D1AC0  4B BC 94 61 */	bl func_8009AF20
/* 804D1AC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804D1AC8  7C 08 03 A6 */	mtlr r0
/* 804D1ACC  38 21 00 20 */	addi r1, r1, 0x20
/* 804D1AD0  4E 80 00 20 */	blr 
