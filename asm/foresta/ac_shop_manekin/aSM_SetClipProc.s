lbl_804A03F4:
/* 804A03F4  2C 04 00 00 */	cmpwi r4, 0
/* 804A03F8  41 82 00 1C */	beq lbl_804A0414
/* 804A03FC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804A0400  38 00 00 00 */	li r0, 0
/* 804A0404  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804A0408  3C 63 00 02 */	addis r3, r3, 2
/* 804A040C  90 03 60 6C */	stw r0, 0x606c(r3)
/* 804A0410  4E 80 00 20 */	blr 
lbl_804A0414:
/* 804A0414  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804A0418  3C C0 80 4A */	lis r6, aSM_ManekinDmaAgain@ha /* 0x804A0710@ha */
/* 804A041C  38 E4 85 38 */	addi r7, r4, common_data@l /* 0x81138538@l */
/* 804A0420  3C A0 80 4A */	lis r5, aSM_Change2NakedManekin@ha /* 0x804A07D0@ha */
/* 804A0424  39 03 01 84 */	addi r8, r3, 0x184
/* 804A0428  3C 80 80 4A */	lis r4, aSM_Naked2Cloth@ha /* 0x804A0860@ha */
/* 804A042C  3C E7 00 02 */	addis r7, r7, 2
/* 804A0430  38 C6 07 10 */	addi r6, r6, aSM_ManekinDmaAgain@l /* 0x804A0710@l */
/* 804A0434  91 07 60 6C */	stw r8, 0x606c(r7)
/* 804A0438  38 A5 07 D0 */	addi r5, r5, aSM_Change2NakedManekin@l /* 0x804A07D0@l */
/* 804A043C  38 04 08 60 */	addi r0, r4, aSM_Naked2Cloth@l /* 0x804A0860@l */
/* 804A0440  90 63 01 84 */	stw r3, 0x184(r3)
/* 804A0444  90 C3 01 88 */	stw r6, 0x188(r3)
/* 804A0448  90 A3 01 8C */	stw r5, 0x18c(r3)
/* 804A044C  90 03 01 90 */	stw r0, 0x190(r3)
/* 804A0450  4E 80 00 20 */	blr 
