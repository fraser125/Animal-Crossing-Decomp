lbl_805DF0A0:
/* 805DF0A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805DF0A4  7C 08 02 A6 */	mflr r0
/* 805DF0A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805DF0AC  39 61 00 20 */	addi r11, r1, 0x20
/* 805DF0B0  4B AB BE 19 */	bl func_8009AEC8
/* 805DF0B4  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805DF0B8  7C 9B 23 78 */	mr r27, r4
/* 805DF0BC  83 C4 00 00 */	lwz r30, 0(r4)
/* 805DF0C0  7C BC 2B 78 */	mr r28, r5
/* 805DF0C4  83 E3 09 80 */	lwz r31, 0x980(r3)
/* 805DF0C8  80 1E 02 D4 */	lwz r0, 0x2d4(r30)
/* 805DF0CC  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 805DF0D0  88 63 00 01 */	lbz r3, 1(r3)
/* 805DF0D4  54 63 30 32 */	slwi r3, r3, 6
/* 805DF0D8  7C 03 00 51 */	subf. r0, r3, r0
/* 805DF0DC  90 1E 02 D4 */	stw r0, 0x2d4(r30)
/* 805DF0E0  7C 1D 03 78 */	mr r29, r0
/* 805DF0E4  41 82 01 E8 */	beq lbl_805DF2CC
/* 805DF0E8  2C 1C 00 00 */	cmpwi r28, 0
/* 805DF0EC  41 82 00 28 */	beq lbl_805DF114
/* 805DF0F0  3C 60 80 65 */	lis r3, data_8064B29C@ha /* 0x8064B29C@ha */
/* 805DF0F4  3C 80 80 65 */	lis r4, lit_1202@ha /* 0x8064B2F8@ha */
/* 805DF0F8  38 A3 B2 9C */	addi r5, r3, data_8064B29C@l /* 0x8064B29C@l */
/* 805DF0FC  C0 64 B2 F8 */	lfs f3, lit_1202@l(r4)  /* 0x8064B2F8@l */
/* 805DF100  C0 25 00 00 */	lfs f1, 0(r5)
/* 805DF104  38 60 00 00 */	li r3, 0
/* 805DF108  FC 40 08 90 */	fmr f2, f1
/* 805DF10C  4B E2 D1 F5 */	bl Matrix_translate
/* 805DF110  48 00 00 24 */	b lbl_805DF134
lbl_805DF114:
/* 805DF114  3C 60 80 65 */	lis r3, data_8064B29C@ha /* 0x8064B29C@ha */
/* 805DF118  3C 80 80 65 */	lis r4, lit_1203@ha /* 0x8064B2FC@ha */
/* 805DF11C  38 A3 B2 9C */	addi r5, r3, data_8064B29C@l /* 0x8064B29C@l */
/* 805DF120  C0 64 B2 FC */	lfs f3, lit_1203@l(r4)  /* 0x8064B2FC@l */
/* 805DF124  C0 25 00 00 */	lfs f1, 0(r5)
/* 805DF128  38 60 00 00 */	li r3, 0
/* 805DF12C  FC 40 08 90 */	fmr f2, f1
/* 805DF130  4B E2 D1 D1 */	bl Matrix_translate
lbl_805DF134:
/* 805DF134  2C 1C 00 00 */	cmpwi r28, 0
/* 805DF138  41 82 00 28 */	beq lbl_805DF160
/* 805DF13C  3C 60 80 65 */	lis r3, lit_1204@ha /* 0x8064B300@ha */
/* 805DF140  3C 80 80 65 */	lis r4, data_8064B29C@ha /* 0x8064B29C@ha */
/* 805DF144  38 A3 B3 00 */	addi r5, r3, lit_1204@l /* 0x8064B300@l */
/* 805DF148  C0 64 B2 9C */	lfs f3, data_8064B29C@l(r4)  /* 0x8064B29C@l */
/* 805DF14C  C0 25 00 00 */	lfs f1, 0(r5)
/* 805DF150  38 60 00 01 */	li r3, 1
/* 805DF154  FC 40 08 90 */	fmr f2, f1
/* 805DF158  4B E2 D2 95 */	bl Matrix_scale
/* 805DF15C  48 00 00 1C */	b lbl_805DF178
lbl_805DF160:
/* 805DF160  3C 80 80 65 */	lis r4, lit_1205@ha /* 0x8064B304@ha */
/* 805DF164  38 60 00 01 */	li r3, 1
/* 805DF168  C0 24 B3 04 */	lfs f1, lit_1205@l(r4)  /* 0x8064B304@l */
/* 805DF16C  FC 40 08 90 */	fmr f2, f1
/* 805DF170  FC 60 08 90 */	fmr f3, f1
/* 805DF174  4B E2 D2 79 */	bl Matrix_scale
lbl_805DF178:
/* 805DF178  3C 80 80 65 */	lis r4, lit_545@ha /* 0x8064B2D0@ha */
/* 805DF17C  38 60 00 01 */	li r3, 1
/* 805DF180  C0 24 B2 D0 */	lfs f1, lit_545@l(r4)  /* 0x8064B2D0@l */
/* 805DF184  FC 40 08 90 */	fmr f2, f1
/* 805DF188  FC 60 08 90 */	fmr f3, f1
/* 805DF18C  4B E2 D2 61 */	bl Matrix_scale
/* 805DF190  38 60 A0 00 */	li r3, -24576
/* 805DF194  38 80 00 00 */	li r4, 0
/* 805DF198  38 A0 32 00 */	li r5, 0x3200
/* 805DF19C  38 C0 00 01 */	li r6, 1
/* 805DF1A0  4B E2 D7 F5 */	bl Matrix_rotateXYZ
/* 805DF1A4  80 FE 02 D0 */	lwz r7, 0x2d0(r30)
/* 805DF1A8  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805DF1AC  3C A0 E7 00 */	lis r5, 0xe700
/* 805DF1B0  38 80 00 00 */	li r4, 0
/* 805DF1B4  38 C7 00 08 */	addi r6, r7, 8
/* 805DF1B8  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805DF1BC  90 DE 02 D0 */	stw r6, 0x2d0(r30)
/* 805DF1C0  7F C3 F3 78 */	mr r3, r30
/* 805DF1C4  90 A7 00 00 */	stw r5, 0(r7)
/* 805DF1C8  90 87 00 04 */	stw r4, 4(r7)
/* 805DF1CC  83 5E 02 D0 */	lwz r26, 0x2d0(r30)
/* 805DF1D0  38 9A 00 08 */	addi r4, r26, 8
/* 805DF1D4  90 9E 02 D0 */	stw r4, 0x2d0(r30)
/* 805DF1D8  90 1A 00 00 */	stw r0, 0(r26)
/* 805DF1DC  4B E2 E1 F9 */	bl _Matrix_to_Mtx_new
/* 805DF1E0  90 7A 00 04 */	stw r3, 4(r26)
/* 805DF1E4  80 7B 00 00 */	lwz r3, 0(r27)
/* 805DF1E8  4B E0 5F 21 */	bl _texture_z_light_fog_prim
/* 805DF1EC  80 DE 02 D0 */	lwz r6, 0x2d0(r30)
/* 805DF1F0  3D 40 FA 00 */	lis r10, 0xFA00 /* 0xFA000080@ha */
/* 805DF1F4  3C 60 00 23 */	lis r3, 0x0023 /* 0x00230405@ha */
/* 805DF1F8  38 80 FF FF */	li r4, -1
/* 805DF1FC  38 06 00 08 */	addi r0, r6, 8
/* 805DF200  38 AA 00 80 */	addi r5, r10, 0x0080 /* 0xFA000080@l */
/* 805DF204  90 1E 02 D0 */	stw r0, 0x2d0(r30)
/* 805DF208  3D 20 D9 00 */	lis r9, 0xd900
/* 805DF20C  2C 1C 00 00 */	cmpwi r28, 0
/* 805DF210  38 03 04 05 */	addi r0, r3, 0x0405 /* 0x00230405@l */
/* 805DF214  90 A6 00 00 */	stw r5, 0(r6)
/* 805DF218  90 86 00 04 */	stw r4, 4(r6)
/* 805DF21C  80 9E 02 D0 */	lwz r4, 0x2d0(r30)
/* 805DF220  38 64 00 08 */	addi r3, r4, 8
/* 805DF224  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 805DF228  91 24 00 00 */	stw r9, 0(r4)
/* 805DF22C  90 04 00 04 */	stw r0, 4(r4)
/* 805DF230  41 82 00 80 */	beq lbl_805DF2B0
/* 805DF234  81 1E 02 D0 */	lwz r8, 0x2d0(r30)
/* 805DF238  3C E0 00 01 */	lis r7, 0x0001 /* 0x00010401@ha */
/* 805DF23C  3C C0 E2 00 */	lis r6, 0xE200 /* 0xE200001C@ha */
/* 805DF240  3C A0 C8 10 */	lis r5, 0xC810 /* 0xC81049F8@ha */
/* 805DF244  38 08 00 08 */	addi r0, r8, 8
/* 805DF248  3C 80 FD 00 */	lis r4, 0xFD00 /* 0xFCFFFFFF@ha */
/* 805DF24C  90 1E 02 D0 */	stw r0, 0x2d0(r30)
/* 805DF250  3C 60 FF FE */	lis r3, 0xFFFE /* 0xFFFDFE3B@ha */
/* 805DF254  38 07 04 01 */	addi r0, r7, 0x0401 /* 0x00010401@l */
/* 805DF258  38 E0 00 80 */	li r7, 0x80
/* 805DF25C  91 28 00 00 */	stw r9, 0(r8)
/* 805DF260  38 C6 00 1C */	addi r6, r6, 0x001C /* 0xE200001C@l */
/* 805DF264  38 A5 49 F8 */	addi r5, r5, 0x49F8 /* 0xC81049F8@l */
/* 805DF268  38 84 FF FF */	addi r4, r4, 0xFFFF /* 0xFCFFFFFF@l */
/* 805DF26C  90 08 00 04 */	stw r0, 4(r8)
/* 805DF270  38 03 FE 3B */	addi r0, r3, 0xFE3B /* 0xFFFDFE3B@l */
/* 805DF274  81 1E 02 D0 */	lwz r8, 0x2d0(r30)
/* 805DF278  38 68 00 08 */	addi r3, r8, 8
/* 805DF27C  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 805DF280  91 48 00 00 */	stw r10, 0(r8)
/* 805DF284  90 E8 00 04 */	stw r7, 4(r8)
/* 805DF288  80 FE 02 D0 */	lwz r7, 0x2d0(r30)
/* 805DF28C  38 67 00 08 */	addi r3, r7, 8
/* 805DF290  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 805DF294  90 C7 00 00 */	stw r6, 0(r7)
/* 805DF298  90 A7 00 04 */	stw r5, 4(r7)
/* 805DF29C  80 BE 02 D0 */	lwz r5, 0x2d0(r30)
/* 805DF2A0  38 65 00 08 */	addi r3, r5, 8
/* 805DF2A4  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 805DF2A8  90 85 00 00 */	stw r4, 0(r5)
/* 805DF2AC  90 05 00 04 */	stw r0, 4(r5)
lbl_805DF2B0:
/* 805DF2B0  7F 63 DB 78 */	mr r3, r27
/* 805DF2B4  7F A5 EB 78 */	mr r5, r29
/* 805DF2B8  38 9F 00 18 */	addi r4, r31, 0x18
/* 805DF2BC  38 C0 00 00 */	li r6, 0
/* 805DF2C0  38 E0 00 00 */	li r7, 0
/* 805DF2C4  39 00 00 00 */	li r8, 0
/* 805DF2C8  4B D9 24 71 */	bl cKF_Si3_draw_R_SV
lbl_805DF2CC:
/* 805DF2CC  39 61 00 20 */	addi r11, r1, 0x20
/* 805DF2D0  4B AB BC 45 */	bl func_8009AF14
/* 805DF2D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805DF2D8  7C 08 03 A6 */	mtlr r0
/* 805DF2DC  38 21 00 20 */	addi r1, r1, 0x20
/* 805DF2E0  4E 80 00 20 */	blr 
