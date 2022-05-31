lbl_805164C8:
/* 805164C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805164CC  7C 08 02 A6 */	mflr r0
/* 805164D0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805164D4  3C C0 80 6A */	lis r6, animeSeqNo@ha /* 0x8069FD88@ha */
/* 805164D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805164DC  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805164E0  54 80 10 3A */	slwi r0, r4, 2
/* 805164E4  38 E6 FD 88 */	addi r7, r6, animeSeqNo@l /* 0x8069FD88@l */
/* 805164E8  3C 85 00 02 */	addis r4, r5, 2
/* 805164EC  38 A0 00 00 */	li r5, 0
/* 805164F0  80 C4 60 4C */	lwz r6, 0x604c(r4)
/* 805164F4  7C 87 00 2E */	lwzx r4, r7, r0
/* 805164F8  81 86 01 14 */	lwz r12, 0x114(r6)
/* 805164FC  7D 89 03 A6 */	mtctr r12
/* 80516500  4E 80 04 21 */	bctrl 
/* 80516504  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80516508  7C 08 03 A6 */	mtlr r0
/* 8051650C  38 21 00 10 */	addi r1, r1, 0x10
/* 80516510  4E 80 00 20 */	blr 
