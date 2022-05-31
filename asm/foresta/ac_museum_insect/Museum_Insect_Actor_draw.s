lbl_8045AA48:
/* 8045AA48  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8045AA4C  7C 08 02 A6 */	mflr r0
/* 8045AA50  90 01 00 34 */	stw r0, 0x34(r1)
/* 8045AA54  39 61 00 30 */	addi r11, r1, 0x30
/* 8045AA58  4B C4 04 71 */	bl func_8009AEC8
/* 8045AA5C  7C 9D 23 78 */	mr r29, r4
/* 8045AA60  7C 7C 1B 78 */	mr r28, r3
/* 8045AA64  80 64 00 00 */	lwz r3, 0(r4)
/* 8045AA68  4B F8 A6 F1 */	bl _texture_z_light_fog_prim_xlu
/* 8045AA6C  3C 80 80 EC */	lis r4, obj_museum4_water_evw_anime@ha /* 0x80EC74C0@ha */
/* 8045AA70  7F A3 EB 78 */	mr r3, r29
/* 8045AA74  38 84 74 C0 */	addi r4, r4, obj_museum4_water_evw_anime@l /* 0x80EC74C0@l */
/* 8045AA78  4B F1 8A E5 */	bl Evw_Anime_Set
/* 8045AA7C  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8045AA80  3C 80 80 64 */	lis r4, lit_935@ha /* 0x806446C4@ha */
/* 8045AA84  C0 43 45 BC */	lfs f2, lit_459@l(r3)  /* 0x806445BC@l */
/* 8045AA88  38 60 00 00 */	li r3, 0
/* 8045AA8C  83 FD 00 00 */	lwz r31, 0(r29)
/* 8045AA90  FC 60 10 90 */	fmr f3, f2
/* 8045AA94  C0 24 46 C4 */	lfs f1, lit_935@l(r4)  /* 0x806446C4@l */
/* 8045AA98  4B FB 18 69 */	bl Matrix_translate
/* 8045AA9C  3C 80 80 64 */	lis r4, lit_678@ha /* 0x80644654@ha */
/* 8045AAA0  38 60 00 01 */	li r3, 1
/* 8045AAA4  C0 24 46 54 */	lfs f1, lit_678@l(r4)  /* 0x80644654@l */
/* 8045AAA8  FC 40 08 90 */	fmr f2, f1
/* 8045AAAC  FC 60 08 90 */	fmr f3, f1
/* 8045AAB0  4B FB 19 3D */	bl Matrix_scale
/* 8045AAB4  83 5F 02 E0 */	lwz r26, 0x2e0(r31)
/* 8045AAB8  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8045AABC  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8045AAC0  38 7A 00 08 */	addi r3, r26, 8
/* 8045AAC4  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 8045AAC8  90 1A 00 00 */	stw r0, 0(r26)
/* 8045AACC  80 7D 00 00 */	lwz r3, 0(r29)
/* 8045AAD0  4B FB 29 05 */	bl _Matrix_to_Mtx_new
/* 8045AAD4  90 7A 00 04 */	stw r3, 4(r26)
/* 8045AAD8  3C 60 80 EC */	lis r3, obj_museum4_water_modelT@ha /* 0x80EC73E8@ha */
/* 8045AADC  3C 80 DE 00 */	lis r4, 0xde00
/* 8045AAE0  3B C0 00 00 */	li r30, 0
/* 8045AAE4  80 BF 02 E0 */	lwz r5, 0x2e0(r31)
/* 8045AAE8  38 03 73 E8 */	addi r0, r3, obj_museum4_water_modelT@l /* 0x80EC73E8@l */
/* 8045AAEC  3B 60 00 00 */	li r27, 0
/* 8045AAF0  3B 40 00 00 */	li r26, 0
/* 8045AAF4  38 65 00 08 */	addi r3, r5, 8
/* 8045AAF8  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 8045AAFC  90 85 00 00 */	stw r4, 0(r5)
/* 8045AB00  90 05 00 04 */	stw r0, 4(r5)
lbl_8045AB04:
/* 8045AB04  7F FC D2 14 */	add r31, r28, r26
/* 8045AB08  A8 1F 02 00 */	lha r0, 0x200(r31)
/* 8045AB0C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8045AB10  41 82 00 A8 */	beq lbl_8045ABB8
/* 8045AB14  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8045AB18  38 1E 00 01 */	addi r0, r30, 1
/* 8045AB1C  80 83 61 38 */	lwz r4, debug_mode@l(r3)  /* 0x81166138@l */
/* 8045AB20  A8 64 1B 14 */	lha r3, 0x1b14(r4)
/* 8045AB24  7C 03 00 00 */	cmpw r3, r0
/* 8045AB28  40 82 00 48 */	bne lbl_8045AB70
/* 8045AB2C  A8 64 1B 16 */	lha r3, 0x1b16(r4)
/* 8045AB30  3C 00 43 30 */	lis r0, 0x4330
/* 8045AB34  3C A0 80 64 */	lis r5, lit_589@ha /* 0x8064463C@ha */
/* 8045AB38  3C C0 80 64 */	lis r6, lit_5561@ha /* 0x80644998@ha */
/* 8045AB3C  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 8045AB40  3C 60 80 68 */	lis r3, minsect_scale_tbl@ha /* 0x80686E38@ha */
/* 8045AB44  90 81 00 0C */	stw r4, 0xc(r1)
/* 8045AB48  38 63 6E 38 */	addi r3, r3, minsect_scale_tbl@l /* 0x80686E38@l */
/* 8045AB4C  C8 25 46 3C */	lfd f1, lit_589@l(r5)  /* 0x8064463C@l */
/* 8045AB50  90 01 00 08 */	stw r0, 8(r1)
/* 8045AB54  C0 46 49 98 */	lfs f2, lit_5561@l(r6)  /* 0x80644998@l */
/* 8045AB58  C8 01 00 08 */	lfd f0, 8(r1)
/* 8045AB5C  EC 20 08 28 */	fsubs f1, f0, f1
/* 8045AB60  7C 03 DC 2E */	lfsx f0, r3, r27
/* 8045AB64  EC 22 00 72 */	fmuls f1, f2, f1
/* 8045AB68  EC 01 00 2A */	fadds f0, f1, f0
/* 8045AB6C  D0 1F 01 88 */	stfs f0, 0x188(r31)
lbl_8045AB70:
/* 8045AB70  3C 60 80 68 */	lis r3, minsect_dw@ha /* 0x8068672C@ha */
/* 8045AB74  7F A4 EB 78 */	mr r4, r29
/* 8045AB78  38 A3 67 2C */	addi r5, r3, minsect_dw@l /* 0x8068672C@l */
/* 8045AB7C  38 7F 01 74 */	addi r3, r31, 0x174
/* 8045AB80  7D 85 D8 2E */	lwzx r12, r5, r27
/* 8045AB84  7D 89 03 A6 */	mtctr r12
/* 8045AB88  4E 80 04 21 */	bctrl 
/* 8045AB8C  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8045AB90  38 1E 00 01 */	addi r0, r30, 1
/* 8045AB94  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 8045AB98  80 63 00 00 */	lwz r3, 0(r3)
/* 8045AB9C  A8 63 1B 14 */	lha r3, 0x1b14(r3)
/* 8045ABA0  7C 03 00 00 */	cmpw r3, r0
/* 8045ABA4  40 82 00 14 */	bne lbl_8045ABB8
/* 8045ABA8  3C 60 80 68 */	lis r3, minsect_scale_tbl@ha /* 0x80686E38@ha */
/* 8045ABAC  38 63 6E 38 */	addi r3, r3, minsect_scale_tbl@l /* 0x80686E38@l */
/* 8045ABB0  7C 03 DC 2E */	lfsx f0, r3, r27
/* 8045ABB4  D0 1F 01 88 */	stfs f0, 0x188(r31)
lbl_8045ABB8:
/* 8045ABB8  3B DE 00 01 */	addi r30, r30, 1
/* 8045ABBC  3B 5A 00 94 */	addi r26, r26, 0x94
/* 8045ABC0  2C 1E 00 28 */	cmpwi r30, 0x28
/* 8045ABC4  3B 7B 00 04 */	addi r27, r27, 4
/* 8045ABC8  41 80 FF 3C */	blt lbl_8045AB04
/* 8045ABCC  39 61 00 30 */	addi r11, r1, 0x30
/* 8045ABD0  4B C4 03 45 */	bl func_8009AF14
/* 8045ABD4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8045ABD8  7C 08 03 A6 */	mtlr r0
/* 8045ABDC  38 21 00 30 */	addi r1, r1, 0x30
/* 8045ABE0  4E 80 00 20 */	blr 
