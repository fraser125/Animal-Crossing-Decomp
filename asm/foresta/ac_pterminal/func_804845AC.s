lbl_804845AC:
/* 804845AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804845B0  7C 08 02 A6 */	mflr r0
/* 804845B4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804845B8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804845BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804845C0  3C 63 00 02 */	addis r3, r3, 2
/* 804845C4  88 03 60 03 */	lbz r0, 0x6003(r3)
/* 804845C8  54 03 07 BE */	clrlwi r3, r0, 0x1e
/* 804845CC  4B F2 EF ED */	bl mHS_get_arrange_idx
/* 804845D0  1C A3 26 B0 */	mulli r5, r3, 0x26b0
/* 804845D4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804845D8  38 80 00 0A */	li r4, 0xa
/* 804845DC  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 804845E0  7C 60 2A 14 */	add r3, r0, r5
/* 804845E4  3C 63 00 01 */	addis r3, r3, 1
/* 804845E8  38 63 B7 18 */	addi r3, r3, -18664
/* 804845EC  4B F3 82 B9 */	bl mMl_chk_mail_free_space
/* 804845F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804845F4  7C 08 03 A6 */	mtlr r0
/* 804845F8  38 21 00 10 */	addi r1, r1, 0x10
/* 804845FC  4E 80 00 20 */	blr 
