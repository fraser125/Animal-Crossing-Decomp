lbl_80528234:
/* 80528234  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80528238  7C 08 02 A6 */	mflr r0
/* 8052823C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80528240  3C C0 80 6A */	lis r6, think_idx@ha /* 0x806A0F98@ha */
/* 80528244  90 01 00 14 */	stw r0, 0x14(r1)
/* 80528248  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8052824C  3C A5 00 02 */	addis r5, r5, 2
/* 80528250  80 E5 60 4C */	lwz r7, 0x604c(r5)
/* 80528254  38 A6 0F 98 */	addi r5, r6, think_idx@l /* 0x806A0F98@l */
/* 80528258  88 03 07 DD */	lbz r0, 0x7dd(r3)
/* 8052825C  38 C0 00 00 */	li r6, 0
/* 80528260  81 87 01 20 */	lwz r12, 0x120(r7)
/* 80528264  54 00 10 3A */	slwi r0, r0, 2
/* 80528268  7C A5 00 2E */	lwzx r5, r5, r0
/* 8052826C  7D 89 03 A6 */	mtctr r12
/* 80528270  4E 80 04 21 */	bctrl 
/* 80528274  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80528278  7C 08 03 A6 */	mtlr r0
/* 8052827C  38 21 00 10 */	addi r1, r1, 0x10
/* 80528280  4E 80 00 20 */	blr 
