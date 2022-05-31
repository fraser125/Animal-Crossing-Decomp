lbl_8046FA38:
/* 8046FA38  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8046FA3C  7C 08 02 A6 */	mflr r0
/* 8046FA40  90 01 00 34 */	stw r0, 0x34(r1)
/* 8046FA44  39 61 00 30 */	addi r11, r1, 0x30
/* 8046FA48  4B C2 B4 7D */	bl func_8009AEC4
/* 8046FA4C  A8 A3 01 82 */	lha r5, 0x182(r3)
/* 8046FA50  7C 9A 23 78 */	mr r26, r4
/* 8046FA54  80 03 01 7C */	lwz r0, 0x17c(r3)
/* 8046FA58  1C 85 00 18 */	mulli r4, r5, 0x18
/* 8046FA5C  2C 00 00 00 */	cmpwi r0, 0
/* 8046FA60  38 04 01 94 */	addi r0, r4, 0x194
/* 8046FA64  7F A3 00 2E */	lwzx r29, r3, r0
/* 8046FA68  3B 9D 00 20 */	addi r28, r29, 0x20
/* 8046FA6C  3B 7D 08 20 */	addi r27, r29, 0x820
/* 8046FA70  40 82 00 20 */	bne lbl_8046FA90
/* 8046FA74  A8 83 01 D4 */	lha r4, 0x1d4(r3)
/* 8046FA78  3C 60 80 68 */	lis r3, data_80686FF0@ha /* 0x80686FF0@ha */
/* 8046FA7C  38 03 6F F0 */	addi r0, r3, data_80686FF0@l /* 0x80686FF0@l */
/* 8046FA80  1C 64 00 1C */	mulli r3, r4, 0x1c
/* 8046FA84  7C 60 1A 14 */	add r3, r0, r3
/* 8046FA88  3B E3 00 08 */	addi r31, r3, 8
/* 8046FA8C  48 00 00 1C */	b lbl_8046FAA8
lbl_8046FA90:
/* 8046FA90  A8 83 01 D4 */	lha r4, 0x1d4(r3)
/* 8046FA94  3C 60 80 68 */	lis r3, data_80686FF0@ha /* 0x80686FF0@ha */
/* 8046FA98  38 03 6F F0 */	addi r0, r3, data_80686FF0@l /* 0x80686FF0@l */
/* 8046FA9C  1C 64 00 1C */	mulli r3, r4, 0x1c
/* 8046FAA0  7C 60 1A 14 */	add r3, r0, r3
/* 8046FAA4  3B E3 00 10 */	addi r31, r3, 0x10
lbl_8046FAA8:
/* 8046FAA8  7F 43 D3 78 */	mr r3, r26
/* 8046FAAC  4B F4 8C 6D */	bl Global_kankyo_set_room_prim
/* 8046FAB0  80 1F 00 04 */	lwz r0, 4(r31)
/* 8046FAB4  28 00 00 00 */	cmplwi r0, 0
/* 8046FAB8  41 82 00 CC */	beq lbl_8046FB84
/* 8046FABC  83 DA 00 00 */	lwz r30, 0(r26)
/* 8046FAC0  7F C3 F3 78 */	mr r3, r30
/* 8046FAC4  4B F7 56 45 */	bl _texture_z_light_fog_prim
/* 8046FAC8  3C 80 80 64 */	lis r4, lit_671@ha /* 0x806449A0@ha */
/* 8046FACC  38 60 00 00 */	li r3, 0
/* 8046FAD0  C0 24 49 A0 */	lfs f1, lit_671@l(r4)  /* 0x806449A0@l */
/* 8046FAD4  FC 40 08 90 */	fmr f2, f1
/* 8046FAD8  FC 60 08 90 */	fmr f3, f1
/* 8046FADC  4B F9 C8 25 */	bl Matrix_translate
/* 8046FAE0  3C 80 80 64 */	lis r4, lit_672@ha /* 0x806449A4@ha */
/* 8046FAE4  38 60 00 01 */	li r3, 1
/* 8046FAE8  C0 24 49 A4 */	lfs f1, lit_672@l(r4)  /* 0x806449A4@l */
/* 8046FAEC  FC 40 08 90 */	fmr f2, f1
/* 8046FAF0  FC 60 08 90 */	fmr f3, f1
/* 8046FAF4  4B F9 C8 F9 */	bl Matrix_scale
/* 8046FAF8  83 3E 02 D0 */	lwz r25, 0x2d0(r30)
/* 8046FAFC  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8046FB00  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8046FB04  38 79 00 08 */	addi r3, r25, 8
/* 8046FB08  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 8046FB0C  90 19 00 00 */	stw r0, 0(r25)
/* 8046FB10  80 7A 00 00 */	lwz r3, 0(r26)
/* 8046FB14  4B F9 D8 C1 */	bl _Matrix_to_Mtx_new
/* 8046FB18  90 79 00 04 */	stw r3, 4(r25)
/* 8046FB1C  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 8046FB20  38 A3 00 20 */	addi r5, r3, 0x0020 /* 0xDB060020@l */
/* 8046FB24  3C 00 DE 00 */	lis r0, 0xde00
/* 8046FB28  80 FE 02 D0 */	lwz r7, 0x2d0(r30)
/* 8046FB2C  38 83 00 24 */	addi r4, r3, 0x24
/* 8046FB30  38 63 00 28 */	addi r3, r3, 0x28
/* 8046FB34  38 C7 00 08 */	addi r6, r7, 8
/* 8046FB38  90 DE 02 D0 */	stw r6, 0x2d0(r30)
/* 8046FB3C  90 A7 00 00 */	stw r5, 0(r7)
/* 8046FB40  93 87 00 04 */	stw r28, 4(r7)
/* 8046FB44  80 DE 02 D0 */	lwz r6, 0x2d0(r30)
/* 8046FB48  38 A6 00 08 */	addi r5, r6, 8
/* 8046FB4C  90 BE 02 D0 */	stw r5, 0x2d0(r30)
/* 8046FB50  90 86 00 00 */	stw r4, 0(r6)
/* 8046FB54  93 66 00 04 */	stw r27, 4(r6)
/* 8046FB58  80 BE 02 D0 */	lwz r5, 0x2d0(r30)
/* 8046FB5C  38 85 00 08 */	addi r4, r5, 8
/* 8046FB60  90 9E 02 D0 */	stw r4, 0x2d0(r30)
/* 8046FB64  90 65 00 00 */	stw r3, 0(r5)
/* 8046FB68  93 A5 00 04 */	stw r29, 4(r5)
/* 8046FB6C  80 9E 02 D0 */	lwz r4, 0x2d0(r30)
/* 8046FB70  38 64 00 08 */	addi r3, r4, 8
/* 8046FB74  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 8046FB78  90 04 00 00 */	stw r0, 0(r4)
/* 8046FB7C  80 1F 00 04 */	lwz r0, 4(r31)
/* 8046FB80  90 04 00 04 */	stw r0, 4(r4)
lbl_8046FB84:
/* 8046FB84  39 61 00 30 */	addi r11, r1, 0x30
/* 8046FB88  4B C2 B3 89 */	bl func_8009AF10
/* 8046FB8C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8046FB90  7C 08 03 A6 */	mtlr r0
/* 8046FB94  38 21 00 30 */	addi r1, r1, 0x30
/* 8046FB98  4E 80 00 20 */	blr 
