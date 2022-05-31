lbl_803DEDD4:
/* 803DEDD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803DEDD8  7C 08 02 A6 */	mflr r0
/* 803DEDDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803DEDE0  39 61 00 20 */	addi r11, r1, 0x20
/* 803DEDE4  4B CB C0 ED */	bl func_8009AED0
/* 803DEDE8  7C 7C 1B 78 */	mr r28, r3
/* 803DEDEC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DEDF0  1C BC 26 B0 */	mulli r5, r28, 0x26b0
/* 803DEDF4  38 80 00 0A */	li r4, 0xa
/* 803DEDF8  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 803DEDFC  7C 60 2A 14 */	add r3, r0, r5
/* 803DEE00  3C 63 00 01 */	addis r3, r3, 1
/* 803DEE04  38 63 B7 18 */	addi r3, r3, -18664
/* 803DEE08  4B FD DB 05 */	bl mMl_count_use_mail_space
/* 803DEE0C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803DEE10  3B A0 00 00 */	li r29, 0
/* 803DEE14  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803DEE18  7C 7F 1B 78 */	mr r31, r3
/* 803DEE1C  3F C4 00 02 */	addis r30, r4, 2
/* 803DEE20  3B DE 06 9C */	addi r30, r30, 0x69c
lbl_803DEE24:
/* 803DEE24  7F C3 F3 78 */	mr r3, r30
/* 803DEE28  4B FD DC BD */	bl mMl_hunt_for_send_address
/* 803DEE2C  7C 1C 18 00 */	cmpw r28, r3
/* 803DEE30  40 82 00 08 */	bne lbl_803DEE38
/* 803DEE34  3B FF 00 01 */	addi r31, r31, 1
lbl_803DEE38:
/* 803DEE38  3B BD 00 01 */	addi r29, r29, 1
/* 803DEE3C  3B DE 01 2A */	addi r30, r30, 0x12a
/* 803DEE40  2C 1D 00 05 */	cmpwi r29, 5
/* 803DEE44  41 80 FF E0 */	blt lbl_803DEE24
/* 803DEE48  7F E3 FB 78 */	mr r3, r31
/* 803DEE4C  39 61 00 20 */	addi r11, r1, 0x20
/* 803DEE50  4B CB C0 CD */	bl func_8009AF1C
/* 803DEE54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803DEE58  7C 08 03 A6 */	mtlr r0
/* 803DEE5C  38 21 00 20 */	addi r1, r1, 0x20
/* 803DEE60  4E 80 00 20 */	blr 
