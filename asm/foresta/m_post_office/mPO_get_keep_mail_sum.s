lbl_803DEE64:
/* 803DEE64  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DEE68  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803DEE6C  3C 83 00 02 */	addis r4, r3, 2
/* 803DEE70  A8 64 06 94 */	lha r3, 0x694(r4)
/* 803DEE74  A8 04 06 96 */	lha r0, 0x696(r4)
/* 803DEE78  7C 63 02 14 */	add r3, r3, r0
/* 803DEE7C  4E 80 00 20 */	blr 
