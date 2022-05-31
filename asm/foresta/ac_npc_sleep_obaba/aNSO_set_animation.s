lbl_8057E59C:
/* 8057E59C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057E5A0  7C 08 02 A6 */	mflr r0
/* 8057E5A4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8057E5A8  3C C0 80 6C */	lis r6, animeSeqNo@ha /* 0x806C09E8@ha */
/* 8057E5AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057E5B0  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8057E5B4  54 80 10 3A */	slwi r0, r4, 2
/* 8057E5B8  38 E6 09 E8 */	addi r7, r6, animeSeqNo@l /* 0x806C09E8@l */
/* 8057E5BC  3C 85 00 02 */	addis r4, r5, 2
/* 8057E5C0  38 A0 00 00 */	li r5, 0
/* 8057E5C4  80 C4 60 4C */	lwz r6, 0x604c(r4)
/* 8057E5C8  7C 87 00 2E */	lwzx r4, r7, r0
/* 8057E5CC  81 86 01 14 */	lwz r12, 0x114(r6)
/* 8057E5D0  7D 89 03 A6 */	mtctr r12
/* 8057E5D4  4E 80 04 21 */	bctrl 
/* 8057E5D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057E5DC  7C 08 03 A6 */	mtlr r0
/* 8057E5E0  38 21 00 10 */	addi r1, r1, 0x10
/* 8057E5E4  4E 80 00 20 */	blr 
