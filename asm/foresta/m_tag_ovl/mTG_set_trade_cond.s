lbl_805F381C:
/* 805F381C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F3820  7C 08 02 A6 */	mflr r0
/* 805F3824  3C E0 81 14 */	lis r7, common_data@ha /* 0x81138538@ha */
/* 805F3828  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F382C  39 07 85 38 */	addi r8, r7, common_data@l /* 0x81138538@l */
/* 805F3830  3D 08 00 01 */	addis r8, r8, 1
/* 805F3834  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805F3838  7C 7F 1B 78 */	mr r31, r3
/* 805F383C  93 C1 00 08 */	stw r30, 8(r1)
/* 805F3840  81 23 00 2C */	lwz r9, 0x2c(r3)
/* 805F3844  80 04 00 3C */	lwz r0, 0x3c(r4)
/* 805F3848  81 29 09 7C */	lwz r9, 0x97c(r9)
/* 805F384C  1C E0 26 B0 */	mulli r7, r0, 0x26b0
/* 805F3850  80 09 00 44 */	lwz r0, 0x44(r9)
/* 805F3854  3B C9 00 08 */	addi r30, r9, 8
/* 805F3858  7C E8 3A 14 */	add r7, r8, r7
/* 805F385C  54 00 18 38 */	slwi r0, r0, 3
/* 805F3860  7C E7 02 14 */	add r7, r7, r0
/* 805F3864  B0 A7 C2 BE */	sth r5, -0x3d42(r7)
/* 805F3868  38 A0 00 00 */	li r5, 0
/* 805F386C  80 E4 00 3C */	lwz r7, 0x3c(r4)
/* 805F3870  38 80 00 00 */	li r4, 0
/* 805F3874  80 09 00 44 */	lwz r0, 0x44(r9)
/* 805F3878  1C E7 26 B0 */	mulli r7, r7, 0x26b0
/* 805F387C  54 00 18 38 */	slwi r0, r0, 3
/* 805F3880  7C E8 3A 14 */	add r7, r8, r7
/* 805F3884  7C E7 02 14 */	add r7, r7, r0
/* 805F3888  90 C7 C2 C0 */	stw r6, -0x3d40(r7)
/* 805F388C  4B FF BF 29 */	bl mTG_return_tag_init
/* 805F3890  38 60 00 33 */	li r3, 0x33
/* 805F3894  48 03 A4 71 */	bl sAdo_SysTrgStart
/* 805F3898  80 DF 00 2C */	lwz r6, 0x2c(r31)
/* 805F389C  7F E3 FB 78 */	mr r3, r31
/* 805F38A0  7F C4 F3 78 */	mr r4, r30
/* 805F38A4  38 A0 00 04 */	li r5, 4
/* 805F38A8  80 C6 09 9C */	lwz r6, 0x99c(r6)
/* 805F38AC  81 86 00 38 */	lwz r12, 0x38(r6)
/* 805F38B0  7D 89 03 A6 */	mtctr r12
/* 805F38B4  4E 80 04 21 */	bctrl 
/* 805F38B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F38BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805F38C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 805F38C4  7C 08 03 A6 */	mtlr r0
/* 805F38C8  38 21 00 10 */	addi r1, r1, 0x10
/* 805F38CC  4E 80 00 20 */	blr 
