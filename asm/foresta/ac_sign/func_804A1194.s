lbl_804A1194:
/* 804A1194  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A1198  7C 08 02 A6 */	mflr r0
/* 804A119C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 804A11A0  38 80 00 00 */	li r4, 0
/* 804A11A4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 804A11A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A11AC  3C A5 00 02 */	addis r5, r5, 2
/* 804A11B0  80 05 61 10 */	lwz r0, 0x6110(r5)
/* 804A11B4  90 65 60 F4 */	stw r3, 0x60f4(r5)
/* 804A11B8  20 00 00 03 */	subfic r0, r0, 3
/* 804A11BC  7C 00 00 34 */	cntlzw r0, r0
/* 804A11C0  54 00 D9 7E */	srwi r0, r0, 5
/* 804A11C4  90 03 04 08 */	stw r0, 0x408(r3)
/* 804A11C8  48 00 11 09 */	bl aSIGN_setup_action
/* 804A11CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A11D0  7C 08 03 A6 */	mtlr r0
/* 804A11D4  38 21 00 10 */	addi r1, r1, 0x10
/* 804A11D8  4E 80 00 20 */	blr 
