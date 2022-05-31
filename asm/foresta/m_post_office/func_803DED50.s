lbl_803DED50:
/* 803DED50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DED54  7C 08 02 A6 */	mflr r0
/* 803DED58  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803DED5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DED60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DED64  3B E0 00 00 */	li r31, 0
/* 803DED68  93 C1 00 08 */	stw r30, 8(r1)
/* 803DED6C  7C 7E 1B 78 */	mr r30, r3
/* 803DED70  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803DED74  38 80 00 05 */	li r4, 5
/* 803DED78  3C 63 00 02 */	addis r3, r3, 2
/* 803DED7C  38 63 06 9C */	addi r3, r3, 0x69c
/* 803DED80  4B FD DB 25 */	bl mMl_chk_mail_free_space
/* 803DED84  2C 03 00 00 */	cmpwi r3, 0
/* 803DED88  41 80 00 30 */	blt lbl_803DEDB8
/* 803DED8C  1C A3 01 2A */	mulli r5, r3, 0x12a
/* 803DED90  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DED94  7F C4 F3 78 */	mr r4, r30
/* 803DED98  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 803DED9C  7C 60 2A 14 */	add r3, r0, r5
/* 803DEDA0  3C 63 00 02 */	addis r3, r3, 2
/* 803DEDA4  38 63 06 9C */	addi r3, r3, 0x69c
/* 803DEDA8  4B FD DB CD */	bl mMl_copy_mail
/* 803DEDAC  7F C3 F3 78 */	mr r3, r30
/* 803DEDB0  4B FD D9 51 */	bl mMl_clear_mail
/* 803DEDB4  3B E0 00 01 */	li r31, 1
lbl_803DEDB8:
/* 803DEDB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DEDBC  7F E3 FB 78 */	mr r3, r31
/* 803DEDC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DEDC4  83 C1 00 08 */	lwz r30, 8(r1)
/* 803DEDC8  7C 08 03 A6 */	mtlr r0
/* 803DEDCC  38 21 00 10 */	addi r1, r1, 0x10
/* 803DEDD0  4E 80 00 20 */	blr 
