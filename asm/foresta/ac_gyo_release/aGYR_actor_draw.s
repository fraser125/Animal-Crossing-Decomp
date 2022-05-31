lbl_804267DC:
/* 804267DC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804267E0  7C 08 02 A6 */	mflr r0
/* 804267E4  90 01 00 44 */	stw r0, 0x44(r1)
/* 804267E8  39 61 00 40 */	addi r11, r1, 0x40
/* 804267EC  4B C7 46 E5 */	bl func_8009AED0
/* 804267F0  83 C4 00 00 */	lwz r30, 0(r4)
/* 804267F4  7C 9D 23 78 */	mr r29, r4
/* 804267F8  7C 7F 1B 78 */	mr r31, r3
/* 804267FC  4B FE 59 D9 */	bl Matrix_push
/* 80426800  7F C3 F3 78 */	mr r3, r30
/* 80426804  4B FB E9 05 */	bl _texture_z_light_fog_prim
/* 80426808  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8042680C  38 60 00 00 */	li r3, 0
/* 80426810  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 80426814  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 80426818  4B FE 5A E9 */	bl Matrix_translate
/* 8042681C  A8 1F 01 A8 */	lha r0, 0x1a8(r31)
/* 80426820  38 80 00 01 */	li r4, 1
/* 80426824  7C 00 00 D0 */	neg r0, r0
/* 80426828  7C 03 07 34 */	extsh r3, r0
/* 8042682C  4B FE 5C 8D */	bl Matrix_RotateX
/* 80426830  A8 7F 01 AA */	lha r3, 0x1aa(r31)
/* 80426834  38 80 00 01 */	li r4, 1
/* 80426838  4B FE 5E 25 */	bl Matrix_RotateY
/* 8042683C  A8 7F 01 A8 */	lha r3, 0x1a8(r31)
/* 80426840  38 80 00 01 */	li r4, 1
/* 80426844  4B FE 5F AD */	bl Matrix_RotateZ
/* 80426848  3C 60 80 64 */	lis r3, lit_656@ha /* 0x80643FAC@ha */
/* 8042684C  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80426850  C0 23 3F AC */	lfs f1, lit_656@l(r3)  /* 0x80643FAC@l */
/* 80426854  38 60 00 01 */	li r3, 1
/* 80426858  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 8042685C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80426860  C0 7F 00 64 */	lfs f3, 0x64(r31)
/* 80426864  4B FE 5B 89 */	bl Matrix_scale
/* 80426868  83 9E 02 D0 */	lwz r28, 0x2d0(r30)
/* 8042686C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80426870  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80426874  7F C3 F3 78 */	mr r3, r30
/* 80426878  38 9C 00 08 */	addi r4, r28, 8
/* 8042687C  90 9E 02 D0 */	stw r4, 0x2d0(r30)
/* 80426880  90 1C 00 00 */	stw r0, 0(r28)
/* 80426884  4B FE 6B 51 */	bl _Matrix_to_Mtx_new
/* 80426888  90 7C 00 04 */	stw r3, 4(r28)
/* 8042688C  88 1F 00 98 */	lbz r0, 0x98(r31)
/* 80426890  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80426894  41 82 00 0C */	beq lbl_804268A0
/* 80426898  38 60 00 00 */	li r3, 0
/* 8042689C  48 00 00 0C */	b lbl_804268A8
lbl_804268A0:
/* 804268A0  7F E3 FB 78 */	mr r3, r31
/* 804268A4  4B FF F7 A1 */	bl aGYR_anime_frame
lbl_804268A8:
/* 804268A8  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 804268AC  3C 00 43 30 */	lis r0, 0x4330
/* 804268B0  90 01 00 18 */	stw r0, 0x18(r1)
/* 804268B4  3C 80 80 64 */	lis r4, lit_615@ha /* 0x80643FA4@ha */
/* 804268B8  3C A0 80 68 */	lis r5, aGYO_displayList@ha /* 0x80682F88@ha */
/* 804268BC  80 FE 02 D0 */	lwz r7, 0x2d0(r30)
/* 804268C0  90 61 00 1C */	stw r3, 0x1c(r1)
/* 804268C4  38 64 3F A4 */	addi r3, r4, lit_615@l /* 0x80643FA4@l */
/* 804268C8  C8 23 00 00 */	lfd f1, 0(r3)
/* 804268CC  3C 80 80 64 */	lis r4, lit_466@ha /* 0x80643F64@ha */
/* 804268D0  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 804268D4  38 C5 2F 88 */	addi r6, r5, aGYO_displayList@l /* 0x80682F88@l */
/* 804268D8  C0 44 3F 64 */	lfs f2, lit_466@l(r4)  /* 0x80643F64@l */
/* 804268DC  38 87 00 08 */	addi r4, r7, 8
/* 804268E0  EC 00 08 28 */	fsubs f0, f0, f1
/* 804268E4  90 9E 02 D0 */	stw r4, 0x2d0(r30)
/* 804268E8  3C 00 DE 00 */	lis r0, 0xde00
/* 804268EC  3C 60 80 68 */	lis r3, offset0@ha /* 0x806831B4@ha */
/* 804268F0  90 07 00 00 */	stw r0, 0(r7)
/* 804268F4  39 03 31 B4 */	addi r8, r3, offset0@l /* 0x806831B4@l */
/* 804268F8  EC 02 00 32 */	fmuls f0, f2, f0
/* 804268FC  80 1F 01 78 */	lwz r0, 0x178(r31)
/* 80426900  7F E3 FB 78 */	mr r3, r31
/* 80426904  7F A4 EB 78 */	mr r4, r29
/* 80426908  54 00 10 3A */	slwi r0, r0, 2
/* 8042690C  38 A1 00 08 */	addi r5, r1, 8
/* 80426910  FC 00 00 1E */	fctiwz f0, f0
/* 80426914  7C C6 00 2E */	lwzx r6, r6, r0
/* 80426918  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8042691C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80426920  54 00 10 3A */	slwi r0, r0, 2
/* 80426924  7C 06 00 2E */	lwzx r0, r6, r0
/* 80426928  90 07 00 04 */	stw r0, 4(r7)
/* 8042692C  D0 5F 00 F8 */	stfs f2, 0xf8(r31)
/* 80426930  80 E8 00 00 */	lwz r7, 0(r8)
/* 80426934  80 C8 00 04 */	lwz r6, 4(r8)
/* 80426938  80 08 00 08 */	lwz r0, 8(r8)
/* 8042693C  90 E1 00 08 */	stw r7, 8(r1)
/* 80426940  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80426944  90 01 00 10 */	stw r0, 0x10(r1)
/* 80426948  4B F5 05 9D */	bl mAc_UnagiActorShadow
/* 8042694C  4B FE 58 C9 */	bl Matrix_pull
/* 80426950  39 61 00 40 */	addi r11, r1, 0x40
/* 80426954  4B C7 45 C9 */	bl func_8009AF1C
/* 80426958  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8042695C  7C 08 03 A6 */	mtlr r0
/* 80426960  38 21 00 40 */	addi r1, r1, 0x40
/* 80426964  4E 80 00 20 */	blr 
