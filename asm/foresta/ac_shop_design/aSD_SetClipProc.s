lbl_8049CBB0:
/* 8049CBB0  2C 04 00 00 */	cmpwi r4, 0
/* 8049CBB4  41 82 00 1C */	beq lbl_8049CBD0
/* 8049CBB8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8049CBBC  38 00 00 00 */	li r0, 0
/* 8049CBC0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8049CBC4  3C 63 00 02 */	addis r3, r3, 2
/* 8049CBC8  90 03 60 60 */	stw r0, 0x6060(r3)
/* 8049CBCC  4E 80 00 20 */	blr 
lbl_8049CBD0:
/* 8049CBD0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8049CBD4  3C A0 80 4A */	lis r5, aSD_UnitNum2ItemNo@ha /* 0x8049CEDC@ha */
/* 8049CBD8  38 C4 85 38 */	addi r6, r4, common_data@l /* 0x81138538@l */
/* 8049CBDC  3C 80 80 4A */	lis r4, aSD_ReportGoodsSales@ha /* 0x8049D07C@ha */
/* 8049CBE0  38 E3 01 80 */	addi r7, r3, 0x180
/* 8049CBE4  38 A5 CE DC */	addi r5, r5, aSD_UnitNum2ItemNo@l /* 0x8049CEDC@l */
/* 8049CBE8  3C C6 00 02 */	addis r6, r6, 2
/* 8049CBEC  38 04 D0 7C */	addi r0, r4, aSD_ReportGoodsSales@l /* 0x8049D07C@l */
/* 8049CBF0  90 E6 60 60 */	stw r7, 0x6060(r6)
/* 8049CBF4  90 63 01 80 */	stw r3, 0x180(r3)
/* 8049CBF8  90 A3 01 84 */	stw r5, 0x184(r3)
/* 8049CBFC  90 03 01 88 */	stw r0, 0x188(r3)
/* 8049CC00  4E 80 00 20 */	blr 
