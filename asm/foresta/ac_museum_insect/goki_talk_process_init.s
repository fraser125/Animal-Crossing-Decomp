lbl_8046ACB0:
/* 8046ACB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046ACB4  7C 08 02 A6 */	mflr r0
/* 8046ACB8  3C A0 81 1D */	lis r5, data_811CDFD0@ha /* 0x811CDFD0@ha */
/* 8046ACBC  3C 80 80 47 */	lis r4, goki_set_talk_info_init@ha /* 0x8046AB90@ha */
/* 8046ACC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046ACC4  38 C5 DF D0 */	addi r6, r5, data_811CDFD0@l /* 0x811CDFD0@l */
/* 8046ACC8  38 A4 AB 90 */	addi r5, r4, goki_set_talk_info_init@l /* 0x8046AB90@l */
/* 8046ACCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046ACD0  7C 7F 1B 78 */	mr r31, r3
/* 8046ACD4  38 60 00 08 */	li r3, 8
/* 8046ACD8  80 86 00 00 */	lwz r4, 0(r6)
/* 8046ACDC  4B F2 F4 81 */	bl mDemo_Request
/* 8046ACE0  3C 60 80 47 */	lis r3, goki_talk_process@ha /* 0x8046AC40@ha */
/* 8046ACE4  38 03 AC 40 */	addi r0, r3, goki_talk_process@l /* 0x8046AC40@l */
/* 8046ACE8  90 1F 00 04 */	stw r0, 4(r31)
/* 8046ACEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046ACF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046ACF4  7C 08 03 A6 */	mtlr r0
/* 8046ACF8  38 21 00 10 */	addi r1, r1, 0x10
/* 8046ACFC  4E 80 00 20 */	blr 
