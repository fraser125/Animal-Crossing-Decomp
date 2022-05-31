lbl_8058E564:
/* 8058E564  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058E568  7C 08 02 A6 */	mflr r0
/* 8058E56C  3C 80 80 59 */	lis r4, aTM1_set_talk_info@ha /* 0x8058E3C0@ha */
/* 8058E570  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058E574  38 A4 E3 C0 */	addi r5, r4, aTM1_set_talk_info@l /* 0x8058E3C0@l */
/* 8058E578  A0 03 00 06 */	lhz r0, 6(r3)
/* 8058E57C  28 00 D0 43 */	cmplwi r0, 0xd043
/* 8058E580  40 82 00 0C */	bne lbl_8058E58C
/* 8058E584  3C 80 80 59 */	lis r4, aTM1_set_talk_info2@ha /* 0x8058E4D8@ha */
/* 8058E588  38 A4 E4 D8 */	addi r5, r4, aTM1_set_talk_info2@l /* 0x8058E4D8@l */
lbl_8058E58C:
/* 8058E58C  7C 64 1B 78 */	mr r4, r3
/* 8058E590  38 60 00 07 */	li r3, 7
/* 8058E594  4B E0 BB C9 */	bl mDemo_Request
/* 8058E598  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058E59C  7C 08 03 A6 */	mtlr r0
/* 8058E5A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8058E5A4  4E 80 00 20 */	blr 
