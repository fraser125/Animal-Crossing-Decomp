lbl_804A0DC0:
/* 804A0DC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A0DC4  7C 08 02 A6 */	mflr r0
/* 804A0DC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A0DCC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804A0DD0  7C 7F 1B 78 */	mr r31, r3
/* 804A0DD4  4B FF FF 25 */	bl aShopUmbrella_GetNowBlockNumber
/* 804A0DD8  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 804A0DDC  38 61 00 08 */	addi r3, r1, 8
/* 804A0DE0  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 804A0DE4  90 81 00 08 */	stw r4, 8(r1)
/* 804A0DE8  90 01 00 0C */	stw r0, 0xc(r1)
/* 804A0DEC  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 804A0DF0  90 01 00 10 */	stw r0, 0x10(r1)
/* 804A0DF4  4B FF FA FD */	bl func_804A08F0
/* 804A0DF8  90 7F 01 74 */	stw r3, 0x174(r31)
/* 804A0DFC  7F E3 FB 78 */	mr r3, r31
/* 804A0E00  4B FF FE A5 */	bl aShopUmbrella_SecureUmbrellaSubActor
/* 804A0E04  7F E3 FB 78 */	mr r3, r31
/* 804A0E08  38 80 00 01 */	li r4, 1
/* 804A0E0C  4B FF FF 61 */	bl aShopUmbrella_SetClipProc
/* 804A0E10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A0E14  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804A0E18  7C 08 03 A6 */	mtlr r0
/* 804A0E1C  38 21 00 20 */	addi r1, r1, 0x20
/* 804A0E20  4E 80 00 20 */	blr 
