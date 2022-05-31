lbl_804A0D6C:
/* 804A0D6C  2C 04 00 00 */	cmpwi r4, 0
/* 804A0D70  40 82 00 1C */	bne lbl_804A0D8C
/* 804A0D74  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804A0D78  38 00 00 00 */	li r0, 0
/* 804A0D7C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804A0D80  3C 63 00 02 */	addis r3, r3, 2
/* 804A0D84  90 03 60 C4 */	stw r0, 0x60c4(r3)
/* 804A0D88  4E 80 00 20 */	blr 
lbl_804A0D8C:
/* 804A0D8C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804A0D90  3C A0 80 4A */	lis r5, aShopUmbrella_UmbrellaDmaAgain@ha /* 0x804A111C@ha */
/* 804A0D94  38 C4 85 38 */	addi r6, r4, common_data@l /* 0x81138538@l */
/* 804A0D98  3C 80 80 4A */	lis r4, aShopUmbrella_DeleteUmbrella@ha /* 0x804A1120@ha */
/* 804A0D9C  38 E3 01 84 */	addi r7, r3, 0x184
/* 804A0DA0  38 A5 11 1C */	addi r5, r5, aShopUmbrella_UmbrellaDmaAgain@l /* 0x804A111C@l */
/* 804A0DA4  3C C6 00 02 */	addis r6, r6, 2
/* 804A0DA8  38 04 11 20 */	addi r0, r4, aShopUmbrella_DeleteUmbrella@l /* 0x804A1120@l */
/* 804A0DAC  90 E6 60 C4 */	stw r7, 0x60c4(r6)
/* 804A0DB0  90 63 01 84 */	stw r3, 0x184(r3)
/* 804A0DB4  90 A3 01 88 */	stw r5, 0x188(r3)
/* 804A0DB8  90 03 01 8C */	stw r0, 0x18c(r3)
/* 804A0DBC  4E 80 00 20 */	blr 
