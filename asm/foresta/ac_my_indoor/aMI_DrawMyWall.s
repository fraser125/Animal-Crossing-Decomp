lbl_8046F900:
/* 8046F900  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8046F904  7C 08 02 A6 */	mflr r0
/* 8046F908  90 01 00 34 */	stw r0, 0x34(r1)
/* 8046F90C  39 61 00 30 */	addi r11, r1, 0x30
/* 8046F910  4B C2 B5 B5 */	bl func_8009AEC4
/* 8046F914  A8 03 01 82 */	lha r0, 0x182(r3)
/* 8046F918  3C A0 80 68 */	lis r5, data_80686FF0@ha /* 0x80686FF0@ha */
/* 8046F91C  A8 C3 01 D4 */	lha r6, 0x1d4(r3)
/* 8046F920  7C 9A 23 78 */	mr r26, r4
/* 8046F924  1C 80 00 18 */	mulli r4, r0, 0x18
/* 8046F928  38 05 6F F0 */	addi r0, r5, data_80686FF0@l /* 0x80686FF0@l */
/* 8046F92C  38 84 01 94 */	addi r4, r4, 0x194
/* 8046F930  7F C3 20 2E */	lwzx r30, r3, r4
/* 8046F934  1C 86 00 1C */	mulli r4, r6, 0x1c
/* 8046F938  7F 43 D3 78 */	mr r3, r26
/* 8046F93C  3B BE 00 20 */	addi r29, r30, 0x20
/* 8046F940  3B 9E 08 20 */	addi r28, r30, 0x820
/* 8046F944  7F 60 22 14 */	add r27, r0, r4
/* 8046F948  4B F4 8D D1 */	bl Global_kankyo_set_room_prim
/* 8046F94C  80 1B 00 04 */	lwz r0, 4(r27)
/* 8046F950  28 00 00 00 */	cmplwi r0, 0
/* 8046F954  41 82 00 CC */	beq lbl_8046FA20
/* 8046F958  83 FA 00 00 */	lwz r31, 0(r26)
/* 8046F95C  7F E3 FB 78 */	mr r3, r31
/* 8046F960  4B F7 57 A9 */	bl _texture_z_light_fog_prim
/* 8046F964  3C 80 80 64 */	lis r4, lit_671@ha /* 0x806449A0@ha */
/* 8046F968  38 60 00 00 */	li r3, 0
/* 8046F96C  C0 24 49 A0 */	lfs f1, lit_671@l(r4)  /* 0x806449A0@l */
/* 8046F970  FC 40 08 90 */	fmr f2, f1
/* 8046F974  FC 60 08 90 */	fmr f3, f1
/* 8046F978  4B F9 C9 89 */	bl Matrix_translate
/* 8046F97C  3C 80 80 64 */	lis r4, lit_672@ha /* 0x806449A4@ha */
/* 8046F980  38 60 00 01 */	li r3, 1
/* 8046F984  C0 24 49 A4 */	lfs f1, lit_672@l(r4)  /* 0x806449A4@l */
/* 8046F988  FC 40 08 90 */	fmr f2, f1
/* 8046F98C  FC 60 08 90 */	fmr f3, f1
/* 8046F990  4B F9 CA 5D */	bl Matrix_scale
/* 8046F994  83 3F 02 D0 */	lwz r25, 0x2d0(r31)
/* 8046F998  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8046F99C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8046F9A0  38 79 00 08 */	addi r3, r25, 8
/* 8046F9A4  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8046F9A8  90 19 00 00 */	stw r0, 0(r25)
/* 8046F9AC  80 7A 00 00 */	lwz r3, 0(r26)
/* 8046F9B0  4B F9 DA 25 */	bl _Matrix_to_Mtx_new
/* 8046F9B4  90 79 00 04 */	stw r3, 4(r25)
/* 8046F9B8  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 8046F9BC  38 A3 00 20 */	addi r5, r3, 0x0020 /* 0xDB060020@l */
/* 8046F9C0  3C 00 DE 00 */	lis r0, 0xde00
/* 8046F9C4  80 FF 02 D0 */	lwz r7, 0x2d0(r31)
/* 8046F9C8  38 83 00 24 */	addi r4, r3, 0x24
/* 8046F9CC  38 63 00 28 */	addi r3, r3, 0x28
/* 8046F9D0  38 C7 00 08 */	addi r6, r7, 8
/* 8046F9D4  90 DF 02 D0 */	stw r6, 0x2d0(r31)
/* 8046F9D8  90 A7 00 00 */	stw r5, 0(r7)
/* 8046F9DC  93 A7 00 04 */	stw r29, 4(r7)
/* 8046F9E0  80 DF 02 D0 */	lwz r6, 0x2d0(r31)
/* 8046F9E4  38 A6 00 08 */	addi r5, r6, 8
/* 8046F9E8  90 BF 02 D0 */	stw r5, 0x2d0(r31)
/* 8046F9EC  90 86 00 00 */	stw r4, 0(r6)
/* 8046F9F0  93 86 00 04 */	stw r28, 4(r6)
/* 8046F9F4  80 BF 02 D0 */	lwz r5, 0x2d0(r31)
/* 8046F9F8  38 85 00 08 */	addi r4, r5, 8
/* 8046F9FC  90 9F 02 D0 */	stw r4, 0x2d0(r31)
/* 8046FA00  90 65 00 00 */	stw r3, 0(r5)
/* 8046FA04  93 C5 00 04 */	stw r30, 4(r5)
/* 8046FA08  80 9F 02 D0 */	lwz r4, 0x2d0(r31)
/* 8046FA0C  38 64 00 08 */	addi r3, r4, 8
/* 8046FA10  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8046FA14  90 04 00 00 */	stw r0, 0(r4)
/* 8046FA18  80 1B 00 04 */	lwz r0, 4(r27)
/* 8046FA1C  90 04 00 04 */	stw r0, 4(r4)
lbl_8046FA20:
/* 8046FA20  39 61 00 30 */	addi r11, r1, 0x30
/* 8046FA24  4B C2 B4 ED */	bl func_8009AF10
/* 8046FA28  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8046FA2C  7C 08 03 A6 */	mtlr r0
/* 8046FA30  38 21 00 30 */	addi r1, r1, 0x30
/* 8046FA34  4E 80 00 20 */	blr 
