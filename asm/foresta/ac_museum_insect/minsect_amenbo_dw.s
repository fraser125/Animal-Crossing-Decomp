lbl_8045B0C8:
/* 8045B0C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8045B0CC  7C 08 02 A6 */	mflr r0
/* 8045B0D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8045B0D4  39 61 00 20 */	addi r11, r1, 0x20
/* 8045B0D8  4B C3 FD F9 */	bl func_8009AED0
/* 8045B0DC  7C 9C 23 78 */	mr r28, r4
/* 8045B0E0  7C 7F 1B 78 */	mr r31, r3
/* 8045B0E4  80 64 00 00 */	lwz r3, 0(r4)
/* 8045B0E8  4B F8 A0 71 */	bl _texture_z_light_fog_prim_xlu
/* 8045B0EC  83 BC 00 00 */	lwz r29, 0(r28)
/* 8045B0F0  38 60 00 00 */	li r3, 0
/* 8045B0F4  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8045B0F8  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 8045B0FC  C0 7F 00 24 */	lfs f3, 0x24(r31)
/* 8045B100  4B FB 12 01 */	bl Matrix_translate
/* 8045B104  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 8045B108  38 60 00 01 */	li r3, 1
/* 8045B10C  FC 40 08 90 */	fmr f2, f1
/* 8045B110  FC 60 08 90 */	fmr f3, f1
/* 8045B114  4B FB 12 D9 */	bl Matrix_scale
/* 8045B118  A8 9F 00 6A */	lha r4, 0x6a(r31)
/* 8045B11C  38 C0 00 01 */	li r6, 1
/* 8045B120  A8 7F 00 68 */	lha r3, 0x68(r31)
/* 8045B124  38 04 80 00 */	addi r0, r4, -32768
/* 8045B128  A8 BF 00 6C */	lha r5, 0x6c(r31)
/* 8045B12C  7C 04 07 34 */	extsh r4, r0
/* 8045B130  4B FB 18 65 */	bl Matrix_rotateXYZ
/* 8045B134  83 DD 02 D0 */	lwz r30, 0x2d0(r29)
/* 8045B138  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8045B13C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8045B140  38 7E 00 08 */	addi r3, r30, 8
/* 8045B144  90 7D 02 D0 */	stw r3, 0x2d0(r29)
/* 8045B148  90 1E 00 00 */	stw r0, 0(r30)
/* 8045B14C  80 7C 00 00 */	lwz r3, 0(r28)
/* 8045B150  4B FB 22 85 */	bl _Matrix_to_Mtx_new
/* 8045B154  90 7E 00 04 */	stw r3, 4(r30)
/* 8045B158  3C 80 01 00 */	lis r4, 0x0100 /* 0x00FF9BFF@ha */
/* 8045B15C  3C 60 80 68 */	lis r3, minsect_mdl@ha /* 0x8068654C@ha */
/* 8045B160  3C A0 FB 00 */	lis r5, 0xfb00
/* 8045B164  80 FD 02 D0 */	lwz r7, 0x2d0(r29)
/* 8045B168  38 84 9B FF */	addi r4, r4, 0x9BFF /* 0x00FF9BFF@l */
/* 8045B16C  3C 00 DE 00 */	lis r0, 0xde00
/* 8045B170  38 63 65 4C */	addi r3, r3, minsect_mdl@l /* 0x8068654C@l */
/* 8045B174  38 C7 00 08 */	addi r6, r7, 8
/* 8045B178  90 DD 02 D0 */	stw r6, 0x2d0(r29)
/* 8045B17C  90 A7 00 00 */	stw r5, 0(r7)
/* 8045B180  90 87 00 04 */	stw r4, 4(r7)
/* 8045B184  80 BD 02 D0 */	lwz r5, 0x2d0(r29)
/* 8045B188  38 85 00 08 */	addi r4, r5, 8
/* 8045B18C  90 9D 02 D0 */	stw r4, 0x2d0(r29)
/* 8045B190  90 05 00 00 */	stw r0, 0(r5)
/* 8045B194  80 1F 00 00 */	lwz r0, 0(r31)
/* 8045B198  54 00 10 3A */	slwi r0, r0, 2
/* 8045B19C  7C 63 00 2E */	lwzx r3, r3, r0
/* 8045B1A0  80 03 00 00 */	lwz r0, 0(r3)
/* 8045B1A4  90 05 00 04 */	stw r0, 4(r5)
/* 8045B1A8  39 61 00 20 */	addi r11, r1, 0x20
/* 8045B1AC  4B C3 FD 71 */	bl func_8009AF1C
/* 8045B1B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8045B1B4  7C 08 03 A6 */	mtlr r0
/* 8045B1B8  38 21 00 20 */	addi r1, r1, 0x20
/* 8045B1BC  4E 80 00 20 */	blr 
