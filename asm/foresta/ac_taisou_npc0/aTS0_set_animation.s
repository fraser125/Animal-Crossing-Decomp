lbl_80588850:
/* 80588850  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80588854  7C 08 02 A6 */	mflr r0
/* 80588858  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8058885C  3C C0 80 6C */	lis r6, animeSeqNo@ha /* 0x806C1F58@ha */
/* 80588860  90 01 00 14 */	stw r0, 0x14(r1)
/* 80588864  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80588868  3C A5 00 02 */	addis r5, r5, 2
/* 8058886C  54 80 10 3A */	slwi r0, r4, 2
/* 80588870  80 85 60 4C */	lwz r4, 0x604c(r5)
/* 80588874  38 A6 1F 58 */	addi r5, r6, animeSeqNo@l /* 0x806C1F58@l */
/* 80588878  80 E3 09 A4 */	lwz r7, 0x9a4(r3)
/* 8058887C  7C 05 00 2E */	lwzx r0, r5, r0
/* 80588880  38 A0 00 00 */	li r5, 0
/* 80588884  81 84 01 14 */	lwz r12, 0x114(r4)
/* 80588888  54 E6 07 FE */	clrlwi r6, r7, 0x1f
/* 8058888C  7C 86 02 14 */	add r4, r6, r0
/* 80588890  7D 89 03 A6 */	mtctr r12
/* 80588894  4E 80 04 21 */	bctrl 
/* 80588898  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058889C  7C 08 03 A6 */	mtlr r0
/* 805888A0  38 21 00 10 */	addi r1, r1, 0x10
/* 805888A4  4E 80 00 20 */	blr 
