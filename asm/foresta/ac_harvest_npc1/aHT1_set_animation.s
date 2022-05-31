lbl_80591C0C:
/* 80591C0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80591C10  7C 08 02 A6 */	mflr r0
/* 80591C14  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80591C18  3C C0 80 6C */	lis r6, animeSeqNo@ha /* 0x806C2998@ha */
/* 80591C1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80591C20  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80591C24  54 80 10 3A */	slwi r0, r4, 2
/* 80591C28  38 E6 29 98 */	addi r7, r6, animeSeqNo@l /* 0x806C2998@l */
/* 80591C2C  3C 85 00 02 */	addis r4, r5, 2
/* 80591C30  38 A0 00 00 */	li r5, 0
/* 80591C34  80 C4 60 4C */	lwz r6, 0x604c(r4)
/* 80591C38  7C 87 00 2E */	lwzx r4, r7, r0
/* 80591C3C  81 86 01 14 */	lwz r12, 0x114(r6)
/* 80591C40  7D 89 03 A6 */	mtctr r12
/* 80591C44  4E 80 04 21 */	bctrl 
/* 80591C48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80591C4C  7C 08 03 A6 */	mtlr r0
/* 80591C50  38 21 00 10 */	addi r1, r1, 0x10
/* 80591C54  4E 80 00 20 */	blr 
