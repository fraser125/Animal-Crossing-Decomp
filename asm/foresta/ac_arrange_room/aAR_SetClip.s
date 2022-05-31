lbl_804119B0:
/* 804119B0  2C 04 00 00 */	cmpwi r4, 0
/* 804119B4  41 82 00 2C */	beq lbl_804119E0
/* 804119B8  3C 80 80 41 */	lis r4, aAR_Redma@ha /* 0x80411E24@ha */
/* 804119BC  90 63 01 88 */	stw r3, 0x188(r3)
/* 804119C0  38 04 1E 24 */	addi r0, r4, aAR_Redma@l /* 0x80411E24@l */
/* 804119C4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804119C8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804119CC  90 03 01 8C */	stw r0, 0x18c(r3)
/* 804119D0  38 03 01 88 */	addi r0, r3, 0x188
/* 804119D4  3C 64 00 02 */	addis r3, r4, 2
/* 804119D8  90 03 60 C8 */	stw r0, 0x60c8(r3)
/* 804119DC  4E 80 00 20 */	blr 
lbl_804119E0:
/* 804119E0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804119E4  38 00 00 00 */	li r0, 0
/* 804119E8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804119EC  3C 63 00 02 */	addis r3, r3, 2
/* 804119F0  90 03 60 C8 */	stw r0, 0x60c8(r3)
/* 804119F4  4E 80 00 20 */	blr 
