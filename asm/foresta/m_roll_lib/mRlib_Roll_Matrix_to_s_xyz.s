lbl_803F6864:
/* 803F6864  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 803F6868  7C 08 02 A6 */	mflr r0
/* 803F686C  90 01 00 74 */	stw r0, 0x74(r1)
/* 803F6870  39 61 00 70 */	addi r11, r1, 0x70
/* 803F6874  4B CA 46 61 */	bl func_8009AED4
/* 803F6878  7C 7D 1B 78 */	mr r29, r3
/* 803F687C  7C 9E 23 78 */	mr r30, r4
/* 803F6880  A8 63 00 36 */	lha r3, 0x36(r3)
/* 803F6884  7C BF 2B 78 */	mr r31, r5
/* 803F6888  4B FC 42 15 */	bl cos_s
/* 803F688C  D0 21 00 08 */	stfs f1, 8(r1)
/* 803F6890  A8 7D 00 36 */	lha r3, 0x36(r29)
/* 803F6894  4B FC 42 5D */	bl sin_s
/* 803F6898  3C 60 80 64 */	lis r3, data_806433EC@ha /* 0x806433EC@ha */
/* 803F689C  FC 20 08 50 */	fneg f1, f1
/* 803F68A0  38 83 33 EC */	addi r4, r3, data_806433EC@l /* 0x806433EC@l */
/* 803F68A4  7F E3 FB 78 */	mr r3, r31
/* 803F68A8  C0 04 00 00 */	lfs f0, 0(r4)
/* 803F68AC  38 81 00 08 */	addi r4, r1, 8
/* 803F68B0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 803F68B4  38 A0 00 00 */	li r5, 0
/* 803F68B8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 803F68BC  48 01 76 31 */	bl Matrix_RotateVector
/* 803F68C0  A8 7E 00 00 */	lha r3, 0(r30)
/* 803F68C4  38 C0 00 01 */	li r6, 1
/* 803F68C8  A8 9E 00 02 */	lha r4, 2(r30)
/* 803F68CC  A8 BE 00 04 */	lha r5, 4(r30)
/* 803F68D0  48 01 60 C5 */	bl Matrix_rotateXYZ
/* 803F68D4  38 61 00 14 */	addi r3, r1, 0x14
/* 803F68D8  48 01 59 55 */	bl Matrix_get
/* 803F68DC  7F C4 F3 78 */	mr r4, r30
/* 803F68E0  38 61 00 14 */	addi r3, r1, 0x14
/* 803F68E4  38 A0 00 00 */	li r5, 0
/* 803F68E8  48 01 73 1D */	bl Matrix_to_rotate2_new
/* 803F68EC  39 61 00 70 */	addi r11, r1, 0x70
/* 803F68F0  4B CA 46 31 */	bl func_8009AF20
/* 803F68F4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 803F68F8  7C 08 03 A6 */	mtlr r0
/* 803F68FC  38 21 00 70 */	addi r1, r1, 0x70
/* 803F6900  4E 80 00 20 */	blr 
