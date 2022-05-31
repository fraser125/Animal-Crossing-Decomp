lbl_803D7590:
/* 803D7590  80 A3 00 04 */	lwz r5, 4(r3)
/* 803D7594  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803D7598  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803D759C  80 05 00 00 */	lwz r0, 0(r5)
/* 803D75A0  3C 84 00 02 */	addis r4, r4, 2
/* 803D75A4  80 84 61 1C */	lwz r4, 0x611c(r4)
/* 803D75A8  80 A5 00 04 */	lwz r5, 4(r5)
/* 803D75AC  7C 09 03 A6 */	mtctr r0
/* 803D75B0  2C 00 00 00 */	cmpwi r0, 0
/* 803D75B4  41 82 00 18 */	beq lbl_803D75CC
lbl_803D75B8:
/* 803D75B8  80 05 00 04 */	lwz r0, 4(r5)
/* 803D75BC  7C 00 20 00 */	cmpw r0, r4
/* 803D75C0  41 81 00 0C */	bgt lbl_803D75CC
/* 803D75C4  38 A5 00 08 */	addi r5, r5, 8
/* 803D75C8  42 00 FF F0 */	bdnz lbl_803D75B8
lbl_803D75CC:
/* 803D75CC  80 05 00 00 */	lwz r0, 0(r5)
/* 803D75D0  98 03 00 0A */	stb r0, 0xa(r3)
/* 803D75D4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 803D75D8  2C 00 00 00 */	cmpwi r0, 0
/* 803D75DC  40 81 00 1C */	ble lbl_803D75F8
/* 803D75E0  88 03 00 09 */	lbz r0, 9(r3)
/* 803D75E4  98 03 00 08 */	stb r0, 8(r3)
/* 803D75E8  80 83 00 0C */	lwz r4, 0xc(r3)
/* 803D75EC  38 04 FF FF */	addi r0, r4, -1
/* 803D75F0  90 03 00 0C */	stw r0, 0xc(r3)
/* 803D75F4  4E 80 00 20 */	blr 
lbl_803D75F8:
/* 803D75F8  88 03 00 0A */	lbz r0, 0xa(r3)
/* 803D75FC  98 03 00 08 */	stb r0, 8(r3)
/* 803D7600  4E 80 00 20 */	blr 
