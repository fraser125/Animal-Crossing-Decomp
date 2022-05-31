lbl_80601A04:
/* 80601A04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80601A08  7C 08 02 A6 */	mflr r0
/* 80601A0C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80601A10  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80601A14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80601A18  3C 63 00 02 */	addis r3, r3, 2
/* 80601A1C  88 83 0F 19 */	lbz r4, 0xf19(r3)
/* 80601A20  80 63 60 84 */	lwz r3, 0x6084(r3)
/* 80601A24  54 80 E7 3E */	rlwinm r0, r4, 0x1c, 0x1c, 0x1f
/* 80601A28  54 85 07 3E */	clrlwi r5, r4, 0x1c
/* 80601A2C  80 63 00 00 */	lwz r3, 0(r3)
/* 80601A30  7C 04 07 34 */	extsh r4, r0
/* 80601A34  4B FF FF 19 */	bl aWeather_RequestChangeWeather
/* 80601A38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80601A3C  7C 08 03 A6 */	mtlr r0
/* 80601A40  38 21 00 10 */	addi r1, r1, 0x10
/* 80601A44  4E 80 00 20 */	blr 
