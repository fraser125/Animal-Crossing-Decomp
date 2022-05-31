lbl_804E40B4:
/* 804E40B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E40B8  7C 08 02 A6 */	mflr r0
/* 804E40BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E40C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E40C4  93 C1 00 08 */	stw r30, 8(r1)
/* 804E40C8  7C 7E 1B 78 */	mr r30, r3
/* 804E40CC  80 03 11 2C */	lwz r0, 0x112c(r3)
/* 804E40D0  2C 00 00 00 */	cmpwi r0, 0
/* 804E40D4  41 82 00 38 */	beq lbl_804E410C
/* 804E40D8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804E40DC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804E40E0  3C 63 00 02 */	addis r3, r3, 2
/* 804E40E4  80 63 60 94 */	lwz r3, 0x6094(r3)
/* 804E40E8  83 E3 00 1C */	lwz r31, 0x1c(r3)
/* 804E40EC  28 1F 00 00 */	cmplwi r31, 0
/* 804E40F0  41 82 00 14 */	beq lbl_804E4104
/* 804E40F4  38 7F 01 78 */	addi r3, r31, 0x178
/* 804E40F8  4B F2 81 35 */	bl Matrix_get
/* 804E40FC  38 00 00 01 */	li r0, 1
/* 804E4100  90 1F 01 B8 */	stw r0, 0x1b8(r31)
lbl_804E4104:
/* 804E4104  38 00 00 00 */	li r0, 0
/* 804E4108  90 1E 11 2C */	stw r0, 0x112c(r30)
lbl_804E410C:
/* 804E410C  3C 80 80 65 */	lis r4, lit_7131@ha /* 0x8064829C@ha */
/* 804E4110  38 7E 10 5C */	addi r3, r30, 0x105c
/* 804E4114  C0 24 82 9C */	lfs f1, lit_7131@l(r4)  /* 0x8064829C@l */
/* 804E4118  4B F2 93 CD */	bl Matrix_Position_VecX
/* 804E411C  38 7E 10 A8 */	addi r3, r30, 0x10a8
/* 804E4120  4B F2 81 0D */	bl Matrix_get
/* 804E4124  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E4128  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E412C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E4130  7C 08 03 A6 */	mtlr r0
/* 804E4134  38 21 00 10 */	addi r1, r1, 0x10
/* 804E4138  4E 80 00 20 */	blr 
