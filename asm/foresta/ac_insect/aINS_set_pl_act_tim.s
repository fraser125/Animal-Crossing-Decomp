lbl_80594B58:
/* 80594B58  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 80594B5C  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 80594B60  3C E6 00 02 */	addis r7, r6, 2
/* 80594B64  80 C7 60 88 */	lwz r6, 0x6088(r7)
/* 80594B68  90 66 00 20 */	stw r3, 0x20(r6)
/* 80594B6C  80 67 60 88 */	lwz r3, 0x6088(r7)
/* 80594B70  90 83 00 24 */	stw r4, 0x24(r3)
/* 80594B74  80 67 60 88 */	lwz r3, 0x6088(r7)
/* 80594B78  90 A3 00 28 */	stw r5, 0x28(r3)
/* 80594B7C  4E 80 00 20 */	blr 
