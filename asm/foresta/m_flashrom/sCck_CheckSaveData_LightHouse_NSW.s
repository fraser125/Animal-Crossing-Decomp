lbl_803AEC38:
/* 803AEC38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AEC3C  7C 08 02 A6 */	mflr r0
/* 803AEC40  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803AEC44  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803AEC48  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AEC4C  3C 63 00 02 */	addis r3, r3, 2
/* 803AEC50  38 63 41 6C */	addi r3, r3, 0x416c
/* 803AEC54  4B FF F9 A5 */	bl func_803AE5F8
/* 803AEC58  2C 03 00 01 */	cmpwi r3, 1
/* 803AEC5C  40 82 00 28 */	bne lbl_803AEC84
/* 803AEC60  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AEC64  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AEC68  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AEC6C  38 80 01 70 */	li r4, 0x170
/* 803AEC70  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AEC74  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AEC78  4B FF DB 51 */	bl mFRm_set_errInfo
/* 803AEC7C  38 60 00 01 */	li r3, 1
/* 803AEC80  48 00 00 08 */	b lbl_803AEC88
lbl_803AEC84:
/* 803AEC84  38 60 00 00 */	li r3, 0
lbl_803AEC88:
/* 803AEC88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AEC8C  7C 08 03 A6 */	mtlr r0
/* 803AEC90  38 21 00 10 */	addi r1, r1, 0x10
/* 803AEC94  4E 80 00 20 */	blr 
