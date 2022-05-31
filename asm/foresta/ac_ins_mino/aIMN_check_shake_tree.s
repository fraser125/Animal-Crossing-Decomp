lbl_8059DF9C:
/* 8059DF9C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8059DFA0  38 C0 00 00 */	li r6, 0
/* 8059DFA4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8059DFA8  3C 84 00 02 */	addis r4, r4, 2
/* 8059DFAC  80 A4 60 88 */	lwz r5, 0x6088(r4)
/* 8059DFB0  80 05 00 20 */	lwz r0, 0x20(r5)
/* 8059DFB4  2C 00 00 04 */	cmpwi r0, 4
/* 8059DFB8  40 82 00 28 */	bne lbl_8059DFE0
/* 8059DFBC  80 85 00 24 */	lwz r4, 0x24(r5)
/* 8059DFC0  80 03 02 38 */	lwz r0, 0x238(r3)
/* 8059DFC4  7C 04 00 00 */	cmpw r4, r0
/* 8059DFC8  40 82 00 18 */	bne lbl_8059DFE0
/* 8059DFCC  80 85 00 28 */	lwz r4, 0x28(r5)
/* 8059DFD0  80 03 02 3C */	lwz r0, 0x23c(r3)
/* 8059DFD4  7C 04 00 00 */	cmpw r4, r0
/* 8059DFD8  40 82 00 08 */	bne lbl_8059DFE0
/* 8059DFDC  38 C0 00 01 */	li r6, 1
lbl_8059DFE0:
/* 8059DFE0  7C C3 33 78 */	mr r3, r6
/* 8059DFE4  4E 80 00 20 */	blr 
