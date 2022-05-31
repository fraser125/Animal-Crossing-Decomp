lbl_806019C4:
/* 806019C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806019C8  7C 08 02 A6 */	mflr r0
/* 806019CC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 806019D0  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 806019D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806019D8  3C 64 00 02 */	addis r3, r4, 2
/* 806019DC  80 63 60 84 */	lwz r3, 0x6084(r3)
/* 806019E0  3C A4 00 03 */	addis r5, r4, 3
/* 806019E4  A8 85 DB A2 */	lha r4, -0x245e(r5)
/* 806019E8  80 63 00 00 */	lwz r3, 0(r3)
/* 806019EC  A8 A5 DB A4 */	lha r5, -0x245c(r5)
/* 806019F0  4B FF FF 5D */	bl aWeather_RequestChangeWeather
/* 806019F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806019F8  7C 08 03 A6 */	mtlr r0
/* 806019FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80601A00  4E 80 00 20 */	blr 
