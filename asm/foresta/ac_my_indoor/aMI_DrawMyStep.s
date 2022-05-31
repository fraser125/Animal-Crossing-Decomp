lbl_8046F4D0:
/* 8046F4D0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8046F4D4  7C 08 02 A6 */	mflr r0
/* 8046F4D8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8046F4DC  39 61 00 30 */	addi r11, r1, 0x30
/* 8046F4E0  4B C2 B9 E1 */	bl func_8009AEC0
/* 8046F4E4  3C A0 80 68 */	lis r5, data_80686FF0@ha /* 0x80686FF0@ha */
/* 8046F4E8  7C 9C 23 78 */	mr r28, r4
/* 8046F4EC  7C 7B 1B 78 */	mr r27, r3
/* 8046F4F0  7F 83 E3 78 */	mr r3, r28
/* 8046F4F4  3B E5 6F F0 */	addi r31, r5, data_80686FF0@l /* 0x80686FF0@l */
/* 8046F4F8  4B F4 92 21 */	bl Global_kankyo_set_room_prim
/* 8046F4FC  80 7C 00 00 */	lwz r3, 0(r28)
/* 8046F500  4B F7 5C 09 */	bl _texture_z_light_fog_prim
/* 8046F504  3B C0 00 00 */	li r30, 0
/* 8046F508  3B 40 00 00 */	li r26, 0
/* 8046F50C  3B 20 00 00 */	li r25, 0
lbl_8046F510:
/* 8046F510  38 19 01 F0 */	addi r0, r25, 0x1f0
/* 8046F514  7C 1B 00 2E */	lwzx r0, r27, r0
/* 8046F518  2C 00 00 00 */	cmpwi r0, 0
/* 8046F51C  41 82 00 B0 */	beq lbl_8046F5CC
/* 8046F520  A8 1B 01 D4 */	lha r0, 0x1d4(r27)
/* 8046F524  38 7F 00 00 */	addi r3, r31, 0
/* 8046F528  1C 80 00 1C */	mulli r4, r0, 0x1c
/* 8046F52C  38 04 00 18 */	addi r0, r4, 0x18
/* 8046F530  7C 03 00 2E */	lwzx r0, r3, r0
/* 8046F534  2C 00 00 00 */	cmpwi r0, 0
/* 8046F538  41 80 00 94 */	blt lbl_8046F5CC
/* 8046F53C  2C 00 00 03 */	cmpwi r0, 3
/* 8046F540  40 80 00 8C */	bge lbl_8046F5CC
/* 8046F544  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8046F548  38 9F 01 54 */	addi r4, r31, 0x154
/* 8046F54C  83 BC 00 00 */	lwz r29, 0(r28)
/* 8046F550  38 60 00 00 */	li r3, 0
/* 8046F554  7C 84 02 14 */	add r4, r4, r0
/* 8046F558  C0 24 00 00 */	lfs f1, 0(r4)
/* 8046F55C  C0 44 00 04 */	lfs f2, 4(r4)
/* 8046F560  C0 64 00 08 */	lfs f3, 8(r4)
/* 8046F564  4B F9 CD 9D */	bl Matrix_translate
/* 8046F568  3C 80 80 64 */	lis r4, data_8064499C@ha /* 0x8064499C@ha */
/* 8046F56C  38 7F 00 C8 */	addi r3, r31, 0xc8
/* 8046F570  7C 03 CC 2E */	lfsx f0, r3, r25
/* 8046F574  38 60 00 01 */	li r3, 1
/* 8046F578  C0 44 49 9C */	lfs f2, data_8064499C@l(r4)  /* 0x8064499C@l */
/* 8046F57C  FC 60 10 90 */	fmr f3, f2
/* 8046F580  EC 22 00 32 */	fmuls f1, f2, f0
/* 8046F584  4B F9 CE 69 */	bl Matrix_scale
/* 8046F588  83 1D 02 D0 */	lwz r24, 0x2d0(r29)
/* 8046F58C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8046F590  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8046F594  38 78 00 08 */	addi r3, r24, 8
/* 8046F598  90 7D 02 D0 */	stw r3, 0x2d0(r29)
/* 8046F59C  90 18 00 00 */	stw r0, 0(r24)
/* 8046F5A0  80 7C 00 00 */	lwz r3, 0(r28)
/* 8046F5A4  4B F9 DE 31 */	bl _Matrix_to_Mtx_new
/* 8046F5A8  90 78 00 04 */	stw r3, 4(r24)
/* 8046F5AC  3C 00 DE 00 */	lis r0, 0xde00
/* 8046F5B0  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 8046F5B4  80 BD 02 D0 */	lwz r5, 0x2d0(r29)
/* 8046F5B8  38 85 00 08 */	addi r4, r5, 8
/* 8046F5BC  90 9D 02 D0 */	stw r4, 0x2d0(r29)
/* 8046F5C0  90 05 00 00 */	stw r0, 0(r5)
/* 8046F5C4  7C 03 D0 2E */	lwzx r0, r3, r26
/* 8046F5C8  90 05 00 04 */	stw r0, 4(r5)
lbl_8046F5CC:
/* 8046F5CC  3B DE 00 01 */	addi r30, r30, 1
/* 8046F5D0  3B 39 00 04 */	addi r25, r25, 4
/* 8046F5D4  2C 1E 00 04 */	cmpwi r30, 4
/* 8046F5D8  3B 5A 00 08 */	addi r26, r26, 8
/* 8046F5DC  41 80 FF 34 */	blt lbl_8046F510
/* 8046F5E0  39 61 00 30 */	addi r11, r1, 0x30
/* 8046F5E4  4B C2 B9 29 */	bl func_8009AF0C
/* 8046F5E8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8046F5EC  7C 08 03 A6 */	mtlr r0
/* 8046F5F0  38 21 00 30 */	addi r1, r1, 0x30
/* 8046F5F4  4E 80 00 20 */	blr 
