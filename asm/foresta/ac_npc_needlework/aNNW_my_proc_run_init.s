lbl_805653D0:
/* 805653D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805653D4  7C 08 02 A6 */	mflr r0
/* 805653D8  3C C0 80 6C */	lis r6, target_pos_table_x@ha /* 0x806BE0E0@ha */
/* 805653DC  3C A0 80 6C */	lis r5, target_pos_table_z@ha /* 0x806BE0FC@ha */
/* 805653E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805653E4  38 C6 E0 E0 */	addi r6, r6, target_pos_table_x@l /* 0x806BE0E0@l */
/* 805653E8  38 A5 E0 FC */	addi r5, r5, target_pos_table_z@l /* 0x806BE0FC@l */
/* 805653EC  38 80 00 04 */	li r4, 4
/* 805653F0  88 03 09 B6 */	lbz r0, 0x9b6(r3)
/* 805653F4  38 E0 00 00 */	li r7, 0
/* 805653F8  54 00 08 3C */	slwi r0, r0, 1
/* 805653FC  7D 06 02 AE */	lhax r8, r6, r0
/* 80565400  38 C0 00 03 */	li r6, 3
/* 80565404  7D 25 02 AE */	lhax r9, r5, r0
/* 80565408  38 A0 00 02 */	li r5, 2
/* 8056540C  4B FF BC 2D */	bl aNNW_set_request_act
/* 80565410  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80565414  7C 08 03 A6 */	mtlr r0
/* 80565418  38 21 00 10 */	addi r1, r1, 0x10
/* 8056541C  4E 80 00 20 */	blr 
