lbl_804AC148:
/* 804AC148  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AC14C  7C 08 02 A6 */	mflr r0
/* 804AC150  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804AC154  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AC158  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804AC15C  93 C1 00 08 */	stw r30, 8(r1)
/* 804AC160  7C 7E 1B 78 */	mr r30, r3
/* 804AC164  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 804AC168  3F E3 00 02 */	addis r31, r3, 2
/* 804AC16C  80 1F 60 A0 */	lwz r0, 0x60a0(r31)
/* 804AC170  28 00 00 00 */	cmplwi r0, 0
/* 804AC174  40 82 00 40 */	bne lbl_804AC1B4
/* 804AC178  3C 60 81 1D */	lis r3, aTOL_clip@ha /* 0x811CF5D0@ha */
/* 804AC17C  38 80 00 0C */	li r4, 0xc
/* 804AC180  38 63 F5 D0 */	addi r3, r3, aTOL_clip@l /* 0x811CF5D0@l */
/* 804AC184  90 7F 60 A0 */	stw r3, 0x60a0(r31)
/* 804AC188  4B BB 0E E1 */	bl bzero
/* 804AC18C  3C 60 80 4B */	lis r3, aTOL_birth_proc@ha /* 0x804ABFF8@ha */
/* 804AC190  80 9F 60 A0 */	lwz r4, 0x60a0(r31)
/* 804AC194  38 03 BF F8 */	addi r0, r3, aTOL_birth_proc@l /* 0x804ABFF8@l */
/* 804AC198  3C 60 80 4B */	lis r3, aTOL_chg_request_mode_proc@ha /* 0x804AC0B8@ha */
/* 804AC19C  90 04 00 00 */	stw r0, 0(r4)
/* 804AC1A0  38 03 C0 B8 */	addi r0, r3, aTOL_chg_request_mode_proc@l /* 0x804AC0B8@l */
/* 804AC1A4  7F C3 F3 78 */	mr r3, r30
/* 804AC1A8  80 9F 60 A0 */	lwz r4, 0x60a0(r31)
/* 804AC1AC  90 04 00 04 */	stw r0, 4(r4)
/* 804AC1B0  4B FF FF 29 */	bl aTOL_secure_pl_umbrella_bank_area
lbl_804AC1B4:
/* 804AC1B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AC1B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804AC1BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 804AC1C0  7C 08 03 A6 */	mtlr r0
/* 804AC1C4  38 21 00 10 */	addi r1, r1, 0x10
/* 804AC1C8  4E 80 00 20 */	blr 
