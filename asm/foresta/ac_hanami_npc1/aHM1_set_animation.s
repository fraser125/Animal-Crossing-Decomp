lbl_8052A224:
/* 8052A224  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052A228  7C 08 02 A6 */	mflr r0
/* 8052A22C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8052A230  3C C0 80 6A */	lis r6, animeSeqNo@ha /* 0x806A1268@ha */
/* 8052A234  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052A238  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8052A23C  54 80 10 3A */	slwi r0, r4, 2
/* 8052A240  38 E6 12 68 */	addi r7, r6, animeSeqNo@l /* 0x806A1268@l */
/* 8052A244  3C 85 00 02 */	addis r4, r5, 2
/* 8052A248  38 A0 00 00 */	li r5, 0
/* 8052A24C  80 C4 60 4C */	lwz r6, 0x604c(r4)
/* 8052A250  7C 87 00 2E */	lwzx r4, r7, r0
/* 8052A254  81 86 01 14 */	lwz r12, 0x114(r6)
/* 8052A258  7D 89 03 A6 */	mtctr r12
/* 8052A25C  4E 80 04 21 */	bctrl 
/* 8052A260  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052A264  7C 08 03 A6 */	mtlr r0
/* 8052A268  38 21 00 10 */	addi r1, r1, 0x10
/* 8052A26C  4E 80 00 20 */	blr 
