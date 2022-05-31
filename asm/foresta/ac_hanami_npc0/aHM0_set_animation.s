lbl_80529A30:
/* 80529A30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80529A34  7C 08 02 A6 */	mflr r0
/* 80529A38  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80529A3C  3C C0 80 6A */	lis r6, animeSeqNo@ha /* 0x806A11A8@ha */
/* 80529A40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80529A44  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80529A48  54 80 10 3A */	slwi r0, r4, 2
/* 80529A4C  38 E6 11 A8 */	addi r7, r6, animeSeqNo@l /* 0x806A11A8@l */
/* 80529A50  3C 85 00 02 */	addis r4, r5, 2
/* 80529A54  38 A0 00 00 */	li r5, 0
/* 80529A58  80 C4 60 4C */	lwz r6, 0x604c(r4)
/* 80529A5C  7C 87 00 2E */	lwzx r4, r7, r0
/* 80529A60  81 86 01 14 */	lwz r12, 0x114(r6)
/* 80529A64  7D 89 03 A6 */	mtctr r12
/* 80529A68  4E 80 04 21 */	bctrl 
/* 80529A6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80529A70  7C 08 03 A6 */	mtlr r0
/* 80529A74  38 21 00 10 */	addi r1, r1, 0x10
/* 80529A78  4E 80 00 20 */	blr 
