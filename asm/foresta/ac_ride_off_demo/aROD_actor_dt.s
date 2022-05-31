lbl_804961AC:
/* 804961AC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804961B0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804961B4  3C 63 00 02 */	addis r3, r3, 2
/* 804961B8  80 03 60 AC */	lwz r0, 0x60ac(r3)
/* 804961BC  28 00 00 00 */	cmplwi r0, 0
/* 804961C0  4D 82 00 20 */	beqlr 
/* 804961C4  38 00 00 00 */	li r0, 0
/* 804961C8  90 03 60 AC */	stw r0, 0x60ac(r3)
/* 804961CC  4E 80 00 20 */	blr 
